<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk" />
        <signal name="XLXN_6" />
        <signal name="XLXN_11" />
        <signal name="XLXN_14" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="Bcd0(3:0)" />
        <signal name="Bcd1(3:0)" />
        <signal name="Bcd2(3:0)" />
        <signal name="Bcd3(3:0)" />
        <signal name="ModOut" />
        <signal name="Din(15:0)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="Bcd0(3:0)" />
        <port polarity="Output" name="Bcd1(3:0)" />
        <port polarity="Output" name="Bcd2(3:0)" />
        <port polarity="Output" name="Bcd3(3:0)" />
        <port polarity="Output" name="ModOut" />
        <port polarity="Input" name="Din(15:0)" />
        <blockdef name="BcdDigit">
            <timestamp>2018-4-10T7:55:0</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Binary">
            <timestamp>2018-4-10T7:51:34</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="AutoLoadSignal">
            <timestamp>2018-4-11T12:20:19</timestamp>
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="120" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
        </blockdef>
        <block symbolname="BcdDigit" name="XLXI_1">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_11" name="Init" />
            <blockpin signalname="XLXN_14" name="DoneIn" />
            <blockpin signalname="XLXN_23" name="ModIn" />
            <blockpin signalname="Bcd0(3:0)" name="Q(3:0)" />
            <blockpin signalname="XLXN_20" name="ModOut" />
        </block>
        <block symbolname="Binary" name="XLXI_2">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_6" name="Load" />
            <blockpin signalname="Din(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_23" name="ShiftOut" />
            <blockpin signalname="XLXN_11" name="InitOut" />
            <blockpin signalname="XLXN_14" name="Done" />
        </block>
        <block symbolname="AutoLoadSignal" name="XLXI_3">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_6" name="LoadO" />
            <blockpin signalname="Din(15:0)" name="Din(15:0)" />
        </block>
        <block symbolname="BcdDigit" name="XLXI_4">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_11" name="Init" />
            <blockpin signalname="XLXN_14" name="DoneIn" />
            <blockpin signalname="XLXN_20" name="ModIn" />
            <blockpin signalname="Bcd1(3:0)" name="Q(3:0)" />
            <blockpin signalname="XLXN_22" name="ModOut" />
        </block>
        <block symbolname="BcdDigit" name="XLXI_5">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_11" name="Init" />
            <blockpin signalname="XLXN_14" name="DoneIn" />
            <blockpin signalname="XLXN_22" name="ModIn" />
            <blockpin signalname="Bcd2(3:0)" name="Q(3:0)" />
            <blockpin signalname="XLXN_21" name="ModOut" />
        </block>
        <block symbolname="BcdDigit" name="XLXI_6">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_11" name="Init" />
            <blockpin signalname="XLXN_14" name="DoneIn" />
            <blockpin signalname="XLXN_21" name="ModIn" />
            <blockpin signalname="Bcd3(3:0)" name="Q(3:0)" />
            <blockpin signalname="ModOut" name="ModOut" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="352" y="1248" name="XLXI_3" orien="R0">
        </instance>
        <instance x="800" y="1120" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1424" y="1184" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1424" y="1584" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1424" y="1968" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1440" y="2352" name="XLXI_6" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="304" y1="1088" y2="1088" x1="224" />
            <wire x2="352" y1="1088" y2="1088" x1="304" />
            <wire x2="304" y1="816" y2="1088" x1="304" />
            <wire x2="768" y1="816" y2="816" x1="304" />
            <wire x2="1312" y1="816" y2="816" x1="768" />
            <wire x2="1312" y1="816" y2="960" x1="1312" />
            <wire x2="1360" y1="960" y2="960" x1="1312" />
            <wire x2="1424" y1="960" y2="960" x1="1360" />
            <wire x2="1360" y1="960" y2="1360" x1="1360" />
            <wire x2="1424" y1="1360" y2="1360" x1="1360" />
            <wire x2="1360" y1="1360" y2="1744" x1="1360" />
            <wire x2="1424" y1="1744" y2="1744" x1="1360" />
            <wire x2="1360" y1="1744" y2="2128" x1="1360" />
            <wire x2="1440" y1="2128" y2="2128" x1="1360" />
            <wire x2="768" y1="816" y2="960" x1="768" />
            <wire x2="800" y1="960" y2="960" x1="768" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="800" y1="1024" y2="1024" x1="736" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1408" y1="1024" y2="1024" x1="1184" />
            <wire x2="1424" y1="1024" y2="1024" x1="1408" />
            <wire x2="1408" y1="1024" y2="1424" x1="1408" />
            <wire x2="1424" y1="1424" y2="1424" x1="1408" />
            <wire x2="1408" y1="1424" y2="1808" x1="1408" />
            <wire x2="1424" y1="1808" y2="1808" x1="1408" />
            <wire x2="1408" y1="1808" y2="2192" x1="1408" />
            <wire x2="1440" y1="2192" y2="2192" x1="1408" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1392" y1="1088" y2="1088" x1="1184" />
            <wire x2="1424" y1="1088" y2="1088" x1="1392" />
            <wire x2="1392" y1="1088" y2="1488" x1="1392" />
            <wire x2="1424" y1="1488" y2="1488" x1="1392" />
            <wire x2="1392" y1="1488" y2="1872" x1="1392" />
            <wire x2="1424" y1="1872" y2="1872" x1="1392" />
            <wire x2="1392" y1="1872" y2="2256" x1="1392" />
            <wire x2="1440" y1="2256" y2="2256" x1="1392" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1888" y1="1248" y2="1248" x1="1376" />
            <wire x2="1376" y1="1248" y2="1552" x1="1376" />
            <wire x2="1424" y1="1552" y2="1552" x1="1376" />
            <wire x2="1888" y1="1152" y2="1152" x1="1808" />
            <wire x2="1888" y1="1152" y2="1248" x1="1888" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1888" y1="2016" y2="2016" x1="1376" />
            <wire x2="1376" y1="2016" y2="2320" x1="1376" />
            <wire x2="1440" y1="2320" y2="2320" x1="1376" />
            <wire x2="1888" y1="1936" y2="1936" x1="1808" />
            <wire x2="1888" y1="1936" y2="2016" x1="1888" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1872" y1="1632" y2="1632" x1="1376" />
            <wire x2="1376" y1="1632" y2="1936" x1="1376" />
            <wire x2="1424" y1="1936" y2="1936" x1="1376" />
            <wire x2="1872" y1="1552" y2="1552" x1="1808" />
            <wire x2="1872" y1="1552" y2="1632" x1="1872" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1296" y1="960" y2="960" x1="1184" />
            <wire x2="1296" y1="960" y2="1152" x1="1296" />
            <wire x2="1424" y1="1152" y2="1152" x1="1296" />
        </branch>
        <branch name="Bcd0(3:0)">
            <wire x2="1856" y1="960" y2="960" x1="1808" />
        </branch>
        <branch name="Bcd1(3:0)">
            <wire x2="1856" y1="1360" y2="1360" x1="1808" />
        </branch>
        <branch name="Bcd2(3:0)">
            <wire x2="1856" y1="1744" y2="1744" x1="1808" />
        </branch>
        <branch name="Bcd3(3:0)">
            <wire x2="1856" y1="2128" y2="2128" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="2128" name="Bcd3(3:0)" orien="R0" />
        <branch name="ModOut">
            <wire x2="1856" y1="2320" y2="2320" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="2320" name="ModOut" orien="R0" />
        <iomarker fontsize="28" x="224" y="1088" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="1856" y="1744" name="Bcd2(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1856" y="1360" name="Bcd1(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1856" y="960" name="Bcd0(3:0)" orien="R0" />
        <iomarker fontsize="28" x="208" y="1024" name="Din(15:0)" orien="R180" />
        <branch name="Din(15:0)">
            <wire x2="320" y1="1024" y2="1024" x1="208" />
            <wire x2="352" y1="1024" y2="1024" x1="320" />
            <wire x2="320" y1="1024" y2="1152" x1="320" />
            <wire x2="736" y1="1152" y2="1152" x1="320" />
            <wire x2="768" y1="1152" y2="1152" x1="736" />
            <wire x2="768" y1="1088" y2="1152" x1="768" />
            <wire x2="800" y1="1088" y2="1088" x1="768" />
        </branch>
    </sheet>
</drawing>