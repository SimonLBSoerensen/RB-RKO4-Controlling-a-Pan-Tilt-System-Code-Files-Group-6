<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Bcd(15:0)" />
        <signal name="Bcd(3:0)" />
        <signal name="Bcd(7:4)" />
        <signal name="Bcd(11:8)" />
        <signal name="Bcd(15:12)" />
        <signal name="Dp(3:0)" />
        <signal name="Dp(0)" />
        <signal name="Dp(1)" />
        <signal name="Dp(2)" />
        <signal name="Dp(3)" />
        <signal name="Clk_1kHz" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_21(1:0)" />
        <signal name="XLXN_23(3:0)" />
        <signal name="An(3:0)" />
        <signal name="An(0)" />
        <signal name="An(1)" />
        <signal name="An(2)" />
        <signal name="An(3)" />
        <signal name="Segm(0)" />
        <signal name="Segm(1)" />
        <signal name="Segm(2)" />
        <signal name="Segm(3)" />
        <signal name="Segm(4)" />
        <signal name="Segm(5)" />
        <signal name="Segm(6)" />
        <signal name="Segm(7)" />
        <signal name="Segm(7:0)" />
        <port polarity="Input" name="Bcd(15:0)" />
        <port polarity="Input" name="Dp(3:0)" />
        <port polarity="Output" name="Clk_1kHz" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="An(3:0)" />
        <port polarity="Output" name="Segm(7:0)" />
        <blockdef name="Mux_4x8_bit">
            <timestamp>2018-2-21T17:57:3</timestamp>
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="224" y1="-56" y2="-132" x1="176" />
            <line x2="176" y1="-328" y2="-328" x1="64" />
            <line x2="224" y1="-328" y2="-244" x1="176" />
            <line x2="64" y1="-56" y2="-56" x1="176" />
            <line x2="64" y1="-56" y2="-328" x1="64" />
            <line x2="112" y1="-56" y2="-16" x1="112" />
            <rect width="24" x="100" y="-56" height="40" />
            <line x2="224" y1="-244" y2="-132" x1="224" />
            <rect width="64" x="224" y="-204" height="24" />
            <line x2="288" y1="-192" y2="-192" x1="224" />
        </blockdef>
        <blockdef name="Mux_4x1_bit">
            <timestamp>2018-2-22T17:34:34</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="64" y1="-312" y2="-72" x1="64" />
            <line x2="208" y1="-72" y2="-152" x1="176" />
            <line x2="160" y1="-232" y2="-312" x1="208" />
            <line x2="208" y1="-152" y2="-232" x1="208" />
            <line x2="64" y1="-312" y2="-312" x1="160" />
            <line x2="176" y1="-72" y2="-72" x1="64" />
            <line x2="272" y1="-192" y2="-192" x1="208" />
            <line x2="128" y1="-72" y2="0" x1="128" />
            <rect width="24" x="116" y="-72" height="72" />
        </blockdef>
        <blockdef name="SegmentDecoder">
            <timestamp>2018-2-21T18:7:53</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="count2Bit">
            <timestamp>2018-2-21T18:6:52</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Encoder_2x4">
            <timestamp>2018-2-22T16:43:40</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="clkDiv1kHz">
            <timestamp>2018-2-23T15:57:15</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Mux_4x8_bit" name="XLXI_1">
            <blockpin signalname="Bcd(3:0)" name="In0(3:0)" />
            <blockpin signalname="Bcd(7:4)" name="In1(3:0)" />
            <blockpin signalname="Bcd(11:8)" name="In2(3:0)" />
            <blockpin signalname="Bcd(15:12)" name="In3(3:0)" />
            <blockpin signalname="XLXN_21(1:0)" name="Sel(1:0)" />
            <blockpin signalname="XLXN_23(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="Mux_4x1_bit" name="XLXI_2">
            <blockpin signalname="Dp(0)" name="In0" />
            <blockpin signalname="Dp(1)" name="In1" />
            <blockpin signalname="Dp(2)" name="In2" />
            <blockpin signalname="Dp(3)" name="In3" />
            <blockpin signalname="Segm(7)" name="O" />
            <blockpin signalname="XLXN_21(1:0)" name="Sel(1:0)" />
        </block>
        <block symbolname="SegmentDecoder" name="XLXI_3">
            <blockpin signalname="XLXN_23(3:0)" name="Din(3:0)" />
            <blockpin signalname="Segm(0)" name="aSeg" />
            <blockpin signalname="Segm(1)" name="bSeg" />
            <blockpin signalname="Segm(2)" name="cSeg" />
            <blockpin signalname="Segm(3)" name="dSeg" />
            <blockpin signalname="Segm(4)" name="eSeg" />
            <blockpin signalname="Segm(5)" name="fSeg" />
            <blockpin signalname="Segm(6)" name="gSeg" />
        </block>
        <block symbolname="count2Bit" name="XLXI_4">
            <blockpin signalname="Clk_1kHz" name="clk" />
            <blockpin signalname="XLXN_21(1:0)" name="count(1:0)" />
        </block>
        <block symbolname="Encoder_2x4" name="XLXI_8">
            <blockpin signalname="XLXN_21(1:0)" name="Ind(1:0)" />
            <blockpin signalname="An(0)" name="O1" />
            <blockpin signalname="An(1)" name="O2" />
            <blockpin signalname="An(2)" name="O3" />
            <blockpin signalname="An(3)" name="O4" />
        </block>
        <block symbolname="clkDiv1kHz" name="XLXI_7">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="Clk_1kHz" name="divClk" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Bcd(15:0)">
            <wire x2="704" y1="704" y2="704" x1="624" />
            <wire x2="704" y1="704" y2="800" x1="704" />
            <wire x2="704" y1="800" y2="864" x1="704" />
            <wire x2="704" y1="864" y2="928" x1="704" />
            <wire x2="704" y1="928" y2="992" x1="704" />
        </branch>
        <bustap x2="800" y1="800" y2="800" x1="704" />
        <bustap x2="800" y1="864" y2="864" x1="704" />
        <bustap x2="800" y1="928" y2="928" x1="704" />
        <bustap x2="800" y1="992" y2="992" x1="704" />
        <branch name="Bcd(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="800" type="branch" />
            <wire x2="832" y1="800" y2="800" x1="800" />
            <wire x2="912" y1="800" y2="800" x1="832" />
        </branch>
        <branch name="Bcd(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="864" type="branch" />
            <wire x2="816" y1="864" y2="864" x1="800" />
            <wire x2="912" y1="864" y2="864" x1="816" />
        </branch>
        <branch name="Bcd(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="928" type="branch" />
            <wire x2="832" y1="928" y2="928" x1="800" />
            <wire x2="912" y1="928" y2="928" x1="832" />
        </branch>
        <branch name="Bcd(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="992" type="branch" />
            <wire x2="816" y1="992" y2="992" x1="800" />
            <wire x2="912" y1="992" y2="992" x1="816" />
        </branch>
        <instance x="912" y="1504" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Dp(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1136" type="branch" />
            <wire x2="656" y1="1136" y2="1136" x1="592" />
            <wire x2="704" y1="1136" y2="1136" x1="656" />
            <wire x2="704" y1="1136" y2="1216" x1="704" />
            <wire x2="704" y1="1216" y2="1280" x1="704" />
            <wire x2="704" y1="1280" y2="1344" x1="704" />
            <wire x2="704" y1="1344" y2="1408" x1="704" />
        </branch>
        <bustap x2="800" y1="1216" y2="1216" x1="704" />
        <bustap x2="800" y1="1280" y2="1280" x1="704" />
        <bustap x2="800" y1="1344" y2="1344" x1="704" />
        <bustap x2="800" y1="1408" y2="1408" x1="704" />
        <branch name="Dp(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1216" type="branch" />
            <wire x2="848" y1="1216" y2="1216" x1="800" />
            <wire x2="912" y1="1216" y2="1216" x1="848" />
        </branch>
        <branch name="Dp(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1280" type="branch" />
            <wire x2="848" y1="1280" y2="1280" x1="800" />
            <wire x2="912" y1="1280" y2="1280" x1="848" />
        </branch>
        <branch name="Dp(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1344" type="branch" />
            <wire x2="848" y1="1344" y2="1344" x1="800" />
            <wire x2="912" y1="1344" y2="1344" x1="848" />
        </branch>
        <branch name="Dp(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1408" type="branch" />
            <wire x2="848" y1="1408" y2="1408" x1="800" />
            <wire x2="912" y1="1408" y2="1408" x1="848" />
        </branch>
        <instance x="1920" y="1264" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1360" y="848" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1856" y="1616" name="XLXI_8" orien="R0">
        </instance>
        <branch name="Clk_1kHz">
            <wire x2="1808" y1="672" y2="672" x1="1296" />
            <wire x2="1296" y1="672" y2="816" x1="1296" />
            <wire x2="1360" y1="816" y2="816" x1="1296" />
            <wire x2="1808" y1="560" y2="560" x1="1472" />
            <wire x2="1808" y1="560" y2="672" x1="1808" />
            <wire x2="2496" y1="560" y2="560" x1="1808" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="1088" y1="560" y2="560" x1="704" />
        </branch>
        <instance x="1088" y="592" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_21(1:0)">
            <wire x2="1024" y1="1072" y2="1136" x1="1024" />
            <wire x2="1264" y1="1136" y2="1136" x1="1024" />
            <wire x2="1040" y1="1504" y2="1568" x1="1040" />
            <wire x2="1808" y1="1568" y2="1568" x1="1040" />
            <wire x2="1264" y1="1072" y2="1136" x1="1264" />
            <wire x2="1808" y1="1072" y2="1072" x1="1264" />
            <wire x2="1808" y1="1072" y2="1392" x1="1808" />
            <wire x2="1808" y1="1392" y2="1568" x1="1808" />
            <wire x2="1856" y1="1392" y2="1392" x1="1808" />
            <wire x2="1808" y1="816" y2="816" x1="1744" />
            <wire x2="1808" y1="816" y2="1072" x1="1808" />
        </branch>
        <branch name="XLXN_23(3:0)">
            <wire x2="1824" y1="896" y2="896" x1="1200" />
            <wire x2="1824" y1="848" y2="896" x1="1824" />
            <wire x2="1920" y1="848" y2="848" x1="1824" />
        </branch>
        <branch name="An(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="1344" type="branch" />
            <wire x2="2528" y1="1344" y2="1344" x1="2512" />
            <wire x2="2688" y1="1344" y2="1344" x1="2528" />
            <wire x2="2512" y1="1344" y2="1392" x1="2512" />
            <wire x2="2512" y1="1392" y2="1456" x1="2512" />
            <wire x2="2512" y1="1456" y2="1520" x1="2512" />
            <wire x2="2512" y1="1520" y2="1584" x1="2512" />
        </branch>
        <bustap x2="2416" y1="1392" y2="1392" x1="2512" />
        <bustap x2="2416" y1="1456" y2="1456" x1="2512" />
        <bustap x2="2416" y1="1520" y2="1520" x1="2512" />
        <bustap x2="2416" y1="1584" y2="1584" x1="2512" />
        <branch name="An(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1392" type="branch" />
            <wire x2="2320" y1="1392" y2="1392" x1="2240" />
            <wire x2="2416" y1="1392" y2="1392" x1="2320" />
        </branch>
        <branch name="An(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1456" type="branch" />
            <wire x2="2320" y1="1456" y2="1456" x1="2240" />
            <wire x2="2416" y1="1456" y2="1456" x1="2320" />
        </branch>
        <branch name="An(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="1520" type="branch" />
            <wire x2="2304" y1="1520" y2="1520" x1="2240" />
            <wire x2="2416" y1="1520" y2="1520" x1="2304" />
        </branch>
        <branch name="An(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="1584" type="branch" />
            <wire x2="2304" y1="1584" y2="1584" x1="2240" />
            <wire x2="2416" y1="1584" y2="1584" x1="2304" />
        </branch>
        <branch name="Segm(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="848" type="branch" />
            <wire x2="2336" y1="848" y2="848" x1="2304" />
            <wire x2="2352" y1="848" y2="848" x1="2336" />
        </branch>
        <branch name="Segm(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="912" type="branch" />
            <wire x2="2320" y1="912" y2="912" x1="2304" />
            <wire x2="2352" y1="912" y2="912" x1="2320" />
        </branch>
        <branch name="Segm(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="976" type="branch" />
            <wire x2="2320" y1="976" y2="976" x1="2304" />
            <wire x2="2352" y1="976" y2="976" x1="2320" />
        </branch>
        <branch name="Segm(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1040" type="branch" />
            <wire x2="2320" y1="1040" y2="1040" x1="2304" />
            <wire x2="2352" y1="1040" y2="1040" x1="2320" />
        </branch>
        <branch name="Segm(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1104" type="branch" />
            <wire x2="2320" y1="1104" y2="1104" x1="2304" />
            <wire x2="2352" y1="1104" y2="1104" x1="2320" />
        </branch>
        <branch name="Segm(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1168" type="branch" />
            <wire x2="2320" y1="1168" y2="1168" x1="2304" />
            <wire x2="2352" y1="1168" y2="1168" x1="2320" />
        </branch>
        <branch name="Segm(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1232" type="branch" />
            <wire x2="2320" y1="1232" y2="1232" x1="2304" />
            <wire x2="2352" y1="1232" y2="1232" x1="2320" />
        </branch>
        <branch name="Segm(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1312" type="branch" />
            <wire x2="2288" y1="1312" y2="1312" x1="1184" />
            <wire x2="2352" y1="1312" y2="1312" x1="2288" />
            <wire x2="2352" y1="1280" y2="1312" x1="2352" />
        </branch>
        <branch name="Segm(7:0)">
            <wire x2="2800" y1="816" y2="816" x1="2448" />
            <wire x2="2448" y1="816" y2="848" x1="2448" />
            <wire x2="2448" y1="848" y2="912" x1="2448" />
            <wire x2="2448" y1="912" y2="976" x1="2448" />
            <wire x2="2448" y1="976" y2="1040" x1="2448" />
            <wire x2="2448" y1="1040" y2="1104" x1="2448" />
            <wire x2="2448" y1="1104" y2="1168" x1="2448" />
            <wire x2="2448" y1="1168" y2="1232" x1="2448" />
            <wire x2="2448" y1="1232" y2="1280" x1="2448" />
        </branch>
        <bustap x2="2352" y1="1280" y2="1280" x1="2448" />
        <bustap x2="2352" y1="1232" y2="1232" x1="2448" />
        <bustap x2="2352" y1="1168" y2="1168" x1="2448" />
        <bustap x2="2352" y1="1104" y2="1104" x1="2448" />
        <bustap x2="2352" y1="1040" y2="1040" x1="2448" />
        <bustap x2="2352" y1="976" y2="976" x1="2448" />
        <bustap x2="2352" y1="912" y2="912" x1="2448" />
        <bustap x2="2352" y1="848" y2="848" x1="2448" />
        <iomarker fontsize="28" x="624" y="704" name="Bcd(15:0)" orien="R180" />
        <iomarker fontsize="28" x="592" y="1136" name="Dp(3:0)" orien="R180" />
        <iomarker fontsize="28" x="704" y="560" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="2496" y="560" name="Clk_1kHz" orien="R0" />
        <iomarker fontsize="28" x="2800" y="816" name="Segm(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1344" name="An(3:0)" orien="R0" />
    </sheet>
</drawing>