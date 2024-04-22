library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_lib.all;

-- VGA: 640x480 
-- Using the clock divider implemented in Lab 0 and your knowledge of generic component inputs, change your clock divider to accept 2 generic inputs: input frequency, and output frequency.
-- As a refresher on how the clock divider works, the clock generator should count to some value that corresponds to the number of clock pulses from the input clock there should be in the output clock
-- The output of this clock divider should be passed into the VGA entity.

-- 2. Using the provided vga_sync_gen entity, create a behavioral entity defining the behavior of the VGA synchronization signals as defined below.
-- Create two counters with equal width outputs of COUNT_RANGE as found in the provided vga_lib.vhd file.

-- h_count_r
-- Continually counts up to the horizontal period (H_MAX – See vga_lib.vhd) and then starts over at 0, using the 25 MHz pixel clock.
-- A value of zero on h_count_r corresponds to the beginning of section D in Figure 1.

-- v_count_r
-- Counts up to the vertical period (V_MAX – See vga_lib.vhd). It will increment at a particular point in the horizontal counters count (Hcount = H_VERT_INC – See vga_lib.vhd).
-- A value of zero on v_count_r corresponds to the beginning of section R in Figure 2.

-- The values of video_on, h_sync, and v_sync are determined by comparing the values of h_count_r and v_count_r with the constants provided in vga_lib.vhd

-- 3. To complete the remaining functionality of the VGA module, you will create an architecture for the provided VGA entity that instantiates the vga_sync_gen from the previous step and uses the outputs to draw a 64x64 pixel square in the center of the monitor with 12-bit hex value of #73b.

-- The VGA implementation partitions the screen into 2x2 pixel-sized blocks, each
-- of which displays a color made from a combination or red, green, and blue. There
-- will be a total of 4096 blocks arranged as a 64x64 grid, which forms a 128x128
-- image. VGA resolution is 640x480, so you must make sure the pixels not used by
-- the image are black.

-- Note that the VGA entity has a video_on output, which is not part of a normal
-- VGA interface. We are including it for verification purposes. The video_on signal
-- should connect to the video_on output of the vga_sync_gen entity. Note in the
-- top-level entity that the video_on output is left open because it is not used
-- outside of the testbench.

-- To properly determine when to draw your image, you will need to implement two
-- logical elements in your design.

-- Row bound logic: Use the v_count signal to determine the position
-- currently being drawn on the monitor. Only enable your vertical output if
-- the v_count value corresponds to the proper rows on screen.

-- Column bound logic: Use the h_count signal to determine the horizontal
-- position currently being drawn on the monitor. Only enable your horizontal
-- output if the h_count value corresponds to the proper columns on screen.

-- I recommend an enable signal that makes the color output all zero
-- if both the row and column logic don’t output one.

-- 4. Run the provided VGA testbench to test the timing of your VGA outputs and adjust your
-- timing as necessary until there are no errors remaining. This testbench will also output a
-- .txt file that can be used to simulate the VGA monitor after verifying in the testbench. It is
-- a fairly strict test for timing to make sure the outputs closely align with Figures 1, 2, & 3.

entity vga is
    port (clk              : in  std_logic;
          rst              : in  std_logic;
          en               : in  std_logic;
		  switch           : in  std_logic_vector(9 downto 0) := (others => '0');
          img_pos          : in  std_logic_vector(2 downto 0) := (others => '0');
          red, green, blue : out std_logic_vector(3 downto 0) := (others => '0');
          h_sync, v_sync   : out std_logic;
          video_on         : out std_logic);
end vga;

