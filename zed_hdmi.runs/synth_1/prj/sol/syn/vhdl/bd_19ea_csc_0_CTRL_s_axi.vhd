-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
-- Tool Version Limit: 2024.05
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- 
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity bd_19ea_csc_0_CTRL_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 8;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    InVideoFormat         :out  STD_LOGIC_VECTOR(7 downto 0);
    OutVideoFormat        :out  STD_LOGIC_VECTOR(7 downto 0);
    width                 :out  STD_LOGIC_VECTOR(15 downto 0);
    height                :out  STD_LOGIC_VECTOR(15 downto 0);
    K11                   :out  STD_LOGIC_VECTOR(15 downto 0);
    K12                   :out  STD_LOGIC_VECTOR(15 downto 0);
    K13                   :out  STD_LOGIC_VECTOR(15 downto 0);
    K21                   :out  STD_LOGIC_VECTOR(15 downto 0);
    K22                   :out  STD_LOGIC_VECTOR(15 downto 0);
    K23                   :out  STD_LOGIC_VECTOR(15 downto 0);
    K31                   :out  STD_LOGIC_VECTOR(15 downto 0);
    K32                   :out  STD_LOGIC_VECTOR(15 downto 0);
    K33                   :out  STD_LOGIC_VECTOR(15 downto 0);
    ROffset               :out  STD_LOGIC_VECTOR(9 downto 0);
    GOffset               :out  STD_LOGIC_VECTOR(9 downto 0);
    BOffset               :out  STD_LOGIC_VECTOR(9 downto 0);
    ClampMin              :out  STD_LOGIC_VECTOR(7 downto 0);
    ClipMax               :out  STD_LOGIC_VECTOR(7 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity bd_19ea_csc_0_CTRL_s_axi;

-- ------------------------Address Info-------------------
-- Protocol Used: ap_ctrl_hs
--
-- 0x00 : Control signals
--        bit 0  - ap_start (Read/Write/COH)
--        bit 1  - ap_done (Read/COR)
--        bit 2  - ap_idle (Read)
--        bit 3  - ap_ready (Read/COR)
--        bit 7  - auto_restart (Read/Write)
--        bit 9  - interrupt (Read)
--        others - reserved
-- 0x04 : Global Interrupt Enable Register
--        bit 0  - Global Interrupt Enable (Read/Write)
--        others - reserved
-- 0x08 : IP Interrupt Enable Register (Read/Write)
--        bit 0 - enable ap_done interrupt (Read/Write)
--        bit 1 - enable ap_ready interrupt (Read/Write)
--        others - reserved
-- 0x0c : IP Interrupt Status Register (Read/TOW)
--        bit 0 - ap_done (Read/TOW)
--        bit 1 - ap_ready (Read/TOW)
--        others - reserved
-- 0x10 : Data signal of InVideoFormat
--        bit 7~0 - InVideoFormat[7:0] (Read/Write)
--        others  - reserved
-- 0x14 : reserved
-- 0x18 : Data signal of OutVideoFormat
--        bit 7~0 - OutVideoFormat[7:0] (Read/Write)
--        others  - reserved
-- 0x1c : reserved
-- 0x20 : Data signal of width
--        bit 15~0 - width[15:0] (Read/Write)
--        others   - reserved
-- 0x24 : reserved
-- 0x28 : Data signal of height
--        bit 15~0 - height[15:0] (Read/Write)
--        others   - reserved
-- 0x2c : reserved
-- 0x50 : Data signal of K11
--        bit 15~0 - K11[15:0] (Read/Write)
--        others   - reserved
-- 0x54 : reserved
-- 0x58 : Data signal of K12
--        bit 15~0 - K12[15:0] (Read/Write)
--        others   - reserved
-- 0x5c : reserved
-- 0x60 : Data signal of K13
--        bit 15~0 - K13[15:0] (Read/Write)
--        others   - reserved
-- 0x64 : reserved
-- 0x68 : Data signal of K21
--        bit 15~0 - K21[15:0] (Read/Write)
--        others   - reserved
-- 0x6c : reserved
-- 0x70 : Data signal of K22
--        bit 15~0 - K22[15:0] (Read/Write)
--        others   - reserved
-- 0x74 : reserved
-- 0x78 : Data signal of K23
--        bit 15~0 - K23[15:0] (Read/Write)
--        others   - reserved
-- 0x7c : reserved
-- 0x80 : Data signal of K31
--        bit 15~0 - K31[15:0] (Read/Write)
--        others   - reserved
-- 0x84 : reserved
-- 0x88 : Data signal of K32
--        bit 15~0 - K32[15:0] (Read/Write)
--        others   - reserved
-- 0x8c : reserved
-- 0x90 : Data signal of K33
--        bit 15~0 - K33[15:0] (Read/Write)
--        others   - reserved
-- 0x94 : reserved
-- 0x98 : Data signal of ROffset
--        bit 9~0 - ROffset[9:0] (Read/Write)
--        others  - reserved
-- 0x9c : reserved
-- 0xa0 : Data signal of GOffset
--        bit 9~0 - GOffset[9:0] (Read/Write)
--        others  - reserved
-- 0xa4 : reserved
-- 0xa8 : Data signal of BOffset
--        bit 9~0 - BOffset[9:0] (Read/Write)
--        others  - reserved
-- 0xac : reserved
-- 0xb0 : Data signal of ClampMin
--        bit 7~0 - ClampMin[7:0] (Read/Write)
--        others  - reserved
-- 0xb4 : reserved
-- 0xb8 : Data signal of ClipMax
--        bit 7~0 - ClipMax[7:0] (Read/Write)
--        others  - reserved
-- 0xbc : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of bd_19ea_csc_0_CTRL_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL               : INTEGER := 16#00#;
    constant ADDR_GIE                   : INTEGER := 16#04#;
    constant ADDR_IER                   : INTEGER := 16#08#;
    constant ADDR_ISR                   : INTEGER := 16#0c#;
    constant ADDR_INVIDEOFORMAT_DATA_0  : INTEGER := 16#10#;
    constant ADDR_INVIDEOFORMAT_CTRL    : INTEGER := 16#14#;
    constant ADDR_OUTVIDEOFORMAT_DATA_0 : INTEGER := 16#18#;
    constant ADDR_OUTVIDEOFORMAT_CTRL   : INTEGER := 16#1c#;
    constant ADDR_WIDTH_DATA_0          : INTEGER := 16#20#;
    constant ADDR_WIDTH_CTRL            : INTEGER := 16#24#;
    constant ADDR_HEIGHT_DATA_0         : INTEGER := 16#28#;
    constant ADDR_HEIGHT_CTRL           : INTEGER := 16#2c#;
    constant ADDR_K11_DATA_0            : INTEGER := 16#50#;
    constant ADDR_K11_CTRL              : INTEGER := 16#54#;
    constant ADDR_K12_DATA_0            : INTEGER := 16#58#;
    constant ADDR_K12_CTRL              : INTEGER := 16#5c#;
    constant ADDR_K13_DATA_0            : INTEGER := 16#60#;
    constant ADDR_K13_CTRL              : INTEGER := 16#64#;
    constant ADDR_K21_DATA_0            : INTEGER := 16#68#;
    constant ADDR_K21_CTRL              : INTEGER := 16#6c#;
    constant ADDR_K22_DATA_0            : INTEGER := 16#70#;
    constant ADDR_K22_CTRL              : INTEGER := 16#74#;
    constant ADDR_K23_DATA_0            : INTEGER := 16#78#;
    constant ADDR_K23_CTRL              : INTEGER := 16#7c#;
    constant ADDR_K31_DATA_0            : INTEGER := 16#80#;
    constant ADDR_K31_CTRL              : INTEGER := 16#84#;
    constant ADDR_K32_DATA_0            : INTEGER := 16#88#;
    constant ADDR_K32_CTRL              : INTEGER := 16#8c#;
    constant ADDR_K33_DATA_0            : INTEGER := 16#90#;
    constant ADDR_K33_CTRL              : INTEGER := 16#94#;
    constant ADDR_ROFFSET_DATA_0        : INTEGER := 16#98#;
    constant ADDR_ROFFSET_CTRL          : INTEGER := 16#9c#;
    constant ADDR_GOFFSET_DATA_0        : INTEGER := 16#a0#;
    constant ADDR_GOFFSET_CTRL          : INTEGER := 16#a4#;
    constant ADDR_BOFFSET_DATA_0        : INTEGER := 16#a8#;
    constant ADDR_BOFFSET_CTRL          : INTEGER := 16#ac#;
    constant ADDR_CLAMPMIN_DATA_0       : INTEGER := 16#b0#;
    constant ADDR_CLAMPMIN_CTRL         : INTEGER := 16#b4#;
    constant ADDR_CLIPMAX_DATA_0        : INTEGER := 16#b8#;
    constant ADDR_CLIPMAX_CTRL          : INTEGER := 16#bc#;
    constant ADDR_BITS         : INTEGER := 8;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_interrupt       : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_InVideoFormat   : UNSIGNED(7 downto 0) := (others => '0');
    signal int_OutVideoFormat  : UNSIGNED(7 downto 0) := (others => '0');
    signal int_width           : UNSIGNED(15 downto 0) := (others => '0');
    signal int_height          : UNSIGNED(15 downto 0) := (others => '0');
    signal int_K11             : UNSIGNED(15 downto 0) := (others => '0');
    signal int_K12             : UNSIGNED(15 downto 0) := (others => '0');
    signal int_K13             : UNSIGNED(15 downto 0) := (others => '0');
    signal int_K21             : UNSIGNED(15 downto 0) := (others => '0');
    signal int_K22             : UNSIGNED(15 downto 0) := (others => '0');
    signal int_K23             : UNSIGNED(15 downto 0) := (others => '0');
    signal int_K31             : UNSIGNED(15 downto 0) := (others => '0');
    signal int_K32             : UNSIGNED(15 downto 0) := (others => '0');
    signal int_K33             : UNSIGNED(15 downto 0) := (others => '0');
    signal int_ROffset         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_GOffset         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_BOffset         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_ClampMin        : UNSIGNED(7 downto 0) := (others => '0');
    signal int_ClipMax         : UNSIGNED(7 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 2) & (1 downto 0 => '0'));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(9) <= int_interrupt;
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_INVIDEOFORMAT_DATA_0 =>
                        rdata_data <= RESIZE(int_InVideoFormat(7 downto 0), 32);
                    when ADDR_OUTVIDEOFORMAT_DATA_0 =>
                        rdata_data <= RESIZE(int_OutVideoFormat(7 downto 0), 32);
                    when ADDR_WIDTH_DATA_0 =>
                        rdata_data <= RESIZE(int_width(15 downto 0), 32);
                    when ADDR_HEIGHT_DATA_0 =>
                        rdata_data <= RESIZE(int_height(15 downto 0), 32);
                    when ADDR_K11_DATA_0 =>
                        rdata_data <= RESIZE(int_K11(15 downto 0), 32);
                    when ADDR_K12_DATA_0 =>
                        rdata_data <= RESIZE(int_K12(15 downto 0), 32);
                    when ADDR_K13_DATA_0 =>
                        rdata_data <= RESIZE(int_K13(15 downto 0), 32);
                    when ADDR_K21_DATA_0 =>
                        rdata_data <= RESIZE(int_K21(15 downto 0), 32);
                    when ADDR_K22_DATA_0 =>
                        rdata_data <= RESIZE(int_K22(15 downto 0), 32);
                    when ADDR_K23_DATA_0 =>
                        rdata_data <= RESIZE(int_K23(15 downto 0), 32);
                    when ADDR_K31_DATA_0 =>
                        rdata_data <= RESIZE(int_K31(15 downto 0), 32);
                    when ADDR_K32_DATA_0 =>
                        rdata_data <= RESIZE(int_K32(15 downto 0), 32);
                    when ADDR_K33_DATA_0 =>
                        rdata_data <= RESIZE(int_K33(15 downto 0), 32);
                    when ADDR_ROFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_ROffset(9 downto 0), 32);
                    when ADDR_GOFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_GOffset(9 downto 0), 32);
                    when ADDR_BOFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_BOffset(9 downto 0), 32);
                    when ADDR_CLAMPMIN_DATA_0 =>
                        rdata_data <= RESIZE(int_ClampMin(7 downto 0), 32);
                    when ADDR_CLIPMAX_DATA_0 =>
                        rdata_data <= RESIZE(int_ClipMax(7 downto 0), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_interrupt;
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    InVideoFormat        <= STD_LOGIC_VECTOR(int_InVideoFormat);
    OutVideoFormat       <= STD_LOGIC_VECTOR(int_OutVideoFormat);
    width                <= STD_LOGIC_VECTOR(int_width);
    height               <= STD_LOGIC_VECTOR(int_height);
    K11                  <= STD_LOGIC_VECTOR(int_K11);
    K12                  <= STD_LOGIC_VECTOR(int_K12);
    K13                  <= STD_LOGIC_VECTOR(int_K13);
    K21                  <= STD_LOGIC_VECTOR(int_K21);
    K22                  <= STD_LOGIC_VECTOR(int_K22);
    K23                  <= STD_LOGIC_VECTOR(int_K23);
    K31                  <= STD_LOGIC_VECTOR(int_K31);
    K32                  <= STD_LOGIC_VECTOR(int_K32);
    K33                  <= STD_LOGIC_VECTOR(int_K33);
    ROffset              <= STD_LOGIC_VECTOR(int_ROffset);
    GOffset              <= STD_LOGIC_VECTOR(int_GOffset);
    BOffset              <= STD_LOGIC_VECTOR(int_BOffset);
    ClampMin             <= STD_LOGIC_VECTOR(int_ClampMin);
    ClipMax              <= STD_LOGIC_VECTOR(int_ClipMax);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interrupt <= '0';
            elsif (ACLK_EN = '1') then
                if (int_gie = '1' and (int_isr(0) or int_isr(1)) = '1') then
                    int_interrupt <= '1';
                else
                    int_interrupt <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_InVideoFormat(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INVIDEOFORMAT_DATA_0) then
                    int_InVideoFormat(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_InVideoFormat(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_OutVideoFormat(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OUTVIDEOFORMAT_DATA_0) then
                    int_OutVideoFormat(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_OutVideoFormat(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_width(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WIDTH_DATA_0) then
                    int_width(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_width(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_height(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_HEIGHT_DATA_0) then
                    int_height(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_height(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_K11(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_K11_DATA_0) then
                    int_K11(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_K11(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_K12(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_K12_DATA_0) then
                    int_K12(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_K12(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_K13(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_K13_DATA_0) then
                    int_K13(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_K13(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_K21(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_K21_DATA_0) then
                    int_K21(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_K21(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_K22(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_K22_DATA_0) then
                    int_K22(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_K22(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_K23(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_K23_DATA_0) then
                    int_K23(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_K23(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_K31(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_K31_DATA_0) then
                    int_K31(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_K31(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_K32(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_K32_DATA_0) then
                    int_K32(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_K32(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_K33(15 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_K33_DATA_0) then
                    int_K33(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_K33(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ROffset(9 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ROFFSET_DATA_0) then
                    int_ROffset(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_ROffset(9 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_GOffset(9 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GOFFSET_DATA_0) then
                    int_GOffset(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_GOffset(9 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_BOffset(9 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BOFFSET_DATA_0) then
                    int_BOffset(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_BOffset(9 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ClampMin(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CLAMPMIN_DATA_0) then
                    int_ClampMin(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_ClampMin(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ClipMax(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CLIPMAX_DATA_0) then
                    int_ClipMax(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_ClipMax(7 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
