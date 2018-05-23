<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk" />
        <signal name="XLXN_362" />
        <signal name="XLXN_376" />
        <signal name="CountPulse1" />
        <signal name="Dir1" />
        <signal name="CountMotor1(7:0)" />
        <signal name="XLXN_352" />
        <signal name="XLXN_351" />
        <signal name="ResetSC1" />
        <signal name="EncodeB1" />
        <signal name="EncodeA1" />
        <signal name="EncodeA0" />
        <signal name="EncodeB0" />
        <signal name="ResetSC0" />
        <signal name="XLXN_372" />
        <signal name="XLXN_373" />
        <signal name="CountMotor0(7:0)" />
        <signal name="Dir0" />
        <signal name="CountPluse0" />
        <signal name="Error" />
        <signal name="XLXN_326" />
        <signal name="ResetError" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="CountPulse1" />
        <port polarity="Output" name="Dir1" />
        <port polarity="Output" name="CountMotor1(7:0)" />
        <port polarity="Input" name="ResetSC1" />
        <port polarity="Input" name="EncodeB1" />
        <port polarity="Input" name="EncodeA1" />
        <port polarity="Input" name="EncodeA0" />
        <port polarity="Input" name="EncodeB0" />
        <port polarity="Input" name="ResetSC0" />
        <port polarity="Output" name="CountMotor0(7:0)" />
        <port polarity="Output" name="Dir0" />
        <port polarity="Output" name="CountPluse0" />
        <port polarity="Output" name="Error" />
        <port polarity="Input" name="ResetError" />
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
        <blockdef name="ErrorMemory">
            <timestamp>2018-4-15T13:50:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="EncoderFilter">
            <timestamp>2018-4-15T13:50:42</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="SCount">
            <timestamp>2018-4-16T15:53:14</timestamp>
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="304" x="64" y="-192" height="184" />
        </blockdef>
        <blockdef name="Dir_V3">
            <timestamp>2018-4-15T13:50:47</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="SCount" name="XLXI_59">
            <blockpin signalname="CountPulse1" name="CountPulse" />
            <blockpin signalname="Dir1" name="Dir" />
            <blockpin signalname="ResetSC1" name="Reset" />
            <blockpin signalname="CountMotor1(7:0)" name="CountOut(7:0)" />
        </block>
        <block symbolname="Dir_V3" name="XLXI_62">
            <blockpin signalname="XLXN_351" name="EncodeA" />
            <blockpin signalname="XLXN_352" name="EncodeB" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="CountPulse1" name="CountPulse" />
            <blockpin signalname="Dir1" name="Dir" />
            <blockpin signalname="XLXN_362" name="Error" />
        </block>
        <block symbolname="EncoderFilter" name="XLXI_58">
            <blockpin signalname="EncodeA1" name="EncodeA" />
            <blockpin signalname="EncodeB1" name="EncodeB" />
            <blockpin signalname="XLXN_351" name="FEncodeA" />
            <blockpin signalname="XLXN_352" name="FEncodeB" />
            <blockpin signalname="Clk" name="Clk" />
        </block>
        <block symbolname="EncoderFilter" name="XLXI_66">
            <blockpin signalname="EncodeA0" name="EncodeA" />
            <blockpin signalname="EncodeB0" name="EncodeB" />
            <blockpin signalname="XLXN_372" name="FEncodeA" />
            <blockpin signalname="XLXN_373" name="FEncodeB" />
            <blockpin signalname="Clk" name="Clk" />
        </block>
        <block symbolname="Dir_V3" name="XLXI_67">
            <blockpin signalname="XLXN_372" name="EncodeA" />
            <blockpin signalname="XLXN_373" name="EncodeB" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="CountPluse0" name="CountPulse" />
            <blockpin signalname="Dir0" name="Dir" />
            <blockpin signalname="XLXN_376" name="Error" />
        </block>
        <block symbolname="SCount" name="XLXI_68">
            <blockpin signalname="CountPluse0" name="CountPulse" />
            <blockpin signalname="Dir0" name="Dir" />
            <blockpin signalname="ResetSC0" name="Reset" />
            <blockpin signalname="CountMotor0(7:0)" name="CountOut(7:0)" />
        </block>
        <block symbolname="or2" name="XLXI_45">
            <blockpin signalname="XLXN_362" name="I0" />
            <blockpin signalname="XLXN_376" name="I1" />
            <blockpin signalname="XLXN_326" name="O" />
        </block>
        <block symbolname="ErrorMemory" name="XLXI_52">
            <blockpin signalname="XLXN_326" name="ErrorIn" />
            <blockpin signalname="ResetError" name="Reset" />
            <blockpin signalname="Error" name="ErrorOut" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Clk">
            <wire x2="320" y1="1072" y2="1072" x1="176" />
            <wire x2="320" y1="1072" y2="1536" x1="320" />
            <wire x2="432" y1="1536" y2="1536" x1="320" />
            <wire x2="944" y1="1536" y2="1536" x1="432" />
            <wire x2="480" y1="832" y2="832" x1="320" />
            <wire x2="944" y1="832" y2="832" x1="480" />
            <wire x2="320" y1="832" y2="1072" x1="320" />
            <wire x2="496" y1="1424" y2="1424" x1="432" />
            <wire x2="432" y1="1424" y2="1536" x1="432" />
            <wire x2="496" y1="704" y2="704" x1="480" />
            <wire x2="480" y1="704" y2="832" x1="480" />
            <wire x2="960" y1="704" y2="704" x1="944" />
            <wire x2="944" y1="704" y2="832" x1="944" />
            <wire x2="960" y1="1424" y2="1424" x1="944" />
            <wire x2="944" y1="1424" y2="1536" x1="944" />
        </branch>
        <instance x="1488" y="1456" name="XLXI_59" orien="R0">
        </instance>
        <instance x="960" y="1456" name="XLXI_62" orien="R0">
        </instance>
        <instance x="496" y="1392" name="XLXI_58" orien="R0">
        </instance>
        <branch name="CountPulse1">
            <wire x2="1456" y1="1296" y2="1296" x1="1344" />
            <wire x2="1488" y1="1296" y2="1296" x1="1456" />
            <wire x2="1456" y1="1296" y2="1600" x1="1456" />
            <wire x2="1792" y1="1600" y2="1600" x1="1456" />
        </branch>
        <branch name="Dir1">
            <wire x2="1424" y1="1360" y2="1360" x1="1344" />
            <wire x2="1488" y1="1360" y2="1360" x1="1424" />
            <wire x2="1424" y1="1360" y2="1520" x1="1424" />
            <wire x2="1792" y1="1520" y2="1520" x1="1424" />
        </branch>
        <branch name="CountMotor1(7:0)">
            <wire x2="1936" y1="1296" y2="1296" x1="1920" />
            <wire x2="2048" y1="1296" y2="1296" x1="1936" />
        </branch>
        <branch name="XLXN_352">
            <wire x2="960" y1="1360" y2="1360" x1="880" />
        </branch>
        <branch name="XLXN_351">
            <wire x2="960" y1="1296" y2="1296" x1="880" />
        </branch>
        <branch name="ResetSC1">
            <wire x2="1408" y1="1488" y2="1488" x1="256" />
            <wire x2="1408" y1="1424" y2="1488" x1="1408" />
            <wire x2="1488" y1="1424" y2="1424" x1="1408" />
        </branch>
        <branch name="EncodeB1">
            <wire x2="496" y1="1360" y2="1360" x1="256" />
        </branch>
        <branch name="EncodeA1">
            <wire x2="496" y1="1296" y2="1296" x1="256" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1600" name="CountPulse1" orien="R0" />
        <iomarker fontsize="28" x="1792" y="1520" name="Dir1" orien="R0" />
        <iomarker fontsize="28" x="256" y="1488" name="ResetSC1" orien="R180" />
        <iomarker fontsize="28" x="256" y="1296" name="EncodeA1" orien="R180" />
        <iomarker fontsize="28" x="256" y="1360" name="EncodeB1" orien="R180" />
        <branch name="EncodeA0">
            <wire x2="480" y1="576" y2="576" x1="256" />
            <wire x2="496" y1="576" y2="576" x1="480" />
        </branch>
        <branch name="EncodeB0">
            <wire x2="480" y1="640" y2="640" x1="256" />
            <wire x2="496" y1="640" y2="640" x1="480" />
        </branch>
        <branch name="ResetSC0">
            <wire x2="1472" y1="768" y2="768" x1="256" />
            <wire x2="1488" y1="704" y2="704" x1="1472" />
            <wire x2="1472" y1="704" y2="768" x1="1472" />
        </branch>
        <instance x="496" y="672" name="XLXI_66" orien="R0">
        </instance>
        <instance x="960" y="736" name="XLXI_67" orien="R0">
        </instance>
        <instance x="1488" y="736" name="XLXI_68" orien="R0">
        </instance>
        <branch name="XLXN_372">
            <wire x2="960" y1="576" y2="576" x1="880" />
        </branch>
        <branch name="XLXN_373">
            <wire x2="960" y1="640" y2="640" x1="880" />
        </branch>
        <branch name="CountMotor0(7:0)">
            <wire x2="2048" y1="576" y2="576" x1="1920" />
        </branch>
        <branch name="Dir0">
            <wire x2="1424" y1="640" y2="640" x1="1344" />
            <wire x2="1488" y1="640" y2="640" x1="1424" />
            <wire x2="1424" y1="640" y2="800" x1="1424" />
            <wire x2="1568" y1="800" y2="800" x1="1424" />
            <wire x2="1760" y1="800" y2="800" x1="1568" />
        </branch>
        <branch name="CountPluse0">
            <wire x2="1440" y1="576" y2="576" x1="1344" />
            <wire x2="1488" y1="576" y2="576" x1="1440" />
            <wire x2="1440" y1="576" y2="880" x1="1440" />
            <wire x2="1568" y1="880" y2="880" x1="1440" />
            <wire x2="1760" y1="880" y2="880" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="2048" y="576" name="CountMotor0(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1760" y="880" name="CountPluse0" orien="R0" />
        <iomarker fontsize="28" x="1760" y="800" name="Dir0" orien="R0" />
        <iomarker fontsize="28" x="256" y="768" name="ResetSC0" orien="R180" />
        <iomarker fontsize="28" x="256" y="640" name="EncodeB0" orien="R180" />
        <iomarker fontsize="28" x="256" y="576" name="EncodeA0" orien="R180" />
        <iomarker fontsize="28" x="176" y="1072" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="2048" y="1296" name="CountMotor1(7:0)" orien="R0" />
        <branch name="Error">
            <wire x2="2144" y1="1040" y2="1040" x1="2128" />
        </branch>
        <instance x="1376" y="1136" name="XLXI_45" orien="R0" />
        <branch name="XLXN_326">
            <wire x2="1744" y1="1040" y2="1040" x1="1632" />
        </branch>
        <branch name="ResetError">
            <wire x2="1744" y1="1104" y2="1104" x1="1728" />
        </branch>
        <branch name="XLXN_376">
            <wire x2="1360" y1="704" y2="704" x1="1344" />
            <wire x2="1360" y1="704" y2="1008" x1="1360" />
            <wire x2="1376" y1="1008" y2="1008" x1="1360" />
        </branch>
        <branch name="XLXN_362">
            <wire x2="1360" y1="1424" y2="1424" x1="1344" />
            <wire x2="1376" y1="1072" y2="1072" x1="1360" />
            <wire x2="1360" y1="1072" y2="1424" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1104" name="ResetError" orien="R180" />
        <instance x="1744" y="1136" name="XLXI_52" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2144" y="1040" name="Error" orien="R0" />
    </sheet>
</drawing>