architecture default_arch of vga is

    signal v_count : std_logic_vector(COUNT_RANGE);
    signal h_count : std_logic_vector(COUNT_RANGE);
    -- Clocks
    signal slow_clk : std_logic := '0'; -- Slow clock
    -- Internal Temp signals
    signal temp_h_sync, temp_v_sync, temp_video_on : std_logic;
		-- x and y coordinates of ball
    signal x_pos, y_pos : integer := 200; -- 200 is the center of the screen
    signal mov_x, mov_y : integer := 1;
    -- Constants of the ball
    constant speed : integer := 2;
    constant size : integer := 64;
    constant X_MAX : integer := 638;
    constant Y_MAX : integer := 478;
    -- Constants for the paddles
    constant PADDLE_WIDTH : integer := 10;
    constant PADDLE_HEIGHT : integer := 50;
    constant PADDLE_SPEED : integer := 2;
    constant PADDLE_MAX : integer := 428;
    constant PADDLE_MIN : integer := 0;
    -- x and y coordinates for each paddle, one on the left and one on the right
    -- Paddle 1 is on the left, Paddle 2 is on the right
    signal x_pos_p1 : integer := 0;
    signal y_pos_p1 : integer := 200;
    signal x_pos_p2 : integer := 638 - PADDLE_WIDTH;
    signal y_pos_p2 : integer := 200;

    signal P1_score : integer := 0;
    signal P2_score : integer := 0;

-- BITMAPS for PONG, P1 and P2 scores, 0-9 , game over and start
-- using the 2D array to store the bitmaps
-- The dimensions of the array are 8x4
-- PONG

    constant BM_SIZE : integer := 5;

    type bitmap is array(4 downto 0) of std_logic_vector(4 downto 0);
    
    constant ZERO : bitmap := (
        "11111",
        "10001",
        "10001",
        "10001",
        "11111"
    );

    constant ONE : bitmap := (
        "00100",
        "01100",
        "10100",
        "00100",
        "11111"
    );

    constant TWO : bitmap := (
        "11111",
        "00001",
        "11111",
        "10000",
        "11111"
    );

    constant THREE : bitmap := (
        "11111",
        "00001",
        "11111",
        "00001",
        "11111"
    );

    constant FOUR : bitmap := (
        "10001",
        "10001",
        "11111",
        "00001",
        "00001"
    );

    constant FIVE : bitmap := (
        "11111",
        "10000",
        "11111",
        "00001",
        "11111"
    );

    constant SIX : bitmap := (
        "11111",
        "10000",
        "11111",
        "10001",
        "11111"
    );

    constant SEVEN : bitmap := (
        "11111",
        "00001",
        "00010",
        "00100",
        "01000"
    );

    constant EIGHT : bitmap := (
        "11111",
        "10001",
        "11111",
        "10001",
        "11111"
    );

    constant NINE : bitmap := (
        "11111",
        "10001",
        "11111",
        "00001",
        "11111"
    );

    -- using a function to convert score to a bitmap
    function score_to_bitmap(score : integer) return bitmap is
    begin
        case score is
            when 0 =>
                return ZERO;
            when 1 =>
                return ONE;
            when 2 =>
                return TWO;
            when 3 =>
                return THREE;
            when 4 =>
                return FOUR;
            when 5 =>
                return FIVE;
            when 6 =>
                return SIX;
            when 7 =>
                return SEVEN;
            when 8 =>
                return EIGHT;
            when 9 =>
                return NINE;
            when others =>
                return ZERO;
        end case;
    end score_to_bitmap;

    -- Adding the PONG Letters
    constant P : bitmap := (
        "11111",
        "10001",
        "10001",
        "11111",
        "10000"
    );

    constant O : bitmap := (
        "11111",
        "10001",
        "10001",
        "10001",
        "11111"
    );

    constant N : bitmap := (
        "10001",
        "11001",
        "10101",
        "10011",
        "10001"
    );

    constant G : bitmap := (
        "11111",
        "10000",
        "10011",
        "10001",
        "11111"
    );

    -- Adding the WIN Letters
    constant W : bitmap := (
        "10001",
        "10001",
        "10001",
        "10101",
        "11011"
    );

    constant I : bitmap := (
        "11111",
        "00100",
        "00100",
        "00100",
        "11111"
    );

    constant S : bitmap := (
        "11111",
        "10000",
        "11111",
        "00001",
        "11111"
    );
    -- Position of the bitmap

    -- Position of the P1 score
    signal x_pos_p1_score : integer := 100;
    signal y_pos_p1_score : integer := 100;

    -- Position of the P2 score
    signal x_pos_p2_score : integer := 500;
    signal y_pos_p2_score : integer := 100;

    -- Position of the PONG letters
    -- Letter P
    signal x_pos_p : integer := 300;
    signal y_pos_p : integer := 100;

    -- Letter O
    signal x_pos_o : integer := 350;
    signal y_pos_o : integer := 100;

    -- Letter N
    signal x_pos_n : integer := 400;
    signal y_pos_n : integer := 100;

    -- Letter G
    signal x_pos_g : integer := 450;
    signal y_pos_g : integer := 100;

    -- Adding Letters for Wins 
    -- Position of the P1 win
    signal x_pos_p1_win : integer := 100;
    signal y_pos_p1_win : integer := 200;

    -- Position of the P2 win
    signal x_pos_p2_win : integer := 500;
    signal y_pos_p2_win : integer := 200;

    -- Position of the WIN letters
    -- Letter W
    signal x_pos_w : integer := 300;
    signal y_pos_w : integer := 200;

    -- Letter I
    signal x_pos_i : integer := 350;
    signal y_pos_i : integer := 200;

    -- Letter N
    signal x_pos_n_win : integer := 400;
    signal y_pos_n_win : integer := 200;

    -- Letter S
    signal x_pos_s : integer := 450;
    signal y_pos_s : integer := 200;

    -- Position of the START letters
    -- Letter S
    signal x_pos_s_start : integer := 300;
    signal y_pos_s_start : integer := 300;

    -- Letter T
    signal x_pos_t : integer := 350;
    signal y_pos_t : integer := 300;

    -- Letter A
    signal x_pos_a : integer := 400;
    signal y_pos_a : integer := 300;

    -- Letter R
    signal x_pos_r : integer := 450;
    signal y_pos_r : integer := 300;

    -- Letter T
    signal x_pos_t_start : integer := 500;
    signal y_pos_t_start : integer := 300;

    -- Letter S
    signal x_pos_s_start2 : integer := 550;
    signal y_pos_s_start2 : integer := 300;

    -- Defining Game States
    -- 0: Start
    -- 1: Playing
    -- 2: P1 Wins
    -- 3: P2 Wins

    signal game_state : integer := 0; -- Initial state is start
    -- In the start state the words PONG are displayed
    -- Whenever the player presses the start button, the game state changes to playing
    -- If the player presses the rst button, the game state changes to start
    -- If the player wins, the game state changes to the respective win state

    -- VGA MAIN BEGINS


