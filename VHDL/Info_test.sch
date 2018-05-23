<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk" />
        <signal name="EncodeB1" />
        <signal name="EncodeA2" />
        <signal name="EncodeB2" />
        <signal name="XLXN_336" />
        <signal name="XLXN_348" />
        <signal name="XLXN_349" />
        <signal name="MOSI" />
        <signal name="SS" />
        <signal name="SCLK" />
        <signal name="XLXN_480(7:0)" />
        <signal name="XLXN_481(7:0)" />
        <signal name="PWM_A1" />
        <signal name="PWM_A2" />
        <signal name="PWM_B1" />
        <signal name="PWM_B2" />
        <signal name="PanRef" />
        <signal name="TiltRef" />
        <signal name="XLXN_525" />
        <signal name="XLXN_526" />
        <signal name="EncodeA1" />
        <signal name="XLXN_539" />
        <signal name="ResetBt" />
        <signal name="Seg(7:0)" />
        <signal name="An(3:0)" />
        <signal name="LED(7:0)" />
        <signal name="Sw" />
        <signal name="Bcd2(15:0)" />
        <signal name="Bcd2(9:0)" />
        <signal name="Bcd2(15:10)" />
        <signal name="XLXN_607" />
        <signal name="XLXN_608" />
        <signal name="XLXN_632(7:0)" />
        <signal name="XLXN_633(7:0)" />
        <signal name="XLXN_634(7:0)" />
        <signal name="XLXN_641(7:0)" />
        <signal name="XLXN_644" />
        <signal name="EN_B" />
        <signal name="EN_A" />
        <signal name="XLXN_656" />
        <signal name="XLXN_658" />
        <signal name="XLXN_663" />
        <signal name="XLXN_664" />
        <signal name="XLXN_667" />
        <signal name="CalBt" />
        <signal name="MISO" />
        <signal name="XLXN_678" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="EncodeB1" />
        <port polarity="Input" name="EncodeA2" />
        <port polarity="Input" name="EncodeB2" />
        <port polarity="Input" name="MOSI" />
        <port polarity="Input" name="SS" />
        <port polarity="Input" name="SCLK" />
        <port polarity="Output" name="PWM_A1" />
        <port polarity="Output" name="PWM_A2" />
        <port polarity="Output" name="PWM_B1" />
        <port polarity="Output" name="PWM_B2" />
        <port polarity="Input" name="PanRef" />
        <port polarity="Input" name="TiltRef" />
        <port polarity="Input" name="EncodeA1" />
        <port polarity="Input" name="ResetBt" />
        <port polarity="Output" name="Seg(7:0)" />
        <port polarity="Output" name="An(3:0)" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Input" name="Sw" />
        <port polarity="Output" name="EN_B" />
        <port polarity="Output" name="EN_A" />
        <port polarity="Input" name="CalBt" />
        <port polarity="Output" name="MISO" />
        <blockdef name="InfoDis">
            <timestamp>2018-5-15T8:45:24</timestamp>
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <rect width="304" x="64" y="-320" height="600" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="16" y2="16" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="112" y2="112" x1="64" />
            <rect width="64" x="0" y="244" height="24" />
            <line x2="0" y1="256" y2="256" x1="64" />
            <line x2="0" y1="208" y2="208" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="Encoders">
            <timestamp>2018-5-13T13:29:19</timestamp>
            <rect width="416" x="64" y="-448" height="468" />
            <line x2="544" y1="-352" y2="-352" x1="480" />
            <line x2="544" y1="-288" y2="-288" x1="480" />
            <rect width="64" x="480" y="-428" height="24" />
            <line x2="544" y1="-416" y2="-416" x1="480" />
            <rect width="64" x="480" y="-236" height="24" />
            <line x2="544" y1="-224" y2="-224" x1="480" />
            <line x2="544" y1="-160" y2="-160" x1="480" />
            <line x2="544" y1="-112" y2="-112" x1="480" />
            <line x2="544" y1="-64" y2="-64" x1="480" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="0" y1="-16" y2="-16" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="Communication">
            <timestamp>2018-5-17T6:53:41</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <rect width="64" x="384" y="84" height="24" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <rect width="320" x="64" y="-384" height="564" />
            <line x2="0" y1="32" y2="32" x1="64" />
        </blockdef>
        <blockdef name="Control">
            <timestamp>2018-5-17T6:37:17</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="256" x="64" y="-448" height="504" />
            <line x2="0" y1="32" y2="32" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="or2" name="XLXI_73">
            <blockpin signalname="XLXN_667" name="I0" />
            <blockpin signalname="XLXN_663" name="I1" />
            <blockpin signalname="XLXN_348" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_75">
            <blockpin signalname="XLXN_667" name="I0" />
            <blockpin signalname="XLXN_664" name="I1" />
            <blockpin signalname="XLXN_349" name="O" />
        </block>
        <block symbolname="Encoders" name="XLXI_34">
            <blockpin signalname="XLXN_526" name="CountPluse0" />
            <blockpin signalname="XLXN_525" name="Dir0" />
            <blockpin signalname="XLXN_480(7:0)" name="CountMotor0(7:0)" />
            <blockpin signalname="XLXN_481(7:0)" name="CountMotor1(7:0)" />
            <blockpin signalname="XLXN_644" name="CountPulse1" />
            <blockpin signalname="XLXN_336" name="Dir1" />
            <blockpin signalname="XLXN_539" name="Error" />
            <blockpin signalname="EncodeB2" name="EncodeB1" />
            <blockpin signalname="EncodeA2" name="EncodeA1" />
            <blockpin signalname="EncodeA1" name="EncodeA0" />
            <blockpin signalname="EncodeB1" name="EncodeB0" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_348" name="ResetSC0" />
            <blockpin signalname="XLXN_667" name="ResetError" />
            <blockpin signalname="XLXN_349" name="ResetSC1" />
        </block>
        <block symbolname="InfoDis" name="XLXI_30">
            <blockpin signalname="Seg(7:0)" name="Seg(7:0)" />
            <blockpin signalname="XLXN_634(7:0)" name="PWMMotor0(7:0)" />
            <blockpin signalname="XLXN_526" name="CountPulse0" />
            <blockpin signalname="XLXN_525" name="Dir0" />
            <blockpin signalname="An(3:0)" name="An(3:0)" />
            <blockpin signalname="LED(7:0)" name="LED(7:0)" />
            <blockpin signalname="XLXN_641(7:0)" name="PWMMotor1(7:0)" />
            <blockpin signalname="XLXN_644" name="CountPulse1" />
            <blockpin signalname="XLXN_336" name="Dir1" />
            <blockpin signalname="XLXN_539" name="Error" />
            <blockpin signalname="XLXN_667" name="Reset" />
            <blockpin signalname="Bcd2(15:0)" name="Bcd2(15:0)" />
            <blockpin signalname="Sw" name="Sw" />
            <blockpin signalname="Clk" name="Clk" />
        </block>
        <block symbolname="Control" name="XLXI_76">
            <blockpin signalname="XLXN_633(7:0)" name="PCM1(7:0)" />
            <blockpin signalname="XLXN_632(7:0)" name="PCM0(7:0)" />
            <blockpin signalname="XLXN_678" name="Calibrate" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="PanRef" name="PanReference" />
            <blockpin signalname="XLXN_644" name="PanPulse" />
            <blockpin signalname="TiltRef" name="TiltReference" />
            <blockpin signalname="XLXN_634(7:0)" name="PCM0Out(7:0)" />
            <blockpin signalname="XLXN_641(7:0)" name="PCM1Out(7:0)" />
            <blockpin signalname="XLXN_607" name="CalTilt" />
            <blockpin signalname="XLXN_608" name="CalPan" />
            <blockpin signalname="PWM_A1" name="PWM_A1" />
            <blockpin signalname="PWM_A2" name="PWM_A2" />
            <blockpin signalname="PWM_B1" name="PWM_B1" />
            <blockpin signalname="PWM_B2" name="PWM_B2" />
            <blockpin signalname="XLXN_667" name="Reset" />
        </block>
        <block symbolname="or2" name="XLXI_62">
            <blockpin signalname="ResetBt" name="I0" />
            <blockpin signalname="XLXN_658" name="I1" />
            <blockpin signalname="XLXN_667" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_86">
            <attr value="00000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="Bcd2(15:10)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_41">
            <blockpin signalname="EN_B" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_52">
            <blockpin signalname="EN_A" name="P" />
        </block>
        <block symbolname="Communication" name="XLXI_95">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="SCLK" name="SCLK" />
            <blockpin signalname="SS" name="SS" />
            <blockpin signalname="MOSI" name="MOSI" />
            <blockpin signalname="XLXN_480(7:0)" name="Motor0(7:0)" />
            <blockpin signalname="XLXN_481(7:0)" name="Motor1(7:0)" />
            <blockpin signalname="XLXN_608" name="CalPan" />
            <blockpin signalname="XLXN_607" name="CalTilt" />
            <blockpin signalname="XLXN_632(7:0)" name="PCMMotor0(7:0)" />
            <blockpin signalname="XLXN_633(7:0)" name="PCMMotor1(7:0)" />
            <blockpin signalname="MISO" name="MISO" />
            <blockpin signalname="XLXN_656" name="Calibrate" />
            <blockpin signalname="Bcd2(9:0)" name="Data_Tran(9:0)" />
            <blockpin signalname="XLXN_663" name="MotorReset0" />
            <blockpin signalname="XLXN_664" name="MotorReset1" />
            <blockpin signalname="XLXN_658" name="Reset" />
            <blockpin signalname="XLXN_667" name="ResetIn" />
        </block>
        <block symbolname="or2" name="XLXI_91">
            <blockpin signalname="CalBt" name="I0" />
            <blockpin signalname="XLXN_656" name="I1" />
            <blockpin signalname="XLXN_678" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="592" y="1088" name="XLXI_73" orien="R180" />
        <instance x="592" y="1232" name="XLXI_75" orien="R180" />
        <iomarker fontsize="28" x="224" y="624" name="EncodeA1" orien="R180" />
        <iomarker fontsize="28" x="224" y="688" name="EncodeB1" orien="R180" />
        <iomarker fontsize="28" x="224" y="816" name="EncodeB2" orien="R180" />
        <iomarker fontsize="28" x="224" y="752" name="EncodeA2" orien="R180" />
        <branch name="Clk">
            <wire x2="1072" y1="1072" y2="1072" x1="1008" />
        </branch>
        <branch name="XLXN_336">
            <wire x2="1072" y1="928" y2="928" x1="800" />
        </branch>
        <branch name="XLXN_349">
            <wire x2="224" y1="1024" y2="1328" x1="224" />
            <wire x2="336" y1="1328" y2="1328" x1="224" />
            <wire x2="256" y1="1024" y2="1024" x1="224" />
        </branch>
        <branch name="XLXN_348">
            <wire x2="240" y1="976" y2="1184" x1="240" />
            <wire x2="336" y1="1184" y2="1184" x1="240" />
            <wire x2="256" y1="976" y2="976" x1="240" />
        </branch>
        <branch name="Clk">
            <wire x2="256" y1="880" y2="880" x1="224" />
        </branch>
        <branch name="EncodeB2">
            <wire x2="256" y1="816" y2="816" x1="224" />
        </branch>
        <branch name="EncodeA2">
            <wire x2="256" y1="752" y2="752" x1="224" />
        </branch>
        <branch name="EncodeB1">
            <wire x2="256" y1="688" y2="688" x1="224" />
        </branch>
        <instance x="256" y="1040" name="XLXI_34" orien="R0">
        </instance>
        <branch name="MOSI">
            <wire x2="272" y1="1808" y2="1808" x1="240" />
        </branch>
        <branch name="SS">
            <wire x2="272" y1="1744" y2="1744" x1="240" />
        </branch>
        <branch name="SCLK">
            <wire x2="272" y1="1680" y2="1680" x1="240" />
        </branch>
        <branch name="Clk">
            <wire x2="272" y1="1872" y2="1872" x1="208" />
        </branch>
        <branch name="XLXN_480(7:0)">
            <wire x2="240" y1="1408" y2="1552" x1="240" />
            <wire x2="272" y1="1552" y2="1552" x1="240" />
            <wire x2="832" y1="1408" y2="1408" x1="240" />
            <wire x2="832" y1="624" y2="624" x1="800" />
            <wire x2="832" y1="624" y2="1408" x1="832" />
        </branch>
        <branch name="XLXN_481(7:0)">
            <wire x2="256" y1="1424" y2="1616" x1="256" />
            <wire x2="272" y1="1616" y2="1616" x1="256" />
            <wire x2="848" y1="1424" y2="1424" x1="256" />
            <wire x2="848" y1="816" y2="816" x1="800" />
            <wire x2="848" y1="816" y2="1424" x1="848" />
        </branch>
        <iomarker fontsize="28" x="240" y="1744" name="SS" orien="R180" />
        <iomarker fontsize="28" x="240" y="1808" name="MOSI" orien="R180" />
        <iomarker fontsize="28" x="240" y="1680" name="SCLK" orien="R180" />
        <iomarker fontsize="28" x="224" y="880" name="Clk" orien="R180" />
        <branch name="PWM_A1">
            <wire x2="1584" y1="1552" y2="1552" x1="1536" />
        </branch>
        <branch name="PWM_A2">
            <wire x2="1584" y1="1616" y2="1616" x1="1536" />
        </branch>
        <branch name="PWM_B1">
            <wire x2="1584" y1="1680" y2="1680" x1="1536" />
        </branch>
        <branch name="PWM_B2">
            <wire x2="1584" y1="1744" y2="1744" x1="1536" />
        </branch>
        <branch name="PanRef">
            <wire x2="1152" y1="1808" y2="1808" x1="1088" />
        </branch>
        <branch name="TiltRef">
            <wire x2="1152" y1="1872" y2="1872" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1008" y="1072" name="Clk" orien="R180" />
        <branch name="XLXN_525">
            <wire x2="1072" y1="752" y2="752" x1="800" />
        </branch>
        <branch name="XLXN_526">
            <wire x2="1072" y1="688" y2="688" x1="800" />
        </branch>
        <branch name="EncodeA1">
            <wire x2="256" y1="624" y2="624" x1="224" />
        </branch>
        <branch name="XLXN_539">
            <wire x2="1072" y1="976" y2="976" x1="800" />
        </branch>
        <iomarker fontsize="28" x="208" y="1872" name="Clk" orien="R180" />
        <branch name="ResetBt">
            <wire x2="1136" y1="1296" y2="1296" x1="1120" />
        </branch>
        <branch name="Seg(7:0)">
            <wire x2="1568" y1="624" y2="624" x1="1504" />
        </branch>
        <branch name="An(3:0)">
            <wire x2="1568" y1="688" y2="688" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1568" y="688" name="An(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1568" y="624" name="Seg(7:0)" orien="R0" />
        <branch name="LED(7:0)">
            <wire x2="1568" y1="752" y2="752" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1568" y="752" name="LED(7:0)" orien="R0" />
        <branch name="Sw">
            <wire x2="1072" y1="1120" y2="1120" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1008" y="1120" name="Sw" orien="R180" />
        <instance x="1072" y="912" name="XLXI_30" orien="R0">
        </instance>
        <branch name="Bcd2(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1296" type="branch" />
            <wire x2="1072" y1="1168" y2="1168" x1="928" />
            <wire x2="928" y1="1168" y2="1296" x1="928" />
            <wire x2="928" y1="1296" y2="1424" x1="928" />
            <wire x2="928" y1="1424" y2="2000" x1="928" />
        </branch>
        <bustap x2="1024" y1="1424" y2="1424" x1="928" />
        <bustap x2="832" y1="2000" y2="2000" x1="928" />
        <branch name="Bcd2(9:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2000" type="branch" />
            <wire x2="816" y1="2000" y2="2000" x1="720" />
            <wire x2="832" y1="2000" y2="2000" x1="816" />
        </branch>
        <branch name="Bcd2(15:10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1424" type="branch" />
            <wire x2="1040" y1="1424" y2="1424" x1="1024" />
            <wire x2="1104" y1="1424" y2="1424" x1="1040" />
        </branch>
        <instance x="1248" y="1456" name="XLXI_86" orien="R180">
        </instance>
        <instance x="1152" y="1968" name="XLXI_76" orien="R0">
        </instance>
        <branch name="XLXN_607">
            <wire x2="272" y1="2064" y2="2160" x1="272" />
            <wire x2="1616" y1="2160" y2="2160" x1="272" />
            <wire x2="1616" y1="1872" y2="1872" x1="1536" />
            <wire x2="1616" y1="1872" y2="2160" x1="1616" />
        </branch>
        <branch name="XLXN_608">
            <wire x2="272" y1="2000" y2="2000" x1="256" />
            <wire x2="256" y1="2000" y2="2176" x1="256" />
            <wire x2="1632" y1="2176" y2="2176" x1="256" />
            <wire x2="1632" y1="1808" y2="1808" x1="1536" />
            <wire x2="1632" y1="1808" y2="2176" x1="1632" />
        </branch>
        <branch name="XLXN_632(7:0)">
            <wire x2="880" y1="1808" y2="1808" x1="720" />
            <wire x2="880" y1="1552" y2="1808" x1="880" />
            <wire x2="1152" y1="1552" y2="1552" x1="880" />
        </branch>
        <branch name="XLXN_633(7:0)">
            <wire x2="896" y1="1872" y2="1872" x1="720" />
            <wire x2="1152" y1="1616" y2="1616" x1="896" />
            <wire x2="896" y1="1616" y2="1872" x1="896" />
        </branch>
        <branch name="XLXN_634(7:0)">
            <wire x2="880" y1="624" y2="1376" x1="880" />
            <wire x2="1488" y1="1376" y2="1376" x1="880" />
            <wire x2="1488" y1="1376" y2="1504" x1="1488" />
            <wire x2="1552" y1="1504" y2="1504" x1="1488" />
            <wire x2="1552" y1="1504" y2="1936" x1="1552" />
            <wire x2="1072" y1="624" y2="624" x1="880" />
            <wire x2="1552" y1="1936" y2="1936" x1="1536" />
        </branch>
        <instance x="1136" y="1360" name="XLXI_62" orien="R0" />
        <iomarker fontsize="28" x="1584" y="1744" name="PWM_B2" orien="R0" />
        <iomarker fontsize="28" x="1584" y="1680" name="PWM_B1" orien="R0" />
        <iomarker fontsize="28" x="1584" y="1616" name="PWM_A2" orien="R0" />
        <iomarker fontsize="28" x="1584" y="1552" name="PWM_A1" orien="R0" />
        <branch name="XLXN_641(7:0)">
            <wire x2="896" y1="816" y2="1360" x1="896" />
            <wire x2="1504" y1="1360" y2="1360" x1="896" />
            <wire x2="1504" y1="1360" y2="1488" x1="1504" />
            <wire x2="1568" y1="1488" y2="1488" x1="1504" />
            <wire x2="1568" y1="1488" y2="2000" x1="1568" />
            <wire x2="1072" y1="816" y2="816" x1="896" />
            <wire x2="1568" y1="2000" y2="2000" x1="1536" />
        </branch>
        <branch name="Clk">
            <wire x2="1152" y1="1936" y2="1936" x1="1088" />
        </branch>
        <branch name="XLXN_644">
            <wire x2="912" y1="880" y2="880" x1="800" />
            <wire x2="1072" y1="880" y2="880" x1="912" />
            <wire x2="912" y1="880" y2="1744" x1="912" />
            <wire x2="1152" y1="1744" y2="1744" x1="912" />
        </branch>
        <branch name="EN_B">
            <wire x2="1584" y1="1472" y2="1488" x1="1584" />
            <wire x2="1632" y1="1488" y2="1488" x1="1584" />
        </branch>
        <instance x="1520" y="1472" name="XLXI_41" orien="R0" />
        <branch name="EN_A">
            <wire x2="1584" y1="1328" y2="1344" x1="1584" />
            <wire x2="1632" y1="1344" y2="1344" x1="1584" />
        </branch>
        <instance x="1520" y="1328" name="XLXI_52" orien="R0" />
        <iomarker fontsize="28" x="1632" y="1488" name="EN_B" orien="R0" />
        <iomarker fontsize="28" x="1632" y="1344" name="EN_A" orien="R0" />
        <instance x="272" y="1904" name="XLXI_95" orien="R0">
        </instance>
        <branch name="XLXN_658">
            <wire x2="864" y1="1552" y2="1552" x1="720" />
            <wire x2="864" y1="1232" y2="1552" x1="864" />
            <wire x2="1136" y1="1232" y2="1232" x1="864" />
        </branch>
        <branch name="XLXN_663">
            <wire x2="800" y1="1216" y2="1216" x1="592" />
            <wire x2="800" y1="1216" y2="1680" x1="800" />
            <wire x2="800" y1="1680" y2="1680" x1="720" />
        </branch>
        <branch name="XLXN_664">
            <wire x2="784" y1="1360" y2="1360" x1="592" />
            <wire x2="784" y1="1360" y2="1744" x1="784" />
            <wire x2="784" y1="1744" y2="1744" x1="720" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1296" name="ResetBt" orien="R180" />
        <branch name="XLXN_667">
            <wire x2="272" y1="1936" y2="1936" x1="240" />
            <wire x2="240" y1="1936" y2="2192" x1="240" />
            <wire x2="1136" y1="2192" y2="2192" x1="240" />
            <wire x2="256" y1="928" y2="1104" x1="256" />
            <wire x2="720" y1="1104" y2="1104" x1="256" />
            <wire x2="720" y1="1104" y2="1152" x1="720" />
            <wire x2="720" y1="1152" y2="1296" x1="720" />
            <wire x2="864" y1="1152" y2="1152" x1="720" />
            <wire x2="864" y1="1152" y2="1200" x1="864" />
            <wire x2="1440" y1="1200" y2="1200" x1="864" />
            <wire x2="1440" y1="1200" y2="1264" x1="1440" />
            <wire x2="720" y1="1152" y2="1152" x1="592" />
            <wire x2="720" y1="1296" y2="1296" x1="592" />
            <wire x2="864" y1="1200" y2="1200" x1="816" />
            <wire x2="816" y1="1200" y2="1456" x1="816" />
            <wire x2="944" y1="1456" y2="1456" x1="816" />
            <wire x2="944" y1="1456" y2="2000" x1="944" />
            <wire x2="1136" y1="2000" y2="2000" x1="944" />
            <wire x2="1152" y1="2000" y2="2000" x1="1136" />
            <wire x2="1136" y1="2000" y2="2192" x1="1136" />
            <wire x2="1072" y1="1024" y2="1024" x1="864" />
            <wire x2="864" y1="1024" y2="1152" x1="864" />
            <wire x2="1440" y1="1264" y2="1264" x1="1392" />
        </branch>
        <branch name="CalBt">
            <wire x2="864" y1="2112" y2="2112" x1="848" />
        </branch>
        <branch name="XLXN_656">
            <wire x2="800" y1="1936" y2="1936" x1="720" />
            <wire x2="800" y1="1936" y2="2048" x1="800" />
            <wire x2="864" y1="2048" y2="2048" x1="800" />
        </branch>
        <branch name="MISO">
            <wire x2="224" y1="1936" y2="1936" x1="208" />
            <wire x2="224" y1="1936" y2="2112" x1="224" />
            <wire x2="736" y1="2112" y2="2112" x1="224" />
            <wire x2="736" y1="1616" y2="1616" x1="720" />
            <wire x2="736" y1="1616" y2="2112" x1="736" />
        </branch>
        <iomarker fontsize="28" x="208" y="1936" name="MISO" orien="R180" />
        <iomarker fontsize="28" x="1088" y="1872" name="TiltRef" orien="R180" />
        <iomarker fontsize="28" x="1088" y="1936" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="1088" y="1808" name="PanRef" orien="R180" />
        <instance x="864" y="2176" name="XLXI_91" orien="R0" />
        <iomarker fontsize="28" x="848" y="2112" name="CalBt" orien="R180" />
        <branch name="XLXN_678">
            <wire x2="1120" y1="1680" y2="2080" x1="1120" />
            <wire x2="1152" y1="1680" y2="1680" x1="1120" />
        </branch>
    </sheet>
</drawing>