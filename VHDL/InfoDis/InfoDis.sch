<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Bcd(15:0)" />
        <signal name="Bcd(15:13)" />
        <signal name="XLXN_143(15:0)" />
        <signal name="XLXN_146" />
        <signal name="CountPulse0" />
        <signal name="Dir1" />
        <signal name="Dir0" />
        <signal name="CountPulse1" />
        <signal name="XLXN_283(15:0)" />
        <signal name="XLXN_284(15:0)" />
        <signal name="XLXN_285(15:0)" />
        <signal name="XLXN_293" />
        <signal name="XLXN_294" />
        <signal name="XLXN_295" />
        <signal name="XLXN_296" />
        <signal name="Dp(3)" />
        <signal name="Dp(2:0)" />
        <signal name="XLXN_300(15:0)" />
        <signal name="Bcd(3:0)" />
        <signal name="Bcd(7:4)" />
        <signal name="Bcd(11:8)" />
        <signal name="Reset" />
        <signal name="Dp(3:0)" />
        <signal name="XLXN_317(3:0)" />
        <signal name="XLXN_318(3:0)" />
        <signal name="Clk" />
        <signal name="XLXN_321" />
        <signal name="Error" />
        <signal name="PWMMotor0(7:0)" />
        <signal name="PWMMotor1(7:0)" />
        <signal name="XLXN_301(7:0)" />
        <signal name="LED(7:0)" />
        <signal name="Seg(7:0)" />
        <signal name="An(3:0)" />
        <signal name="Sw" />
        <signal name="Bcd2(15:0)" />
        <signal name="XLXN_356(15:0)" />
        <signal name="Bcd(12)" />
        <signal name="XLXN_361" />
        <signal name="XLXN_362" />
        <signal name="XLXN_363" />
        <port polarity="Input" name="CountPulse0" />
        <port polarity="Input" name="Dir1" />
        <port polarity="Input" name="Dir0" />
        <port polarity="Input" name="CountPulse1" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Error" />
        <port polarity="Input" name="PWMMotor0(7:0)" />
        <port polarity="Input" name="PWMMotor1(7:0)" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="Seg(7:0)" />
        <port polarity="Output" name="An(3:0)" />
        <port polarity="Input" name="Sw" />
        <port polarity="Input" name="Bcd2(15:0)" />
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="BinaryTBcd">
            <timestamp>2018-4-12T8:18:54</timestamp>
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="100" height="24" />
            <line x2="384" y1="112" y2="112" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <rect width="64" x="0" y="-220" height="24" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <rect width="256" x="64" y="-320" height="472" />
        </blockdef>
        <blockdef name="Mux16x2">
            <timestamp>2018-4-10T10:49:0</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Count1Bit">
            <timestamp>2018-4-10T9:32:30</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="clkDiv1Hz">
            <timestamp>2018-4-10T9:28:52</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Multiplexed_Display">
            <timestamp>2018-3-26T12:48:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Mux8x2">
            <timestamp>2018-4-10T10:11:40</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="SCount16Bit">
            <timestamp>2018-4-16T14:42:38</timestamp>
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="304" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="SigendToUSigen">
            <timestamp>2018-4-10T10:45:43</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="Mux1x2">
            <timestamp>2018-4-10T10:49:25</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="PWMToLED">
            <timestamp>2018-4-16T15:20:39</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="BlinkDp">
            <timestamp>2018-4-14T12:58:35</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Mux4x2">
            <timestamp>2018-4-14T13:1:1</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="clkDiv2Hz">
            <timestamp>2018-4-16T15:40:35</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="constant" name="XLXI_37">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="Bcd(15:13)" name="O" />
        </block>
        <block symbolname="BinaryTBcd" name="XLXI_2">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_143(15:0)" name="Din(15:0)" />
            <blockpin name="ModOut" />
            <blockpin signalname="Bcd(3:0)" name="Bcd0(3:0)" />
            <blockpin signalname="Bcd(7:4)" name="Bcd1(3:0)" />
            <blockpin signalname="Bcd(11:8)" name="Bcd2(3:0)" />
            <blockpin name="Bcd3(3:0)" />
        </block>
        <block symbolname="Mux16x2" name="XLXI_33">
            <blockpin signalname="XLXN_362" name="S" />
            <blockpin signalname="XLXN_285(15:0)" name="I0(15:0)" />
            <blockpin signalname="XLXN_300(15:0)" name="I1(15:0)" />
            <blockpin signalname="XLXN_143(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="clkDiv1Hz" name="XLXI_34">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="XLXN_146" name="divClk" />
        </block>
        <block symbolname="SCount16Bit" name="XLXI_43">
            <blockpin signalname="CountPulse1" name="CountPulse" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Dir1" name="Dir" />
            <blockpin signalname="XLXN_284(15:0)" name="CountOut(15:0)" />
        </block>
        <block symbolname="SCount16Bit" name="XLXI_42">
            <blockpin signalname="CountPulse0" name="CountPulse" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Dir0" name="Dir" />
            <blockpin signalname="XLXN_283(15:0)" name="CountOut(15:0)" />
        </block>
        <block symbolname="SigendToUSigen" name="XLXI_46">
            <blockpin signalname="XLXN_283(15:0)" name="SindIn(15:0)" />
            <blockpin signalname="XLXN_293" name="SindOut" />
            <blockpin signalname="XLXN_285(15:0)" name="UnSind(15:0)" />
        </block>
        <block symbolname="SigendToUSigen" name="XLXI_47">
            <blockpin signalname="XLXN_284(15:0)" name="SindIn(15:0)" />
            <blockpin signalname="XLXN_294" name="SindOut" />
            <blockpin signalname="XLXN_300(15:0)" name="UnSind(15:0)" />
        </block>
        <block symbolname="inv" name="XLXI_51">
            <blockpin signalname="XLXN_293" name="I" />
            <blockpin signalname="XLXN_295" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_52">
            <blockpin signalname="XLXN_294" name="I" />
            <blockpin signalname="XLXN_296" name="O" />
        </block>
        <block symbolname="Mux1x2" name="XLXI_53">
            <blockpin signalname="XLXN_295" name="I0" />
            <blockpin signalname="XLXN_296" name="I1" />
            <blockpin signalname="Bcd(12)" name="S" />
            <blockpin signalname="Dp(3)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_54">
            <blockpin signalname="Dp(2:0)" name="O" />
        </block>
        <block symbolname="BlinkDp" name="XLXI_62">
            <blockpin signalname="Error" name="En" />
            <blockpin signalname="XLXN_321" name="Clk" />
            <blockpin signalname="XLXN_318(3:0)" name="Dp(3:0)" />
        </block>
        <block symbolname="Mux4x2" name="XLXI_63">
            <blockpin signalname="Error" name="S" />
            <blockpin signalname="Dp(3:0)" name="I0(3:0)" />
            <blockpin signalname="XLXN_318(3:0)" name="I1(3:0)" />
            <blockpin signalname="XLXN_317(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="clkDiv2Hz" name="XLXI_64">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="XLXN_321" name="divClk" />
        </block>
        <block symbolname="PWMToLED" name="XLXI_55">
            <blockpin signalname="XLXN_301(7:0)" name="PWM(7:0)" />
            <blockpin signalname="LED(7:0)" name="LED(7:0)" />
        </block>
        <block symbolname="Mux8x2" name="XLXI_40">
            <blockpin signalname="Bcd(12)" name="S" />
            <blockpin signalname="PWMMotor0(7:0)" name="I0(7:0)" />
            <blockpin signalname="PWMMotor1(7:0)" name="I1(7:0)" />
            <blockpin signalname="XLXN_301(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="Multiplexed_Display" name="XLXI_38">
            <blockpin signalname="XLXN_356(15:0)" name="Bcd(15:0)" />
            <blockpin signalname="XLXN_317(3:0)" name="Dp(3:0)" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin name="Clk_1kHz" />
            <blockpin signalname="An(3:0)" name="An(3:0)" />
            <blockpin signalname="Seg(7:0)" name="Segm(7:0)" />
        </block>
        <block symbolname="Mux16x2" name="XLXI_73">
            <blockpin signalname="Sw" name="S" />
            <blockpin signalname="Bcd(15:0)" name="I0(15:0)" />
            <blockpin signalname="Bcd2(15:0)" name="I1(15:0)" />
            <blockpin signalname="XLXN_356(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="Count1Bit" name="XLXI_36">
            <blockpin signalname="XLXN_146" name="Clk" />
            <blockpin signalname="XLXN_362" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_79">
            <blockpin signalname="XLXN_362" name="I" />
            <blockpin signalname="Bcd(12)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Bcd(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="208" type="branch" />
            <wire x2="2352" y1="208" y2="272" x1="2352" />
            <wire x2="2352" y1="272" y2="352" x1="2352" />
            <wire x2="2352" y1="352" y2="432" x1="2352" />
            <wire x2="2352" y1="432" y2="624" x1="2352" />
            <wire x2="2352" y1="624" y2="736" x1="2352" />
            <wire x2="2416" y1="208" y2="208" x1="2352" />
            <wire x2="2496" y1="208" y2="208" x1="2416" />
        </branch>
        <branch name="Bcd(15:13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="624" type="branch" />
            <wire x2="2224" y1="608" y2="624" x1="2224" />
            <wire x2="2240" y1="624" y2="624" x1="2224" />
            <wire x2="2256" y1="624" y2="624" x1="2240" />
        </branch>
        <bustap x2="2256" y1="272" y2="272" x1="2352" />
        <bustap x2="2256" y1="624" y2="624" x1="2352" />
        <instance x="1280" y="560" name="XLXI_33" orien="R0">
        </instance>
        <branch name="XLXN_143(15:0)">
            <wire x2="1680" y1="400" y2="400" x1="1664" />
            <wire x2="1728" y1="352" y2="352" x1="1680" />
            <wire x2="1680" y1="352" y2="400" x1="1680" />
        </branch>
        <instance x="128" y="432" name="XLXI_34" orien="R0">
        </instance>
        <branch name="XLXN_146">
            <wire x2="560" y1="400" y2="400" x1="512" />
        </branch>
        <branch name="CountPulse0">
            <wire x2="368" y1="592" y2="592" x1="272" />
        </branch>
        <branch name="Dir1">
            <wire x2="368" y1="1056" y2="1056" x1="256" />
        </branch>
        <branch name="Dir0">
            <wire x2="368" y1="720" y2="720" x1="272" />
        </branch>
        <branch name="CountPulse1">
            <wire x2="368" y1="928" y2="928" x1="272" />
        </branch>
        <branch name="XLXN_283(15:0)">
            <wire x2="816" y1="592" y2="592" x1="800" />
        </branch>
        <branch name="XLXN_284(15:0)">
            <wire x2="816" y1="928" y2="928" x1="800" />
        </branch>
        <instance x="1584" y="992" name="XLXI_53" orien="R0">
        </instance>
        <branch name="XLXN_295">
            <wire x2="1568" y1="608" y2="608" x1="1536" />
            <wire x2="1568" y1="608" y2="832" x1="1568" />
            <wire x2="1584" y1="832" y2="832" x1="1568" />
        </branch>
        <branch name="XLXN_296">
            <wire x2="1584" y1="896" y2="896" x1="1536" />
        </branch>
        <bustap x2="2336" y1="832" y2="832" x1="2432" />
        <bustap x2="2336" y1="960" y2="960" x1="2432" />
        <branch name="Dp(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="832" type="branch" />
            <wire x2="2128" y1="832" y2="832" x1="1968" />
            <wire x2="2336" y1="832" y2="832" x1="2128" />
        </branch>
        <branch name="Dp(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="960" type="branch" />
            <wire x2="2240" y1="960" y2="960" x1="2192" />
            <wire x2="2336" y1="960" y2="960" x1="2240" />
        </branch>
        <branch name="XLXN_285(15:0)">
            <wire x2="1232" y1="656" y2="656" x1="1200" />
            <wire x2="1232" y1="464" y2="656" x1="1232" />
            <wire x2="1264" y1="464" y2="464" x1="1232" />
            <wire x2="1280" y1="464" y2="464" x1="1264" />
        </branch>
        <instance x="1312" y="640" name="XLXI_51" orien="R0" />
        <branch name="XLXN_293">
            <wire x2="1296" y1="592" y2="592" x1="1200" />
            <wire x2="1296" y1="592" y2="608" x1="1296" />
            <wire x2="1312" y1="608" y2="608" x1="1296" />
        </branch>
        <branch name="XLXN_300(15:0)">
            <wire x2="1264" y1="992" y2="992" x1="1200" />
            <wire x2="1280" y1="528" y2="528" x1="1264" />
            <wire x2="1264" y1="528" y2="992" x1="1264" />
        </branch>
        <instance x="1728" y="560" name="XLXI_2" orien="R0">
        </instance>
        <bustap x2="2256" y1="352" y2="352" x1="2352" />
        <bustap x2="2256" y1="432" y2="432" x1="2352" />
        <branch name="Bcd(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="272" type="branch" />
            <wire x2="2128" y1="432" y2="432" x1="2112" />
            <wire x2="2128" y1="272" y2="432" x1="2128" />
            <wire x2="2240" y1="272" y2="272" x1="2128" />
            <wire x2="2256" y1="272" y2="272" x1="2240" />
        </branch>
        <branch name="Bcd(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="352" type="branch" />
            <wire x2="2144" y1="512" y2="512" x1="2112" />
            <wire x2="2144" y1="352" y2="512" x1="2144" />
            <wire x2="2240" y1="352" y2="352" x1="2144" />
            <wire x2="2256" y1="352" y2="352" x1="2240" />
        </branch>
        <branch name="Bcd(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="432" type="branch" />
            <wire x2="2160" y1="592" y2="592" x1="2112" />
            <wire x2="2160" y1="432" y2="592" x1="2160" />
            <wire x2="2240" y1="432" y2="432" x1="2160" />
            <wire x2="2256" y1="432" y2="432" x1="2240" />
        </branch>
        <branch name="Reset">
            <wire x2="336" y1="816" y2="816" x1="272" />
            <wire x2="336" y1="816" y2="992" x1="336" />
            <wire x2="368" y1="992" y2="992" x1="336" />
            <wire x2="336" y1="656" y2="816" x1="336" />
            <wire x2="368" y1="656" y2="656" x1="336" />
        </branch>
        <instance x="816" y="688" name="XLXI_46" orien="R0">
        </instance>
        <instance x="368" y="752" name="XLXI_42" orien="R0">
        </instance>
        <instance x="368" y="1088" name="XLXI_43" orien="R0">
        </instance>
        <iomarker fontsize="28" x="272" y="928" name="CountPulse1" orien="R180" />
        <iomarker fontsize="28" x="272" y="816" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="272" y="720" name="Dir0" orien="R180" />
        <iomarker fontsize="28" x="256" y="1056" name="Dir1" orien="R180" />
        <iomarker fontsize="28" x="272" y="592" name="CountPulse0" orien="R180" />
        <branch name="Dp(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="832" type="branch" />
            <wire x2="2464" y1="832" y2="832" x1="2432" />
            <wire x2="2560" y1="832" y2="832" x1="2464" />
            <wire x2="2656" y1="832" y2="832" x1="2560" />
            <wire x2="2464" y1="832" y2="960" x1="2464" />
            <wire x2="2464" y1="960" y2="960" x1="2432" />
        </branch>
        <branch name="XLXN_317(3:0)">
            <wire x2="2944" y1="272" y2="272" x1="2880" />
            <wire x2="2880" y1="272" y2="448" x1="2880" />
            <wire x2="3056" y1="448" y2="448" x1="2880" />
            <wire x2="3056" y1="448" y2="768" x1="3056" />
            <wire x2="3056" y1="768" y2="768" x1="3040" />
        </branch>
        <branch name="XLXN_318(3:0)">
            <wire x2="2656" y1="896" y2="896" x1="2640" />
            <wire x2="2640" y1="896" y2="976" x1="2640" />
            <wire x2="2768" y1="976" y2="976" x1="2640" />
            <wire x2="2768" y1="976" y2="1152" x1="2768" />
            <wire x2="2768" y1="1152" y2="1152" x1="2752" />
        </branch>
        <branch name="Clk">
            <wire x2="64" y1="272" y2="400" x1="64" />
            <wire x2="64" y1="400" y2="1360" x1="64" />
            <wire x2="1920" y1="1360" y2="1360" x1="64" />
            <wire x2="128" y1="400" y2="400" x1="64" />
            <wire x2="1664" y1="272" y2="272" x1="64" />
            <wire x2="1728" y1="272" y2="272" x1="1664" />
            <wire x2="1664" y1="224" y2="224" x1="1552" />
            <wire x2="1664" y1="224" y2="272" x1="1664" />
            <wire x2="2368" y1="224" y2="224" x1="1664" />
            <wire x2="2368" y1="224" y2="336" x1="2368" />
            <wire x2="2944" y1="336" y2="336" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="1552" y="224" name="Clk" orien="R180" />
        <instance x="1920" y="1392" name="XLXI_64" orien="R0">
        </instance>
        <instance x="2048" y="928" name="XLXI_54" orien="R0">
        </instance>
        <instance x="816" y="1024" name="XLXI_47" orien="R0">
        </instance>
        <instance x="2656" y="928" name="XLXI_63" orien="R0">
        </instance>
        <branch name="Error">
            <wire x2="2320" y1="1152" y2="1152" x1="2288" />
            <wire x2="2368" y1="1152" y2="1152" x1="2320" />
            <wire x2="2656" y1="768" y2="768" x1="2320" />
            <wire x2="2320" y1="768" y2="1152" x1="2320" />
        </branch>
        <instance x="2368" y="1248" name="XLXI_62" orien="R0">
        </instance>
        <branch name="XLXN_321">
            <wire x2="2320" y1="1360" y2="1360" x1="2304" />
            <wire x2="2368" y1="1216" y2="1216" x1="2320" />
            <wire x2="2320" y1="1216" y2="1360" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2288" y="1152" name="Error" orien="R180" />
        <branch name="PWMMotor0(7:0)">
            <wire x2="992" y1="1232" y2="1232" x1="976" />
            <wire x2="1008" y1="1232" y2="1232" x1="992" />
        </branch>
        <branch name="PWMMotor1(7:0)">
            <wire x2="992" y1="1296" y2="1296" x1="976" />
            <wire x2="1008" y1="1296" y2="1296" x1="992" />
        </branch>
        <branch name="XLXN_301(7:0)">
            <wire x2="1488" y1="1168" y2="1168" x1="1392" />
            <wire x2="1504" y1="1168" y2="1168" x1="1488" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="1904" y1="1168" y2="1168" x1="1888" />
            <wire x2="1952" y1="1168" y2="1168" x1="1904" />
        </branch>
        <instance x="1504" y="1200" name="XLXI_55" orien="R0">
        </instance>
        <instance x="1008" y="1328" name="XLXI_40" orien="R0">
        </instance>
        <iomarker fontsize="28" x="976" y="1296" name="PWMMotor1(7:0)" orien="R180" />
        <iomarker fontsize="28" x="976" y="1232" name="PWMMotor0(7:0)" orien="R180" />
        <branch name="Seg(7:0)">
            <wire x2="3360" y1="336" y2="336" x1="3328" />
        </branch>
        <branch name="An(3:0)">
            <wire x2="3360" y1="272" y2="272" x1="3328" />
        </branch>
        <instance x="2944" y="368" name="XLXI_38" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3360" y="336" name="Seg(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3360" y="272" name="An(3:0)" orien="R0" />
        <branch name="Sw">
            <wire x2="2496" y1="144" y2="144" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2464" y="144" name="Sw" orien="R180" />
        <instance x="2256" y="464" name="XLXI_37" orien="R90">
        </instance>
        <branch name="Bcd2(15:0)">
            <wire x2="2496" y1="272" y2="272" x1="2480" />
            <wire x2="2480" y1="272" y2="368" x1="2480" />
            <wire x2="2640" y1="368" y2="368" x1="2480" />
            <wire x2="2640" y1="368" y2="432" x1="2640" />
            <wire x2="2640" y1="432" y2="432" x1="2560" />
        </branch>
        <instance x="2496" y="304" name="XLXI_73" orien="R0">
        </instance>
        <branch name="XLXN_356(15:0)">
            <wire x2="2912" y1="144" y2="144" x1="2880" />
            <wire x2="2912" y1="144" y2="208" x1="2912" />
            <wire x2="2944" y1="208" y2="208" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2560" y="432" name="Bcd2(15:0)" orien="R180" />
        <bustap x2="2256" y1="736" y2="736" x1="2352" />
        <branch name="Bcd(12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="736" type="branch" />
            <wire x2="1248" y1="1056" y2="1056" x1="976" />
            <wire x2="976" y1="1056" y2="1168" x1="976" />
            <wire x2="1008" y1="1168" y2="1168" x1="976" />
            <wire x2="1248" y1="432" y2="432" x1="1232" />
            <wire x2="1248" y1="432" y2="736" x1="1248" />
            <wire x2="1536" y1="736" y2="736" x1="1248" />
            <wire x2="2176" y1="736" y2="736" x1="1536" />
            <wire x2="2256" y1="736" y2="736" x1="2176" />
            <wire x2="1248" y1="736" y2="960" x1="1248" />
            <wire x2="1248" y1="960" y2="1056" x1="1248" />
            <wire x2="1584" y1="960" y2="960" x1="1248" />
        </branch>
        <instance x="1312" y="928" name="XLXI_52" orien="R0" />
        <branch name="XLXN_294">
            <wire x2="1216" y1="928" y2="928" x1="1200" />
            <wire x2="1312" y1="896" y2="896" x1="1216" />
            <wire x2="1216" y1="896" y2="928" x1="1216" />
        </branch>
        <instance x="560" y="432" name="XLXI_36" orien="R0">
        </instance>
        <instance x="1008" y="464" name="XLXI_79" orien="R0" />
        <branch name="XLXN_362">
            <wire x2="976" y1="400" y2="400" x1="944" />
            <wire x2="1280" y1="400" y2="400" x1="976" />
            <wire x2="976" y1="400" y2="432" x1="976" />
            <wire x2="1008" y1="432" y2="432" x1="976" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1168" name="LED(7:0)" orien="R0" />
    </sheet>
</drawing>