<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PCM0Out(7:0)" />
        <signal name="PCM1Out(7:0)" />
        <signal name="XLXN_3(7:0)" />
        <signal name="CalTilt" />
        <signal name="XLXN_5(7:0)" />
        <signal name="CalPan" />
        <signal name="PCM1(7:0)" />
        <signal name="PCM0(7:0)" />
        <signal name="Calibrate" />
        <signal name="Clk" />
        <signal name="PanReference" />
        <signal name="PanPulse" />
        <signal name="TiltReference" />
        <signal name="PWM_A1" />
        <signal name="PWM_A2" />
        <signal name="PWM_B1" />
        <signal name="PWM_B2" />
        <signal name="Reset" />
        <port polarity="Output" name="PCM0Out(7:0)" />
        <port polarity="Output" name="PCM1Out(7:0)" />
        <port polarity="Output" name="CalTilt" />
        <port polarity="Output" name="CalPan" />
        <port polarity="Input" name="PCM1(7:0)" />
        <port polarity="Input" name="PCM0(7:0)" />
        <port polarity="Input" name="Calibrate" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="PanReference" />
        <port polarity="Input" name="PanPulse" />
        <port polarity="Input" name="TiltReference" />
        <port polarity="Output" name="PWM_A1" />
        <port polarity="Output" name="PWM_A2" />
        <port polarity="Output" name="PWM_B1" />
        <port polarity="Output" name="PWM_B2" />
        <port polarity="Input" name="Reset" />
        <blockdef name="ModPWM">
            <timestamp>2018-4-17T9:34:5</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PanCalibration">
            <timestamp>2018-5-17T6:35:3</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-256" height="304" />
        </blockdef>
        <blockdef name="TiltCalibration">
            <timestamp>2018-5-17T6:35:11</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-192" height="244" />
        </blockdef>
        <blockdef name="Mux8x2">
            <timestamp>2018-4-16T14:7:30</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="TiltCalibration" name="XLXI_40">
            <blockpin signalname="Calibrate" name="Enable" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="TiltReference" name="TiltReference" />
            <blockpin signalname="CalTilt" name="Calibrate" />
            <blockpin signalname="XLXN_3(7:0)" name="PCM(7:0)" />
            <blockpin signalname="Reset" name="Reset" />
        </block>
        <block symbolname="PanCalibration" name="XLXI_39">
            <blockpin signalname="Calibrate" name="Enable" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="PanReference" name="PanReference" />
            <blockpin signalname="PanPulse" name="PanEncode" />
            <blockpin signalname="CalPan" name="Calibrate" />
            <blockpin signalname="XLXN_5(7:0)" name="PCM(7:0)" />
            <blockpin signalname="Reset" name="Reset" />
        </block>
        <block symbolname="Mux8x2" name="XLXI_48">
            <blockpin signalname="CalTilt" name="S" />
            <blockpin signalname="PCM1(7:0)" name="I0(7:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="I1(7:0)" />
            <blockpin signalname="PCM1Out(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="Mux8x2" name="XLXI_47">
            <blockpin signalname="CalPan" name="S" />
            <blockpin signalname="PCM0(7:0)" name="I0(7:0)" />
            <blockpin signalname="XLXN_5(7:0)" name="I1(7:0)" />
            <blockpin signalname="PCM0Out(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="ModPWM" name="XLXI_38">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="PCM1Out(7:0)" name="PCM(7:0)" />
            <blockpin signalname="PWM_B1" name="PWM_A" />
            <blockpin signalname="PWM_B2" name="PWM_B" />
        </block>
        <block symbolname="ModPWM" name="XLXI_37">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="PCM0Out(7:0)" name="PCM(7:0)" />
            <blockpin signalname="PWM_A1" name="PWM_A" />
            <blockpin signalname="PWM_A2" name="PWM_B" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="544" y="1024" name="XLXI_39" orien="R0">
        </instance>
        <instance x="544" y="1408" name="XLXI_40" orien="R0">
        </instance>
        <instance x="1104" y="832" name="XLXI_47" orien="R0">
        </instance>
        <instance x="1744" y="1152" name="XLXI_38" orien="R0">
        </instance>
        <instance x="1744" y="704" name="XLXI_37" orien="R0">
        </instance>
        <branch name="PCM0Out(7:0)">
            <wire x2="1552" y1="672" y2="672" x1="1488" />
            <wire x2="1744" y1="672" y2="672" x1="1552" />
            <wire x2="1552" y1="672" y2="816" x1="1552" />
            <wire x2="2160" y1="816" y2="816" x1="1552" />
        </branch>
        <branch name="PCM1Out(7:0)">
            <wire x2="1552" y1="1120" y2="1120" x1="1488" />
            <wire x2="1744" y1="1120" y2="1120" x1="1552" />
            <wire x2="1552" y1="1120" y2="1216" x1="1552" />
            <wire x2="2160" y1="1216" y2="1216" x1="1552" />
        </branch>
        <branch name="XLXN_3(7:0)">
            <wire x2="1104" y1="1248" y2="1248" x1="928" />
        </branch>
        <branch name="CalTilt">
            <wire x2="1008" y1="1312" y2="1312" x1="928" />
            <wire x2="1008" y1="992" y2="1120" x1="1008" />
            <wire x2="1008" y1="1120" y2="1312" x1="1008" />
            <wire x2="1104" y1="1120" y2="1120" x1="1008" />
            <wire x2="1248" y1="992" y2="992" x1="1008" />
        </branch>
        <branch name="XLXN_5(7:0)">
            <wire x2="1104" y1="800" y2="800" x1="928" />
        </branch>
        <branch name="CalPan">
            <wire x2="1008" y1="864" y2="864" x1="928" />
            <wire x2="1008" y1="864" y2="944" x1="1008" />
            <wire x2="1248" y1="944" y2="944" x1="1008" />
            <wire x2="1008" y1="672" y2="864" x1="1008" />
            <wire x2="1104" y1="672" y2="672" x1="1008" />
        </branch>
        <branch name="PCM1(7:0)">
            <wire x2="1088" y1="1136" y2="1136" x1="384" />
            <wire x2="1088" y1="1136" y2="1184" x1="1088" />
            <wire x2="1104" y1="1184" y2="1184" x1="1088" />
        </branch>
        <branch name="PCM0(7:0)">
            <wire x2="1088" y1="640" y2="640" x1="400" />
            <wire x2="1088" y1="640" y2="736" x1="1088" />
            <wire x2="1104" y1="736" y2="736" x1="1088" />
        </branch>
        <branch name="Calibrate">
            <wire x2="512" y1="1248" y2="1248" x1="384" />
            <wire x2="544" y1="1248" y2="1248" x1="512" />
            <wire x2="544" y1="800" y2="800" x1="512" />
            <wire x2="512" y1="800" y2="1248" x1="512" />
        </branch>
        <branch name="Clk">
            <wire x2="496" y1="720" y2="720" x1="400" />
            <wire x2="496" y1="720" y2="864" x1="496" />
            <wire x2="496" y1="864" y2="1312" x1="496" />
            <wire x2="544" y1="1312" y2="1312" x1="496" />
            <wire x2="544" y1="864" y2="864" x1="496" />
            <wire x2="1728" y1="576" y2="576" x1="496" />
            <wire x2="1728" y1="576" y2="608" x1="1728" />
            <wire x2="1744" y1="608" y2="608" x1="1728" />
            <wire x2="1728" y1="608" y2="1056" x1="1728" />
            <wire x2="1744" y1="1056" y2="1056" x1="1728" />
            <wire x2="496" y1="576" y2="720" x1="496" />
        </branch>
        <iomarker fontsize="28" x="400" y="720" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="400" y="640" name="PCM0(7:0)" orien="R180" />
        <branch name="PanReference">
            <wire x2="416" y1="928" y2="928" x1="400" />
            <wire x2="544" y1="928" y2="928" x1="416" />
        </branch>
        <branch name="PanPulse">
            <wire x2="448" y1="992" y2="992" x1="400" />
            <wire x2="544" y1="992" y2="992" x1="448" />
        </branch>
        <branch name="TiltReference">
            <wire x2="544" y1="1376" y2="1376" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="992" name="PanPulse" orien="R180" />
        <iomarker fontsize="28" x="400" y="928" name="PanReference" orien="R180" />
        <iomarker fontsize="28" x="400" y="1376" name="TiltReference" orien="R180" />
        <branch name="PWM_A1">
            <wire x2="2160" y1="608" y2="608" x1="2128" />
        </branch>
        <branch name="PWM_A2">
            <wire x2="2160" y1="672" y2="672" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="608" name="PWM_A1" orien="R0" />
        <iomarker fontsize="28" x="2160" y="672" name="PWM_A2" orien="R0" />
        <branch name="PWM_B1">
            <wire x2="2144" y1="1056" y2="1056" x1="2128" />
            <wire x2="2160" y1="1056" y2="1056" x1="2144" />
        </branch>
        <branch name="PWM_B2">
            <wire x2="2144" y1="1120" y2="1120" x1="2128" />
            <wire x2="2160" y1="1120" y2="1120" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1056" name="PWM_B1" orien="R0" />
        <iomarker fontsize="28" x="2160" y="1120" name="PWM_B2" orien="R0" />
        <iomarker fontsize="28" x="384" y="1248" name="Calibrate" orien="R180" />
        <iomarker fontsize="28" x="1248" y="944" name="CalPan" orien="R0" />
        <iomarker fontsize="28" x="1248" y="992" name="CalTilt" orien="R0" />
        <instance x="1104" y="1280" name="XLXI_48" orien="R0">
        </instance>
        <iomarker fontsize="28" x="384" y="1136" name="PCM1(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2160" y="816" name="PCM0Out(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2160" y="1216" name="PCM1Out(7:0)" orien="R0" />
        <branch name="Reset">
            <wire x2="528" y1="1440" y2="1440" x1="400" />
            <wire x2="544" y1="1440" y2="1440" x1="528" />
            <wire x2="528" y1="1056" y2="1440" x1="528" />
            <wire x2="544" y1="1056" y2="1056" x1="528" />
        </branch>
        <iomarker fontsize="28" x="400" y="1440" name="Reset" orien="R180" />
    </sheet>
</drawing>