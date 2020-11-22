-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity convolve_fpga_Block_split1_proc9 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    img_width : IN STD_LOGIC_VECTOR (31 downto 0);
    img_height : IN STD_LOGIC_VECTOR (31 downto 0);
    inFrame : IN STD_LOGIC_VECTOR (63 downto 0);
    outFrame : IN STD_LOGIC_VECTOR (63 downto 0);
    coefficient : IN STD_LOGIC_VECTOR (63 downto 0);
    img_width_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    img_width_out_full_n : IN STD_LOGIC;
    img_width_out_write : OUT STD_LOGIC;
    elements_out_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    elements_out_out_full_n : IN STD_LOGIC;
    elements_out_out_write : OUT STD_LOGIC;
    inFrame_out_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    inFrame_out_full_n : IN STD_LOGIC;
    inFrame_out_write : OUT STD_LOGIC;
    outFrame_out_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    outFrame_out_full_n : IN STD_LOGIC;
    outFrame_out_write : OUT STD_LOGIC;
    coefficient_out_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    coefficient_out_full_n : IN STD_LOGIC;
    coefficient_out_write : OUT STD_LOGIC );
end;


architecture behav of convolve_fpga_Block_split1_proc9 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal img_width_out_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal elements_out_out_blk_n : STD_LOGIC;
    signal inFrame_out_blk_n : STD_LOGIC;
    signal outFrame_out_blk_n : STD_LOGIC;
    signal coefficient_out_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal grp_fu_107_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal elements_reg_139 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_block_state8 : BOOLEAN;
    signal grp_fu_107_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);

    component convolve_fpga_mul_32s_32s_32_7_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mul_32s_32s_32_7_1_U1 : component convolve_fpga_mul_32s_32s_32_7_1
    generic map (
        ID => 1,
        NUM_STAGE => 7,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => img_height,
        din1 => img_width,
        ce => grp_fu_107_ce,
        dout => grp_fu_107_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((coefficient_out_full_n = ap_const_logic_0) or (outFrame_out_full_n = ap_const_logic_0) or (inFrame_out_full_n = ap_const_logic_0) or (elements_out_out_full_n = ap_const_logic_0) or (img_width_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                elements_reg_139 <= grp_fu_107_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, img_width_out_full_n, elements_out_out_full_n, inFrame_out_full_n, outFrame_out_full_n, coefficient_out_full_n, ap_CS_fsm_state8)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if ((not(((coefficient_out_full_n = ap_const_logic_0) or (outFrame_out_full_n = ap_const_logic_0) or (inFrame_out_full_n = ap_const_logic_0) or (elements_out_out_full_n = ap_const_logic_0) or (img_width_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0));
    end process;


    ap_block_state8_assign_proc : process(img_width_out_full_n, elements_out_out_full_n, inFrame_out_full_n, outFrame_out_full_n, coefficient_out_full_n)
    begin
                ap_block_state8 <= ((coefficient_out_full_n = ap_const_logic_0) or (outFrame_out_full_n = ap_const_logic_0) or (inFrame_out_full_n = ap_const_logic_0) or (elements_out_out_full_n = ap_const_logic_0) or (img_width_out_full_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, img_width_out_full_n, elements_out_out_full_n, inFrame_out_full_n, outFrame_out_full_n, coefficient_out_full_n, ap_CS_fsm_state8)
    begin
        if ((not(((coefficient_out_full_n = ap_const_logic_0) or (outFrame_out_full_n = ap_const_logic_0) or (inFrame_out_full_n = ap_const_logic_0) or (elements_out_out_full_n = ap_const_logic_0) or (img_width_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (real_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    coefficient_out_blk_n_assign_proc : process(coefficient_out_full_n, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            coefficient_out_blk_n <= coefficient_out_full_n;
        else 
            coefficient_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    coefficient_out_din <= coefficient;

    coefficient_out_write_assign_proc : process(img_width_out_full_n, elements_out_out_full_n, inFrame_out_full_n, outFrame_out_full_n, coefficient_out_full_n, ap_CS_fsm_state8)
    begin
        if ((not(((coefficient_out_full_n = ap_const_logic_0) or (outFrame_out_full_n = ap_const_logic_0) or (inFrame_out_full_n = ap_const_logic_0) or (elements_out_out_full_n = ap_const_logic_0) or (img_width_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            coefficient_out_write <= ap_const_logic_1;
        else 
            coefficient_out_write <= ap_const_logic_0;
        end if; 
    end process;


    elements_out_out_blk_n_assign_proc : process(elements_out_out_full_n, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            elements_out_out_blk_n <= elements_out_out_full_n;
        else 
            elements_out_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    elements_out_out_din <= elements_reg_139;

    elements_out_out_write_assign_proc : process(img_width_out_full_n, elements_out_out_full_n, inFrame_out_full_n, outFrame_out_full_n, coefficient_out_full_n, ap_CS_fsm_state8)
    begin
        if ((not(((coefficient_out_full_n = ap_const_logic_0) or (outFrame_out_full_n = ap_const_logic_0) or (inFrame_out_full_n = ap_const_logic_0) or (elements_out_out_full_n = ap_const_logic_0) or (img_width_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            elements_out_out_write <= ap_const_logic_1;
        else 
            elements_out_out_write <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_107_ce_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or ((ap_const_logic_1 = ap_CS_fsm_state1) and ((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))))) then 
            grp_fu_107_ce <= ap_const_logic_0;
        else 
            grp_fu_107_ce <= ap_const_logic_1;
        end if; 
    end process;


    img_width_out_blk_n_assign_proc : process(img_width_out_full_n, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            img_width_out_blk_n <= img_width_out_full_n;
        else 
            img_width_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_width_out_din <= img_width;

    img_width_out_write_assign_proc : process(img_width_out_full_n, elements_out_out_full_n, inFrame_out_full_n, outFrame_out_full_n, coefficient_out_full_n, ap_CS_fsm_state8)
    begin
        if ((not(((coefficient_out_full_n = ap_const_logic_0) or (outFrame_out_full_n = ap_const_logic_0) or (inFrame_out_full_n = ap_const_logic_0) or (elements_out_out_full_n = ap_const_logic_0) or (img_width_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            img_width_out_write <= ap_const_logic_1;
        else 
            img_width_out_write <= ap_const_logic_0;
        end if; 
    end process;


    inFrame_out_blk_n_assign_proc : process(inFrame_out_full_n, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            inFrame_out_blk_n <= inFrame_out_full_n;
        else 
            inFrame_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    inFrame_out_din <= inFrame;

    inFrame_out_write_assign_proc : process(img_width_out_full_n, elements_out_out_full_n, inFrame_out_full_n, outFrame_out_full_n, coefficient_out_full_n, ap_CS_fsm_state8)
    begin
        if ((not(((coefficient_out_full_n = ap_const_logic_0) or (outFrame_out_full_n = ap_const_logic_0) or (inFrame_out_full_n = ap_const_logic_0) or (elements_out_out_full_n = ap_const_logic_0) or (img_width_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            inFrame_out_write <= ap_const_logic_1;
        else 
            inFrame_out_write <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(img_width_out_full_n, elements_out_out_full_n, inFrame_out_full_n, outFrame_out_full_n, coefficient_out_full_n, ap_CS_fsm_state8)
    begin
        if ((not(((coefficient_out_full_n = ap_const_logic_0) or (outFrame_out_full_n = ap_const_logic_0) or (inFrame_out_full_n = ap_const_logic_0) or (elements_out_out_full_n = ap_const_logic_0) or (img_width_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    outFrame_out_blk_n_assign_proc : process(outFrame_out_full_n, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            outFrame_out_blk_n <= outFrame_out_full_n;
        else 
            outFrame_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    outFrame_out_din <= outFrame;

    outFrame_out_write_assign_proc : process(img_width_out_full_n, elements_out_out_full_n, inFrame_out_full_n, outFrame_out_full_n, coefficient_out_full_n, ap_CS_fsm_state8)
    begin
        if ((not(((coefficient_out_full_n = ap_const_logic_0) or (outFrame_out_full_n = ap_const_logic_0) or (inFrame_out_full_n = ap_const_logic_0) or (elements_out_out_full_n = ap_const_logic_0) or (img_width_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            outFrame_out_write <= ap_const_logic_1;
        else 
            outFrame_out_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