begin 		
	-- Slow Clock Divider splits the 50MHz clock into 1Hz
	clk_div: entity work.clk_div
		generic map(
			clk_in_freq => 50e6,
			clk_out_freq => 20
		)
		port map(
			clk_in => clk,
			rst => rst,
			clk_out => slow_clk
		);

	-- VGA SYNC_GEN BEGINS
	sync: entity work.vga_sync_gen
		port map (clk => clk,
				    rst => rst,
				    h_count => h_count,
				    v_count => v_count,
				    h_sync => temp_h_sync,
					v_sync => temp_v_sync,
					video_on => temp_video_on);
   -- VGA_SYNC_GEN ENDS	

    -- State Machine for the game
    game_state_machine: process(slow_clk, rst)
        variable temp_game_state: integer;
    begin
        temp_game_state := game_state;
        if rising_edge(slow_clk) then
            if rst = '1' then
                game_state <= 0;
                -- Reset the scores
                -- P1_score <= 0; 
                -- P2_score <= 0;
                -- Reset the ball position
            else
                case game_state is
                    when 0 =>
                        if en = '1' then
                            temp_game_state := 1;
                        end if;
                    when 1 =>
                        if P1_score = 10 then
                            temp_game_state := 2;
                        elsif P2_score = 10 then
                            temp_game_state := 3;
                        end if;
                    when others =>
                        temp_game_state := 0;
                end case;
                game_state <= temp_game_state;
            end if;
        end if;
    end process game_state_machine;

   -- The ball movement process
    -- The ball will move in the x and y directions
    -- The ball will bounce off top and bottom walls
    -- The ball will bounce off the paddles
    -- The ball will reset to the center of the screen it hits the left or right wall

    -- Additionally, if 'rst' is '1', the ball will reset to the center of the screen
    ball_move: process(slow_clk, rst)
        variable temp_mov_x: integer;
        variable temp_mov_y: integer;
        variable temp_x_pos: integer;
        variable temp_y_pos: integer;
    begin
        temp_mov_x := mov_x;
        temp_mov_y := mov_y;
        temp_x_pos := x_pos;
        temp_y_pos := y_pos;
        if rising_edge(slow_clk) then

            if rst = '1' then
                x_pos <= 200;
                y_pos <= 200;
                temp_mov_x := 0;
                temp_mov_y := 0;
                mov_x <= 0; -- Stopping the balls movement
                mov_y <= 0;

            else
                -- If the ball hits the left or right wall, reset the ball to the center
                if x_pos + size >= X_MAX or x_pos <= 0 then
                    -- Reset the ball to the center
                    temp_x_pos := 200;
                    temp_y_pos := 200;
                    mov_x <= 1;
                    mov_y <= 1;
                    -- Increment the score of the player who scored
                    if x_pos + size >= X_MAX then
                        P1_score <= P1_score + 1;
                    else
                        P2_score <= P2_score + 1;
                    end if;
                -- If the ball hits the top or bottom wall, reverse the direction of the ball
                elsif y_pos + size >= Y_MAX or y_pos <= 0 then
                    mov_y <= -1 * mov_y;
                    temp_mov_y := -1 * temp_mov_y;
                -- If the ball hits the paddle 1, reverse the direction of the ball
                elsif
                    x_pos <= x_pos_p1 + PADDLE_WIDTH and
                    y_pos + size >= y_pos_p1 and
                    y_pos <= y_pos_p1 + PADDLE_HEIGHT then
                    mov_x <= -1 * mov_x;
                    temp_mov_x := -1 * temp_mov_x;
                -- If the ball hits the paddle 2, reverse the direction of the ball
                elsif
                    x_pos + size >= x_pos_p2 and
                    y_pos + size >= y_pos_p2 and
                    y_pos <= y_pos_p2 + PADDLE_HEIGHT then
                    mov_x <= -1 * mov_x;
                    temp_mov_x := -1 * temp_mov_x;
                end if;
                x_pos <= temp_x_pos + (temp_mov_x * speed);
                y_pos <= temp_y_pos + (temp_mov_y * speed);
            end if;
        end if;
    end process ball_move;

    -- Paddle 1 movement
    -- Paddle 1 is dependent on the switches to move up and down
    -- Switches 0 and 1 are used to move the paddle up and down
    paddle1_move: process(slow_clk, rst)
        variable temp_y_pos_p1: integer;
        variable temp_x_pos_p1: integer;
    begin
        temp_y_pos_p1 := y_pos_p1;
        temp_x_pos_p1 := x_pos_p1;
        if rising_edge(slow_clk) then
            if rst = '1' then
                y_pos_p1 <= 200;
                x_pos_p1 <= 0;
            else
                if switch(0) = '1' and y_pos_p1 - PADDLE_SPEED >= PADDLE_MIN then
                    y_pos_p1 <= y_pos_p1 - PADDLE_SPEED;
                    temp_y_pos_p1 := y_pos_p1 - PADDLE_SPEED;
                elsif switch(1) = '1' and y_pos_p1 + PADDLE_SPEED <= PADDLE_MAX then
                    y_pos_p1 <= y_pos_p1 + PADDLE_SPEED;
                    temp_y_pos_p1 := y_pos_p1 + PADDLE_SPEED;
                end if;
                y_pos_p1 <= temp_y_pos_p1;
                x_pos_p1 <= temp_x_pos_p1;
            end if;
        end if;
    end process paddle1_move;

    -- Paddle 2 movement
    paddle2_move: process(slow_clk, rst)
        variable temp_y_pos_p2: integer;
        variable temp_x_pos_p2: integer;
    begin
        temp_y_pos_p2 := y_pos_p2;
        temp_x_pos_p2 := x_pos_p2;
        if rising_edge(slow_clk) then
            if rst = '1' or game_state = 0 or game_state = 2 or game_state = 3 then
                y_pos_p2 <= 200;
                x_pos_p2 <= 638 - PADDLE_WIDTH;
            else
                if switch(2) = '1' and y_pos_p2 - PADDLE_SPEED >= PADDLE_MIN then
                    y_pos_p2 <= y_pos_p2 - PADDLE_SPEED;
                    temp_y_pos_p2 := y_pos_p2 - PADDLE_SPEED;
                elsif switch(3) = '1' and y_pos_p2 + PADDLE_SPEED <= PADDLE_MAX then
                    y_pos_p2 <= y_pos_p2 + PADDLE_SPEED;
                    temp_y_pos_p2 := y_pos_p2 + PADDLE_SPEED;
                end if;
                y_pos_p2 <= temp_y_pos_p2;
                x_pos_p2 <= temp_x_pos_p2;
            end if;
        end if;
    end process paddle2_move;

	draw: process(clk, rst)
	begin
		if rising_edge(clk) then
		    -- If in the start state, display the PONG letters
		    -- If in the win state, display the WIN letters with the respective player

            -- Draw the PONG letters
            if unsigned(h_count) >= to_unsigned(x_pos_p, h_count'length) and unsigned(h_count) <= to_unsigned(x_pos_p + BM_SIZE * 3, h_count'length) and
            unsigned(v_count) >= to_unsigned(y_pos_p, v_count'length) and unsigned(v_count) <= to_unsigned(y_pos_p + BM_SIZE * 5, v_count'length) and
            game_state = 0 and
            temp_video_on = '1' then
                if P(BM_SIZE - 1 - to_integer(unsigned(v_count) - y_pos_p) / 5)(BM_SIZE - 1 - to_integer(unsigned(h_count) - x_pos_p) / 3) = '1' then
                    red <= "1111";
                    green <= "1111";
                    blue <= "1111";
                else
                    red <= "0000";
                    green <= "0000";
                    blue <= "0000";
                end if;
            -- Display O
            elsif unsigned(h_count) >= to_unsigned(x_pos_o, h_count'length) and unsigned(h_count) <= to_unsigned(x_pos_o + BM_SIZE * 3, h_count'length) and
            unsigned(v_count) >= to_unsigned(y_pos_o, v_count'length) and unsigned(v_count) <= to_unsigned(y_pos_o + BM_SIZE * 5, v_count'length) and
            game_state = 0 and
            temp_video_on = '1' then
                if O(BM_SIZE - 1 - to_integer(unsigned(v_count) - y_pos_o) / 5)(BM_SIZE - 1 - to_integer(unsigned(h_count) - x_pos_o) / 3) = '1' then
                    red <= "1111";
                    green <= "1111";
                    blue <= "1111";
                else
                    red <= "0000";
                    green <= "0000";
                    blue <= "0000";
                end if;
            -- Display N
            -- elsif unsigned(h_count) >= to_unsigned(x_pos_n, h_count'length) and unsigned(h_count) <= to_unsigned(x_pos_n + BM_SIZE * 3, h_count'length) and
            -- unsigned(v_count) >= to_unsigned(y_pos_n, v_count'length) and unsigned(v_count) <= to_unsigned(y_pos_n + BM_SIZE * 5, v_count'length) and
            -- game_state = 0 and
            -- temp_video_on = '1' then
            --     if N(BM_SIZE - 1 - to_integer(unsigned(v_count) - y_pos_n) / 5)(BM_SIZE - 1 - to_integer(unsigned(h_count) - x_pos_n) / 3) = '1' then
            --         red <= "1111";
            --         green <= "1111";
            --         blue <= "1111";
            --     else
            --         red <= "0000";
            --         green <= "0000";
            --         blue <= "0000";
            --     end if;
            -- else
            --     red <= "0000";
            --     green <= "0000";
            --     blue <= "0000";
            -- end if;
            -- -- Display G
            -- elsif unsigned(h_count) >= to_unsigned(x_pos_g, h_count'length) 
            -- and unsigned(h_count) <= to_unsigned(x_pos_g + BM_SIZE * 3, h_count'length) 
            -- and unsigned(v_count) >= to_unsigned(y_pos_g, v_count'length) 
            -- and unsigned(v_count) <= to_unsigned(y_pos_g + BM_SIZE * 5, v_count'length) 
            -- and game_state = 0
            -- and temp_video_on = '1' then
            --
            --     if G(BM_SIZE - 1 - to_integer(unsigned(v_count) - y_pos_g) / 5)(BM_SIZE - 1 - to_integer(unsigned(h_count) - x_pos_g) / 3) = '1' then
            --         red <= "1111";
            --         green <= "1111";
            --         blue <= "1111";
            --     else
            --         red <= "0000";
            --         green <= "0000";
            --         blue <= "0000";
            --     end if;
            --
            -- Default to black
        -- If the game state is playing

        -- Drawing the ball
            elsif unsigned(h_count) >= to_unsigned(x_pos, h_count'length) and unsigned(h_count) <= to_unsigned(x_pos + size, h_count'length) and
            unsigned(v_count) >= to_unsigned(y_pos, v_count'length) and unsigned(v_count) <= to_unsigned(y_pos + size, v_count'length) and
            game_state = 1 and
            temp_video_on = '1' then  
                red <= "0111";
                green <= "0011";
                blue <= "1011";
            --- Paddle 1
            elsif unsigned(h_count) >= to_unsigned(x_pos_p1, h_count'length) and unsigned(h_count) <= to_unsigned(x_pos_p1 + PADDLE_WIDTH, h_count'length) and
            unsigned(v_count) >= to_unsigned(y_pos_p1, v_count'length) and unsigned(v_count) <= to_unsigned(y_pos_p1 + PADDLE_HEIGHT, v_count'length) and
            game_state = 1 and
            temp_video_on = '1' then
                red <= "0000";
                green <= "0000";
                blue <= "1111";
            --- Paddle 2
            elsif unsigned(h_count) >= to_unsigned(x_pos_p2, h_count'length) and unsigned(h_count) <= to_unsigned(x_pos_p2 + PADDLE_WIDTH, h_count'length) and
            unsigned(v_count) >= to_unsigned(y_pos_p2, v_count'length) and unsigned(v_count) <= to_unsigned(y_pos_p2 + PADDLE_HEIGHT, v_count'length) and
            game_state = 1 and
            temp_video_on = '1' then
                red <= "1111";
                green <= "0000";
                blue <= "0000";
            elsif 
            unsigned(h_count) >= to_unsigned(x_pos_p1_score, h_count'length) 
            and unsigned(h_count) <= to_unsigned(x_pos_p1_score + BM_SIZE * 3, h_count'length) 
            and unsigned(v_count) >= to_unsigned(y_pos_p1_score, v_count'length) 
            and unsigned(v_count) <= to_unsigned(y_pos_p1_score + BM_SIZE * 5, v_count'length) 
            and game_state = 1
            and temp_video_on = '1' then
                -- Convert the y_pos_p1_score and x_pos_p1_score to unsigned to perform the subtraction
            --- Drawing score for P1
            -- We need to draw the score and check if first we are in the display area
            -- and then check what specific pixel we are in
            -- we then check the value of the bitmap for that score at that pixel
            -- Our bitmap is 8x4 so it has 5 rows and 5 columns
                if score_to_bitmap(P1_score)(BM_SIZE - 1 - to_integer(unsigned(v_count) - y_pos_p1_score) / 5)(BM_SIZE - 1 - to_integer(unsigned(h_count) - x_pos_p1_score) / 3) = '1' then
                    red <= "1111";
                    green <= "1111";
                    blue <= "1111";
                else
                    red <= "0000";
                    green <= "0000";
                    blue <= "0000";
                end if;

            -- Drawing score for P2
            elsif unsigned(h_count) >= to_unsigned(x_pos_p2_score, h_count'length)
            and unsigned(h_count) <= to_unsigned(x_pos_p2_score + BM_SIZE * 3, h_count'length)
            and unsigned(v_count) >= to_unsigned(y_pos_p2_score, v_count'length)
            and unsigned(v_count) <= to_unsigned(y_pos_p2_score + BM_SIZE * 5, v_count'length)
            and game_state = 1
            and temp_video_on = '1' then
                if score_to_bitmap(P2_score)(BM_SIZE - 1 - to_integer(unsigned(v_count) - y_pos_p2_score) / 5)(BM_SIZE - 1 - to_integer(unsigned(h_count) - x_pos_p2_score) / 3) = '1' then
                    red <= "1111";
                    green <= "1111";
                    blue <= "1111";
                else
                    red <= "0000";
                    green <= "0000";
                    blue <= "0000";
                end if;
            -- Else Conditions
            else
                red <= "0000";
                green <= "0000";
                blue <= "0000";
            end if;
        end if;

end process draw;

	-- VGA MAIN ENDS
	h_sync <= temp_h_sync;
	v_sync <= temp_v_sync;
	video_on <= temp_video_on;
end default_arch;
