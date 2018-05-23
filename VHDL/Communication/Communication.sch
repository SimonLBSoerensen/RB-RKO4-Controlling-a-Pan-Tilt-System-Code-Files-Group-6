<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk" />
        <signal name="XLXN_5(9:0)" />
        <signal name="XLXN_7" />
        <signal name="MISO" />
        <signal name="SCLK" />
        <signal name="SS" />
        <signal name="MOSI" />
        <signal name="PCMMotor0(7:0)" />
        <signal name="PCMMotor1(7:0)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_22" />
        <signal name="Calibrate" />
        <signal name="Motor0(7:0)" />
        <signal name="Motor1(7:0)" />
        <signal name="CalPan" />
        <signal name="CalTilt" />
        <signal name="Data_Tran(9:0)" />
        <signal name="XLXN_34" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_42" />
        <signal name="MotorReset0" />
        <signal name="MotorReset1" />
        <signal name="Reset" />
        <signal name="ResetIn" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="MISO" />
        <port polarity="Input" name="SCLK" />
        <port polarity="Input" name="SS" />
        <port polarity="Input" name="MOSI" />
        <port polarity="BiDirectional" name="PCMMotor0(7:0)" />
        <port polarity="BiDirectional" name="PCMMotor1(7:0)" />
        <port polarity="Output" name="Calibrate" />
        <port polarity="Input" name="Motor0(7:0)" />
        <port polarity="Input" name="Motor1(7:0)" />
        <port polarity="Input" name="CalPan" />
        <port polarity="Input" name="CalTilt" />
        <port polarity="Output" name="Data_Tran(9:0)" />
        <port polarity="Output" name="MotorReset0" />
        <port polarity="Output" name="MotorReset1" />
        <port polarity="Output" name="Reset" />
        <port polarity="Input" name="ResetIn" />
        <blockdef name="RecMode">
            <timestamp>2018-5-17T6:52:31</timestamp>
            <line x2="496" y1="160" y2="160" x1="432" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="432" y="-108" height="24" />
            <line x2="496" y1="-96" y2="-96" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
            <line x2="496" y1="32" y2="32" x1="432" />
            <line x2="496" y1="96" y2="96" x1="432" />
            <rect width="368" x="64" y="-128" height="308" />
            <line x2="0" y1="96" y2="96" x1="64" />
        </blockdef>
        <blockdef name="SPISlave">
            <timestamp>2018-4-19T9:19:57</timestamp>
            <rect width="352" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="TraMode">
            <timestamp>2018-5-15T7:14:51</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="0" y1="128" y2="128" x1="64" />
            <line x2="0" y1="80" y2="80" x1="64" />
            <rect width="320" x="64" y="-192" height="344" />
            <line x2="448" y1="32" y2="32" x1="384" />
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
        <blockdef name="Toggler">
            <timestamp>2018-5-1T11:18:5</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="RecMode" name="XLXI_57">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_7" name="DataInta" />
            <blockpin signalname="XLXN_5(9:0)" name="Data_Rec(9:0)" />
            <blockpin signalname="PCMMotor0(7:0)" name="PCMMotor0(7:0)" />
            <blockpin signalname="PCMMotor1(7:0)" name="PCMMotor1(7:0)" />
            <blockpin signalname="Calibrate" name="Calibrate" />
            <blockpin signalname="XLXN_34" name="Reset0" />
            <blockpin signalname="XLXN_42" name="Reset1" />
            <blockpin signalname="ResetIn" name="Reset" />
        </block>
        <block symbolname="SPISlave" name="XLXI_39">
            <blockpin signalname="SCLK" name="SCLK" />
            <blockpin signalname="Clk" name="CLK" />
            <blockpin signalname="SS" name="SS" />
            <blockpin signalname="MOSI" name="MOSI" />
            <blockpin signalname="Data_Tran(9:0)" name="DATA_Tra(9:0)" />
            <blockpin signalname="MISO" name="MISO" />
            <blockpin signalname="XLXN_7" name="DATA_Inta" />
            <blockpin signalname="XLXN_5(9:0)" name="DATA_Rec(9:0)" />
        </block>
        <block symbolname="Toggler" name="XLXI_65">
            <blockpin signalname="XLXN_7" name="DBButton" />
            <blockpin signalname="XLXN_15" name="ToggleO" />
        </block>
        <block symbolname="TraMode" name="XLXI_58">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="CalPan" name="CalPan" />
            <blockpin signalname="CalTilt" name="CalTilt" />
            <blockpin signalname="XLXN_15" name="Mode" />
            <blockpin signalname="Motor1(7:0)" name="Motor0(7:0)" />
            <blockpin signalname="Motor0(7:0)" name="Motor1(7:0)" />
            <blockpin signalname="XLXN_22" name="Motor0Reset" />
            <blockpin signalname="XLXN_38" name="Motor1Reset" />
            <blockpin signalname="Data_Tran(9:0)" name="Data_Tran(9:0)" />
            <blockpin signalname="XLXN_37" name="Reset" />
        </block>
        <block symbolname="or2" name="XLXI_68">
            <blockpin signalname="XLXN_34" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_62">
            <blockpin signalname="XLXN_36" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="MotorReset0" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_63">
            <blockpin signalname="XLXN_36" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="MotorReset1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_69">
            <blockpin signalname="XLXN_42" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin signalname="Reset" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1328" y="1392" name="XLXI_57" orien="R0">
        </instance>
        <instance x="656" y="1328" name="XLXI_39" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="592" y1="928" y2="928" x1="560" />
            <wire x2="592" y1="928" y2="1104" x1="592" />
            <wire x2="656" y1="1104" y2="1104" x1="592" />
            <wire x2="1152" y1="928" y2="928" x1="592" />
            <wire x2="1296" y1="928" y2="928" x1="1152" />
            <wire x2="1296" y1="928" y2="1360" x1="1296" />
            <wire x2="1328" y1="1360" y2="1360" x1="1296" />
            <wire x2="1152" y1="736" y2="736" x1="1104" />
            <wire x2="1152" y1="736" y2="928" x1="1152" />
        </branch>
        <branch name="XLXN_5(9:0)">
            <wire x2="1328" y1="1296" y2="1296" x1="1136" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1264" y1="1168" y2="1168" x1="1136" />
            <wire x2="1264" y1="1168" y2="1424" x1="1264" />
            <wire x2="1328" y1="1424" y2="1424" x1="1264" />
            <wire x2="1712" y1="1168" y2="1168" x1="1264" />
            <wire x2="1712" y1="672" y2="672" x1="1648" />
            <wire x2="1712" y1="672" y2="1168" x1="1712" />
        </branch>
        <branch name="MISO">
            <wire x2="1168" y1="1040" y2="1040" x1="1136" />
        </branch>
        <branch name="SCLK">
            <wire x2="656" y1="1040" y2="1040" x1="560" />
        </branch>
        <branch name="SS">
            <wire x2="656" y1="1168" y2="1168" x1="560" />
        </branch>
        <branch name="MOSI">
            <wire x2="656" y1="1232" y2="1232" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1040" name="SCLK" orien="R180" />
        <iomarker fontsize="28" x="560" y="1232" name="MOSI" orien="R180" />
        <branch name="PCMMotor0(7:0)">
            <wire x2="2000" y1="1296" y2="1296" x1="1824" />
        </branch>
        <branch name="PCMMotor1(7:0)">
            <wire x2="2000" y1="1360" y2="1360" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1296" name="PCMMotor0(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2000" y="1360" name="PCMMotor1(7:0)" orien="R0" />
        <iomarker fontsize="28" x="560" y="928" name="Clk" orien="R180" />
        <branch name="XLXN_15">
            <wire x2="1264" y1="672" y2="672" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="560" y="1168" name="SS" orien="R180" />
        <branch name="Calibrate">
            <wire x2="1856" y1="1552" y2="1552" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1552" name="Calibrate" orien="R0" />
        <branch name="Motor0(7:0)">
            <wire x2="1136" y1="544" y2="544" x1="1104" />
        </branch>
        <branch name="Motor1(7:0)">
            <wire x2="1136" y1="608" y2="608" x1="1104" />
        </branch>
        <instance x="1104" y="704" name="XLXI_58" orien="M0">
        </instance>
        <iomarker fontsize="28" x="1136" y="544" name="Motor0(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1136" y="608" name="Motor1(7:0)" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="592" y1="672" y2="896" x1="592" />
            <wire x2="2176" y1="896" y2="896" x1="592" />
            <wire x2="2176" y1="896" y2="976" x1="2176" />
            <wire x2="2208" y1="976" y2="976" x1="2176" />
            <wire x2="656" y1="672" y2="672" x1="592" />
        </branch>
        <instance x="1648" y="640" name="XLXI_65" orien="R180">
        </instance>
        <branch name="CalPan">
            <wire x2="1184" y1="784" y2="784" x1="1104" />
        </branch>
        <branch name="CalTilt">
            <wire x2="1184" y1="832" y2="832" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1184" y="784" name="CalPan" orien="R0" />
        <iomarker fontsize="28" x="1184" y="832" name="CalTilt" orien="R0" />
        <iomarker fontsize="28" x="1168" y="1040" name="MISO" orien="R0" />
        <branch name="Data_Tran(9:0)">
            <wire x2="624" y1="544" y2="1296" x1="624" />
            <wire x2="656" y1="1296" y2="1296" x1="624" />
            <wire x2="624" y1="1296" y2="1376" x1="624" />
            <wire x2="720" y1="1376" y2="1376" x1="624" />
            <wire x2="656" y1="544" y2="544" x1="624" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="656" y1="608" y2="608" x1="608" />
            <wire x2="608" y1="608" y2="880" x1="608" />
            <wire x2="1728" y1="880" y2="880" x1="608" />
            <wire x2="1728" y1="880" y2="1136" x1="1728" />
            <wire x2="2208" y1="1136" y2="1136" x1="1728" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1904" y1="1488" y2="1488" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="720" y="1376" name="Data_Tran(9:0)" orien="R0" />
        <instance x="1904" y="1296" name="XLXI_68" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="1840" y1="1424" y2="1424" x1="1824" />
            <wire x2="1904" y1="1232" y2="1232" x1="1840" />
            <wire x2="1840" y1="1232" y2="1424" x1="1840" />
        </branch>
        <instance x="2208" y="1104" name="XLXI_62" orien="R0" />
        <branch name="MotorReset0">
            <wire x2="2496" y1="1008" y2="1008" x1="2464" />
        </branch>
        <branch name="MotorReset1">
            <wire x2="2496" y1="1168" y2="1168" x1="2464" />
        </branch>
        <instance x="2208" y="1264" name="XLXI_63" orien="R0" />
        <iomarker fontsize="28" x="2496" y="1008" name="MotorReset0" orien="R0" />
        <iomarker fontsize="28" x="2496" y="1168" name="MotorReset1" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="2176" y1="1200" y2="1200" x1="2160" />
            <wire x2="2208" y1="1200" y2="1200" x1="2176" />
            <wire x2="2208" y1="1040" y2="1040" x1="2176" />
            <wire x2="2176" y1="1040" y2="1200" x1="2176" />
        </branch>
        <branch name="Reset">
            <wire x2="2176" y1="1456" y2="1456" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2176" y="1456" name="Reset" orien="R0" />
        <instance x="1904" y="1552" name="XLXI_69" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="640" y1="736" y2="912" x1="640" />
            <wire x2="1792" y1="912" y2="912" x1="640" />
            <wire x2="1792" y1="912" y2="1168" x1="1792" />
            <wire x2="1872" y1="1168" y2="1168" x1="1792" />
            <wire x2="1904" y1="1168" y2="1168" x1="1872" />
            <wire x2="1872" y1="1168" y2="1424" x1="1872" />
            <wire x2="1904" y1="1424" y2="1424" x1="1872" />
            <wire x2="656" y1="736" y2="736" x1="640" />
        </branch>
        <branch name="ResetIn">
            <wire x2="1328" y1="1488" y2="1488" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1488" name="ResetIn" orien="R180" />
    </sheet>
</drawing>