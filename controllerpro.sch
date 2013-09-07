<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.4">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="custom">
<packages>
<package name="NINTENDO-MULTI">
<wire x1="0.9906" y1="-5.9436" x2="-0.9906" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="-0.9906" y1="-5.9436" x2="-1.9812" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-1.9812" y1="-4.953" x2="-1.9812" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="-1.9812" y1="-2.9718" x2="-0.9906" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="-1.9812" y1="-4.953" x2="-2.9718" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-5.9436" x2="-4.953" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-5.9436" x2="-5.9436" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-5.9436" y1="-4.953" x2="-5.9436" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="-5.9436" y1="-2.9718" x2="-4.953" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-1.9812" x2="-1.9812" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="1.9812" y1="-4.953" x2="1.9812" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="0.9906" y1="-5.9436" x2="1.9812" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="1.9812" y1="-2.9718" x2="0.9906" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="-5.9436" y1="-4.953" x2="-6.9342" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="-6.9342" y1="-5.9436" x2="-8.9154" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="-8.9154" y1="-5.9436" x2="-9.906" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-2.9718" x2="-8.9154" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="-6.9342" y1="-1.9812" x2="-5.9436" y2="-2.9718" width="0.1524" layer="21"/>
<pad name="4" x="0" y="-3.9624" drill="2" shape="octagon" rot="R90"/>
<text x="-13.8684" y="2.9718" size="1.27" layer="21" ratio="10">&gt;NAME</text>
<text x="-13.8684" y="-7.9248" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.4953" y1="-4.4577" x2="0.4953" y2="-3.4671" layer="51" rot="R180"/>
<pad name="3" x="-3.9624" y="-3.9624" drill="2" shape="octagon" rot="R90"/>
<rectangle x1="-4.4577" y1="-4.4577" x2="-3.4671" y2="-3.4671" layer="51" rot="R180"/>
<pad name="2" x="-7.9248" y="-3.9624" drill="2" shape="octagon" rot="R270"/>
<rectangle x1="-8.4201" y1="-4.4577" x2="-7.4295" y2="-3.4671" layer="51" rot="R180"/>
<wire x1="0.9906" y1="-1.9812" x2="-0.9906" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="-0.9906" y1="-1.9812" x2="-1.9812" y2="-0.9906" width="0.1524" layer="21"/>
<wire x1="-1.9812" y1="-0.9906" x2="-1.9812" y2="0.9906" width="0.1524" layer="21"/>
<wire x1="-1.9812" y1="0.9906" x2="-0.9906" y2="1.9812" width="0.1524" layer="21"/>
<wire x1="-1.9812" y1="-0.9906" x2="-2.9718" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-1.9812" x2="-4.953" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-1.9812" x2="-5.9436" y2="-0.9906" width="0.1524" layer="21"/>
<wire x1="-5.9436" y1="-0.9906" x2="-5.9436" y2="0.9906" width="0.1524" layer="21"/>
<wire x1="-5.9436" y1="0.9906" x2="-4.953" y2="1.9812" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="1.9812" x2="-2.9718" y2="1.9812" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="1.9812" x2="-1.9812" y2="0.9906" width="0.1524" layer="21"/>
<wire x1="1.9812" y1="-0.9906" x2="1.9812" y2="0.9906" width="0.1524" layer="21"/>
<wire x1="0.9906" y1="-1.9812" x2="1.9812" y2="-0.9906" width="0.1524" layer="21"/>
<wire x1="1.9812" y1="0.9906" x2="0.9906" y2="1.9812" width="0.1524" layer="21"/>
<wire x1="-0.9906" y1="1.9812" x2="0.9906" y2="1.9812" width="0.1524" layer="21"/>
<wire x1="-5.9436" y1="-0.9906" x2="-6.9342" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="-6.9342" y1="-1.9812" x2="-8.9154" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="-8.9154" y1="-1.9812" x2="-9.906" y2="-0.9906" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-0.9906" x2="-9.906" y2="0.9906" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="0.9906" x2="-8.9154" y2="1.9812" width="0.1524" layer="21"/>
<wire x1="-8.9154" y1="1.9812" x2="-6.9342" y2="1.9812" width="0.1524" layer="21"/>
<wire x1="-6.9342" y1="1.9812" x2="-5.9436" y2="0.9906" width="0.1524" layer="21"/>
<pad name="8" x="0" y="0" drill="2" shape="octagon" rot="R90"/>
<rectangle x1="-0.4953" y1="-0.4953" x2="0.4953" y2="0.4953" layer="51" rot="R180"/>
<pad name="9" x="-3.9624" y="0" drill="2" shape="octagon" rot="R90"/>
<rectangle x1="-4.4577" y1="-0.4953" x2="-3.4671" y2="0.4953" layer="51" rot="R270"/>
<pad name="10" x="-7.9248" y="0" drill="2" shape="octagon" rot="R90"/>
<rectangle x1="-8.4201" y1="-0.4953" x2="-7.4295" y2="0.4953" layer="51" rot="R180"/>
<wire x1="-10.8966" y1="-5.9436" x2="-12.8778" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="-12.8778" y1="-5.9436" x2="-13.8684" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-13.8684" y1="-4.953" x2="-13.8684" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="-13.8684" y1="-2.9718" x2="-12.8778" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-4.953" x2="-9.906" y2="-2.9718" width="0.127" layer="21"/>
<wire x1="-10.8966" y1="-5.9436" x2="-9.906" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-2.9718" x2="-10.8966" y2="-1.9812" width="0.1524" layer="21"/>
<pad name="1" x="-11.8872" y="-3.9624" drill="2" shape="octagon" rot="R90"/>
<rectangle x1="-12.3825" y1="-4.4577" x2="-11.3919" y2="-3.4671" layer="51" rot="R180"/>
<wire x1="-10.8966" y1="-1.9812" x2="-12.8778" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="16.383" y1="-4.953" x2="16.383" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="16.383" y1="-4.953" x2="15.3924" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="15.3924" y1="-5.9436" x2="13.4112" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="13.4112" y1="-5.9436" x2="12.4206" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="12.4206" y1="-4.953" x2="12.4206" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="12.4206" y1="-2.9718" x2="13.4112" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="15.3924" y1="-1.9812" x2="16.383" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="12.4206" y1="-4.953" x2="11.43" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-5.9436" x2="9.4488" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="9.4488" y1="-5.9436" x2="8.4582" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="8.4582" y1="-2.9718" x2="9.4488" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-1.9812" x2="12.4206" y2="-2.9718" width="0.1524" layer="21"/>
<pad name="7" x="14.4018" y="-3.9624" drill="2" shape="octagon" rot="R90"/>
<rectangle x1="13.9065" y1="-4.4577" x2="14.8971" y2="-3.4671" layer="21" rot="R180"/>
<pad name="6" x="10.4394" y="-3.9624" drill="2" shape="octagon" rot="R270"/>
<rectangle x1="9.9441" y1="-4.4577" x2="10.9347" y2="-3.4671" layer="21" rot="R180"/>
<wire x1="15.3924" y1="-1.9812" x2="13.4112" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-1.9812" x2="9.4488" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="7.4676" y1="-5.9436" x2="5.4864" y2="-5.9436" width="0.1524" layer="21"/>
<wire x1="5.4864" y1="-5.9436" x2="4.4958" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="4.4958" y1="-4.953" x2="4.4958" y2="-2.9718" width="0.127" layer="21"/>
<wire x1="4.4958" y1="-2.9718" x2="5.4864" y2="-1.9812" width="0.1524" layer="21"/>
<wire x1="8.4582" y1="-4.953" x2="8.4582" y2="-2.9718" width="0.1524" layer="21"/>
<wire x1="7.4676" y1="-5.9436" x2="8.4582" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="8.4582" y1="-2.9718" x2="7.4676" y2="-1.9812" width="0.1524" layer="21"/>
<pad name="5" x="6.477" y="-3.9624" drill="2" shape="octagon" rot="R90"/>
<rectangle x1="5.9817" y1="-4.4577" x2="6.9723" y2="-3.4671" layer="21" rot="R180"/>
<wire x1="7.4676" y1="-1.9812" x2="5.4864" y2="-1.9812" width="0.1524" layer="21"/>
</package>
<package name="TEENSY_HEADERS">
<wire x1="15.24" y1="8.89" x2="-15.24" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-8.89" x2="15.24" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="15.24" y1="8.89" x2="15.24" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="8.89" x2="-15.24" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-8.89" x2="-15.24" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="1.016" x2="-15.24" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<wire x1="-15.24" y1="6.35" x2="-15.24" y2="1.016" width="0.1524" layer="21"/>
<wire x1="15.24" y1="6.35" x2="15.24" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-6.35" x2="15.24" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-6.35" x2="-15.24" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-6.35" x2="15.24" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="6.35" x2="15.24" y2="6.35" width="0.1524" layer="21"/>
<pad name="GND" x="-13.97" y="-7.62" drill="1.016" diameter="1.8796" shape="square" rot="R90"/>
<pad name="B7" x="-1.27" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D2" x="6.35" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D3" x="8.89" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D0" x="1.27" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D1" x="3.81" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D6" x="13.97" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="D7" x="11.43" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="C6" x="11.43" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="C7" x="13.97" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="F7" x="1.27" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="F6" x="-1.27" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="F5" x="-3.81" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="F4" x="-6.35" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="F1" x="-8.89" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="F0" x="-11.43" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="B0" x="-11.43" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="B1" x="-8.89" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="B2" x="-6.35" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="B3" x="-3.81" y="-7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="B4" x="8.89" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="B5" x="6.35" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="B6" x="3.81" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="+5V" x="-13.97" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="3.175" y="1.905" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-15.748" y="-8.255" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-15.24" y="-11.43" size="1.27" layer="51" font="vector">Licensed Under Creative Commons</text>
<text x="-15.24" y="-13.97" size="1.27" layer="51" font="vector">Attribution-ShareAlike 3.0 Unported </text>
<text x="-15.24" y="-16.51" size="1.27" layer="51" font="vector">Designed by Tamir Emran</text>
<text x="-15.24" y="-19.05" size="1.27" layer="51" font="vector">July 2011</text>
</package>
</packages>
<symbols>
<symbol name="NINTENDO-MULTI">
<wire x1="10.16" y1="-3.81" x2="10.16" y2="1.27" width="0.4064" layer="94"/>
<wire x1="-7.874" y1="3.81" x2="-12.7" y2="0" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-3.81" x2="10.16" y2="-3.81" width="0.4064" layer="94"/>
<text x="-13.335" y="-3.81" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="12.7" y="-3.81" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="10" x="-7.62" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R270"/>
<pin name="9" x="-5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R270"/>
<pin name="8" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R270"/>
<pin name="2" x="-7.62" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R90"/>
<pin name="3" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R90"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R90"/>
<pin name="1" x="-10.16" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R90"/>
<pin name="5" x="2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R90"/>
<pin name="6" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R90"/>
<pin name="7" x="7.62" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R90"/>
<wire x1="10.16" y1="1.27" x2="0" y2="1.27" width="0.4064" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="3.81" width="0.4064" layer="94"/>
<wire x1="0" y1="3.81" x2="-7.874" y2="3.81" width="0.4064" layer="94"/>
</symbol>
<symbol name="TEENSY_HEADERS">
<wire x1="-7.62" y1="35.56" x2="7.62" y2="35.56" width="0.254" layer="94"/>
<wire x1="7.62" y1="35.56" x2="7.62" y2="-33.02" width="0.254" layer="94"/>
<wire x1="7.62" y1="-33.02" x2="-7.62" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-33.02" x2="-7.62" y2="35.56" width="0.254" layer="94"/>
<text x="-5.08" y="38.1" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-5.08" y="2.54" size="1.778" layer="96" font="vector" rot="R270">&gt;VALUE</text>
<text x="-30.48" y="-43.18" size="1.27" layer="97" font="vector">Creative Commons Attribution-ShareAlike 3.0 Unported License</text>
<text x="-5.08" y="-38.1" size="1.27" layer="97" font="vector">Teensy 2.0</text>
<text x="-17.78" y="-48.26" size="1.27" layer="97" font="vector">Library Designed by Tamir Emran</text>
<text x="-5.08" y="-53.34" size="1.27" layer="97" font="vector">July 2011</text>
<pin name="_GND" x="-12.7" y="33.02" length="middle"/>
<pin name="_B7" x="-12.7" y="30.48" length="middle"/>
<pin name="_D0" x="-12.7" y="27.94" length="middle"/>
<pin name="_D1" x="-12.7" y="25.4" length="middle"/>
<pin name="_D2" x="-12.7" y="22.86" length="middle"/>
<pin name="_D3" x="-12.7" y="20.32" length="middle"/>
<pin name="_D6" x="-12.7" y="12.7" length="middle"/>
<pin name="_D7" x="-12.7" y="10.16" length="middle"/>
<pin name="_C6" x="-12.7" y="-12.7" length="middle"/>
<pin name="_C7" x="-12.7" y="-15.24" length="middle"/>
<pin name="5V" x="12.7" y="33.02" length="middle" rot="R180"/>
<pin name="_B6" x="12.7" y="30.48" length="middle" rot="R180"/>
<pin name="_B5" x="12.7" y="27.94" length="middle" rot="R180"/>
<pin name="_B4" x="12.7" y="25.4" length="middle" rot="R180"/>
<pin name="_B3" x="12.7" y="22.86" length="middle" rot="R180"/>
<pin name="_B2" x="12.7" y="20.32" length="middle" rot="R180"/>
<pin name="_B1" x="12.7" y="17.78" length="middle" rot="R180"/>
<pin name="_B0" x="12.7" y="15.24" length="middle" rot="R180"/>
<pin name="_F0" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="_F1" x="12.7" y="-5.08" length="middle" rot="R180"/>
<pin name="_F4" x="12.7" y="-10.16" length="middle" rot="R180"/>
<pin name="_F5" x="12.7" y="-12.7" length="middle" rot="R180"/>
<pin name="_F6" x="12.7" y="-15.24" length="middle" rot="R180"/>
<pin name="_F7" x="12.7" y="-17.78" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NINTENDO-MULTI">
<gates>
<gate name="G$1" symbol="NINTENDO-MULTI" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NINTENDO-MULTI">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TEENSY_HEADERS">
<gates>
<gate name="G$1" symbol="TEENSY_HEADERS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TEENSY_HEADERS">
<connects>
<connect gate="G$1" pin="5V" pad="+5V"/>
<connect gate="G$1" pin="_B0" pad="B0"/>
<connect gate="G$1" pin="_B1" pad="B1"/>
<connect gate="G$1" pin="_B2" pad="B2"/>
<connect gate="G$1" pin="_B3" pad="B3"/>
<connect gate="G$1" pin="_B4" pad="B4"/>
<connect gate="G$1" pin="_B5" pad="B5"/>
<connect gate="G$1" pin="_B6" pad="B6"/>
<connect gate="G$1" pin="_B7" pad="B7"/>
<connect gate="G$1" pin="_C6" pad="C6"/>
<connect gate="G$1" pin="_C7" pad="C7"/>
<connect gate="G$1" pin="_D0" pad="D0"/>
<connect gate="G$1" pin="_D1" pad="D1"/>
<connect gate="G$1" pin="_D2" pad="D2"/>
<connect gate="G$1" pin="_D3" pad="D3"/>
<connect gate="G$1" pin="_D6" pad="D6"/>
<connect gate="G$1" pin="_D7" pad="D7"/>
<connect gate="G$1" pin="_F0" pad="F0"/>
<connect gate="G$1" pin="_F1" pad="F1"/>
<connect gate="G$1" pin="_F4" pad="F4"/>
<connect gate="G$1" pin="_F5" pad="F5"/>
<connect gate="G$1" pin="_F6" pad="F6"/>
<connect gate="G$1" pin="_F7" pad="F7"/>
<connect gate="G$1" pin="_GND" pad="GND"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="linear">
<description>&lt;b&gt;Linear Devices&lt;/b&gt;&lt;p&gt;
Operational amplifiers,  comparators, voltage regulators, ADCs, DACs, etc.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SOT223">
<description>&lt;b&gt;Small Outline Transistor&lt;/b&gt;</description>
<wire x1="3.2766" y1="1.778" x2="3.2766" y2="-1.778" width="0.2032" layer="21"/>
<wire x1="3.2766" y1="-1.778" x2="-3.2766" y2="-1.778" width="0.2032" layer="21"/>
<wire x1="-3.2766" y1="-1.778" x2="-3.2766" y2="1.778" width="0.2032" layer="21"/>
<wire x1="-3.2766" y1="1.778" x2="3.2766" y2="1.778" width="0.2032" layer="21"/>
<smd name="1" x="-2.3114" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="2" x="0" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="3" x="2.3114" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="4" x="0" y="3.099" dx="3.6" dy="2.2" layer="1"/>
<text x="1.0208" y="-4.318" size="0.8128" layer="21" ratio="12">3</text>
<text x="1.905" y="2.54" size="0.8128" layer="21" ratio="12">4</text>
<text x="-3.4526" y="-4.318" size="0.8128" layer="21" ratio="12">1</text>
<text x="-1.2906" y="-4.3274" size="0.8128" layer="21" ratio="12">2</text>
<text x="-2.54" y="0.0508" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-1.3208" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6002" y1="1.8034" x2="1.6002" y2="3.6576" layer="51"/>
<rectangle x1="-0.4318" y1="-3.6576" x2="0.4318" y2="-1.8034" layer="51"/>
<rectangle x1="-2.7432" y1="-3.6576" x2="-1.8796" y2="-1.8034" layer="51"/>
<rectangle x1="1.8796" y1="-3.6576" x2="2.7432" y2="-1.8034" layer="51"/>
<rectangle x1="-1.6002" y1="1.8034" x2="1.6002" y2="3.6576" layer="51"/>
<rectangle x1="-0.4318" y1="-3.6576" x2="0.4318" y2="-1.8034" layer="51"/>
<rectangle x1="-2.7432" y1="-3.6576" x2="-1.8796" y2="-1.8034" layer="51"/>
<rectangle x1="1.8796" y1="-3.6576" x2="2.7432" y2="-1.8034" layer="51"/>
</package>
<package name="SOT23">
<description>&lt;b&gt;SMALL OUTLINE TRANSISTOR&lt;/b&gt;&lt;p&gt;
reflow soldering</description>
<wire x1="-1.973" y1="1.983" x2="1.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-1.983" x2="-1.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-1.983" x2="-1.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="1.983" x2="1.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="1.422" y1="0.66" x2="1.422" y2="-0.66" width="0.1524" layer="51"/>
<wire x1="1.422" y1="-0.66" x2="-1.422" y2="-0.66" width="0.1524" layer="51"/>
<wire x1="-1.422" y1="-0.66" x2="-1.422" y2="0.66" width="0.1524" layer="51"/>
<wire x1="-1.422" y1="0.66" x2="1.422" y2="0.66" width="0.1524" layer="51"/>
<wire x1="-1.422" y1="-0.152" x2="-1.422" y2="0.66" width="0.1524" layer="21"/>
<wire x1="-1.422" y1="0.66" x2="-0.864" y2="0.66" width="0.1524" layer="21"/>
<wire x1="0.864" y1="0.66" x2="1.422" y2="0.66" width="0.1524" layer="21"/>
<wire x1="1.422" y1="0.66" x2="1.422" y2="-0.152" width="0.1524" layer="21"/>
<smd name="3" x="0" y="1.1" dx="1" dy="1.4" layer="1"/>
<smd name="2" x="0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<smd name="1" x="-0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
<rectangle x1="-0.5001" y1="-0.3" x2="0.5001" y2="0.3" layer="35"/>
</package>
</packages>
<symbols>
<symbol name="78XX">
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="2.54" width="0.4064" layer="94"/>
<wire x1="7.62" y1="2.54" x2="-7.62" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="-5.08" width="0.4064" layer="94"/>
<text x="-7.62" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.032" y="-4.318" size="1.524" layer="95">GND</text>
<pin name="VI" x="-10.16" y="0" length="short" direction="in"/>
<pin name="GND" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="VO" x="10.16" y="0" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MCP1703" prefix="IC">
<description>&lt;b&gt;250 mA, 16V, Low Quiescent Current LDO Regulator&lt;/b&gt;&lt;p&gt;
Source: http://ww1.microchip.com/downloads/en/DeviceDoc/22049b.pdf</description>
<gates>
<gate name="G$1" symbol="78XX" x="0" y="0"/>
</gates>
<devices>
<device name="DB" package="SOT223">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VI" pad="1"/>
<connect gate="G$1" pin="VO" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CB" package="SOT23">
<connects>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="VI" pad="3"/>
<connect gate="G$1" pin="VO" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74xx-little-de">
<description>&lt;b&gt;Single and Dual Gates Family, US symbols&lt;/b&gt;&lt;p&gt;
Little logic devices from Texas Instruments&lt;br&gt;
TinyLogic(R) from FAIRCHILD Semiconductor TM
&lt;p&gt;
&lt;author&gt;Created by evgeni@eniks.com&lt;/author&gt;&lt;br&gt;
&lt;author&gt;Extended by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="YZP_R-XBGA-N6">
<description>&lt;b&gt;YZP (R-XBGA-N6)&lt;/b&gt; DIE-SIZE BALL GRID ARRAY&lt;p&gt;
NanoFree TM -  WCSP (DSBGA) 0.23-mm Large Bump - YZP (Pb-free)&lt;br&gt;
Source: http://focus.ti.com/lit/ds/symlink/sn74lvc1g3157</description>
<wire x1="-0.675" y1="0.425" x2="0.675" y2="0.425" width="0.1016" layer="51"/>
<wire x1="0.675" y1="0.425" x2="0.675" y2="-0.425" width="0.1016" layer="51"/>
<wire x1="0.675" y1="-0.425" x2="-0.675" y2="-0.425" width="0.1016" layer="51"/>
<wire x1="-0.675" y1="-0.425" x2="-0.675" y2="0.425" width="0.1016" layer="51"/>
<circle x="-0.5" y="-0.25" radius="0.175" width="0" layer="29"/>
<circle x="0" y="-0.25" radius="0.175" width="0" layer="29"/>
<circle x="0.5" y="-0.25" radius="0.175" width="0" layer="29"/>
<circle x="0.5" y="0.25" radius="0.175" width="0" layer="29"/>
<circle x="0" y="0.25" radius="0.175" width="0" layer="29"/>
<circle x="-0.5" y="0.25" radius="0.175" width="0" layer="29"/>
<smd name="A1" x="-0.5" y="-0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="B1" x="0" y="-0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="C1" x="0.5" y="-0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="C2" x="0.5" y="0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="B2" x="0" y="0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="A2" x="-0.5" y="0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<text x="-0.725" y="0.725" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.725" y="-2.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.675" y1="-0.4" x2="-0.225" y2="-0.175" layer="51"/>
<rectangle x1="-0.3" y1="-0.375" x2="-0.225" y2="-0.175" layer="21"/>
</package>
<package name="DBV_R-PDSO-G6">
<description>&lt;b&gt;DBV (R-PDSO-G6)&lt;/b&gt; PLASTIC SMALL-OUTLINE PACKAGE&lt;p&gt;
SOT (SOT-23) - DBV&lt;br&gt;
Source: http://focus.ti.com/lit/ds/symlink/sn74lvc1g3157.</description>
<wire x1="0" y1="-1.29" x2="0" y2="-1.3" width="0.01" layer="21"/>
<wire x1="1.42" y1="0.8" x2="1.42" y2="-0.8" width="0.127" layer="21"/>
<wire x1="1.42" y1="-0.8" x2="-1.42" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-1.42" y1="-0.8" x2="-1.42" y2="0.8" width="0.127" layer="21"/>
<wire x1="-1.42" y1="0.8" x2="1.42" y2="0.8" width="0.127" layer="51"/>
<smd name="1" x="-0.95" y="-1.29" dx="0.69" dy="0.99" layer="1" stop="no"/>
<smd name="2" x="0" y="-1.29" dx="0.69" dy="0.99" layer="1" stop="no"/>
<smd name="3" x="0.95" y="-1.29" dx="0.69" dy="0.99" layer="1" stop="no"/>
<smd name="4" x="0.95" y="1.3" dx="0.69" dy="0.99" layer="1" stop="no"/>
<smd name="6" x="-0.95" y="1.3" dx="0.69" dy="0.99" layer="1" stop="no"/>
<smd name="5" x="0" y="1.3" dx="0.69" dy="0.99" layer="1" stop="no"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.11" y1="0.8" x2="-0.78" y2="1.43" layer="51"/>
<rectangle x1="0.79" y1="0.8" x2="1.12" y2="1.42" layer="51"/>
<rectangle x1="-1.11" y1="-1.42" x2="-0.78" y2="-0.8" layer="51"/>
<rectangle x1="-0.16" y1="-1.42" x2="0.17" y2="-0.8" layer="51"/>
<rectangle x1="0.79" y1="-1.42" x2="1.12" y2="-0.8" layer="51"/>
<rectangle x1="-0.16" y1="0.8" x2="0.17" y2="1.42" layer="51"/>
<rectangle x1="-1.35" y1="0.75" x2="-0.55" y2="1.85" layer="29"/>
<rectangle x1="-0.4" y1="0.75" x2="0.4" y2="1.85" layer="29"/>
<rectangle x1="0.55" y1="0.75" x2="1.35" y2="1.85" layer="29"/>
<rectangle x1="0.55" y1="-1.85" x2="1.35" y2="-0.75" layer="29" rot="R180"/>
<rectangle x1="-0.4" y1="-1.85" x2="0.4" y2="-0.75" layer="29" rot="R180"/>
<rectangle x1="-1.35" y1="-1.85" x2="-0.55" y2="-0.75" layer="29" rot="R180"/>
<rectangle x1="-1.375" y1="-0.75" x2="-0.625" y2="0" layer="21"/>
</package>
<package name="DCK_R-PDSO-G6">
<description>&lt;b&gt;DCK (R-PDSO-G6)&lt;/b&gt; PLASTIC SMALL-OUTLINE PACKAGE&lt;p&gt;
SOT (SC-70) - DCK&lt;br&gt;
Source: http://focus.ti.com/lit/ds/symlink/sn74lvc1g3157.</description>
<wire x1="1" y1="0.55" x2="-1" y2="0.55" width="0.127" layer="51"/>
<wire x1="-1" y1="0.55" x2="-1" y2="-0.55" width="0.127" layer="21"/>
<wire x1="-1" y1="-0.55" x2="1" y2="-0.55" width="0.127" layer="51"/>
<wire x1="1" y1="-0.55" x2="1" y2="0.55" width="0.127" layer="21"/>
<smd name="1" x="-0.65" y="-0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="2" x="0" y="-0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="3" x="0.65" y="-0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="4" x="0.65" y="0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="6" x="-0.65" y="0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="5" x="0" y="0.85" dx="0.4" dy="0.7" layer="1"/>
<text x="-2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.125" y1="-1.05" x2="0.125" y2="-0.6" layer="51"/>
<rectangle x1="-0.775" y1="-1.05" x2="-0.525" y2="-0.6" layer="51"/>
<rectangle x1="0.525" y1="-1.05" x2="0.775" y2="-0.6" layer="51"/>
<rectangle x1="-0.775" y1="0.6" x2="-0.525" y2="1.05" layer="51"/>
<rectangle x1="0.525" y1="0.6" x2="0.775" y2="1.05" layer="51"/>
<rectangle x1="-0.125" y1="0.6" x2="0.125" y2="1.05" layer="51"/>
<rectangle x1="-0.95" y1="-0.5" x2="-0.275" y2="0" layer="21"/>
</package>
<package name="DRL_R-PDSO-N6">
<description>&lt;b&gt;DRL (R-PDSO-N6)&lt;/b&gt; PLASTIC SMALL OUTLINE&lt;p&gt;
SOT (SOT-553) -  DRL&lt;br&gt;
Source: http://focus.ti.com/lit/ds/symlink/sn74lvc1g3157.pdf</description>
<wire x1="-0.8" y1="0.6" x2="0.8" y2="0.6" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.6" x2="0.8" y2="-0.6" width="0.1016" layer="21"/>
<wire x1="0.8" y1="-0.6" x2="-0.8" y2="-0.6" width="0.1016" layer="51"/>
<wire x1="-0.8" y1="-0.6" x2="-0.8" y2="0.6" width="0.1016" layer="21"/>
<smd name="1" x="-0.5" y="-0.675" dx="0.35" dy="0.55" layer="1" stop="no"/>
<smd name="2" x="0" y="-0.675" dx="0.35" dy="0.55" layer="1" stop="no"/>
<smd name="3" x="0.5" y="-0.675" dx="0.35" dy="0.55" layer="1" stop="no"/>
<smd name="4" x="0.5" y="0.675" dx="0.35" dy="0.55" layer="1" rot="R180" stop="no"/>
<smd name="5" x="0" y="0.675" dx="0.35" dy="0.55" layer="1" rot="R180" stop="no"/>
<smd name="6" x="-0.5" y="0.675" dx="0.35" dy="0.55" layer="1" rot="R180" stop="no"/>
<text x="-1" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1" y="-2.5" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.775" y1="-0.575" x2="0" y2="0" layer="51"/>
<rectangle x1="-0.625" y1="-0.85" x2="-0.375" y2="-0.45" layer="51"/>
<rectangle x1="-0.7" y1="-0.975" x2="-0.3" y2="-0.375" layer="29"/>
<rectangle x1="-0.125" y1="-0.85" x2="0.125" y2="-0.45" layer="51"/>
<rectangle x1="-0.2" y1="-0.975" x2="0.2" y2="-0.375" layer="29"/>
<rectangle x1="0.375" y1="-0.85" x2="0.625" y2="-0.45" layer="51"/>
<rectangle x1="0.3" y1="-0.975" x2="0.7" y2="-0.375" layer="29"/>
<rectangle x1="0.375" y1="0.45" x2="0.625" y2="0.85" layer="51" rot="R180"/>
<rectangle x1="0.3" y1="0.375" x2="0.7" y2="0.975" layer="29" rot="R180"/>
<rectangle x1="-0.125" y1="0.45" x2="0.125" y2="0.85" layer="51" rot="R180"/>
<rectangle x1="-0.2" y1="0.375" x2="0.2" y2="0.975" layer="29" rot="R180"/>
<rectangle x1="-0.625" y1="0.45" x2="-0.375" y2="0.85" layer="51" rot="R180"/>
<rectangle x1="-0.7" y1="0.375" x2="-0.3" y2="0.975" layer="29" rot="R180"/>
<rectangle x1="-0.75" y1="-0.325" x2="0" y2="0" layer="21"/>
</package>
<package name="YEP_R-XBGA-N6">
<description>&lt;b&gt;YEP (R-XBGA-N6)&lt;/b&gt; DIE-SIZE BALL GRID ARRAY&lt;p&gt;
NanoStar TM - WCSP (DSBG A)0.23-mm Large Bump - YEP&lt;br&gt;
Source: http://focus.ti.com/lit/ds/symlink/sn74lvc1g3157</description>
<wire x1="-0.675" y1="0.425" x2="0.675" y2="0.425" width="0.1016" layer="51"/>
<wire x1="0.675" y1="0.425" x2="0.675" y2="-0.425" width="0.1016" layer="51"/>
<wire x1="0.675" y1="-0.425" x2="-0.675" y2="-0.425" width="0.1016" layer="51"/>
<wire x1="-0.675" y1="-0.425" x2="-0.675" y2="0.425" width="0.1016" layer="51"/>
<circle x="-0.5" y="-0.25" radius="0.175" width="0" layer="29"/>
<circle x="0" y="-0.25" radius="0.175" width="0" layer="29"/>
<circle x="0.5" y="-0.25" radius="0.175" width="0" layer="29"/>
<circle x="0.5" y="0.25" radius="0.175" width="0" layer="29"/>
<circle x="0" y="0.25" radius="0.175" width="0" layer="29"/>
<circle x="-0.5" y="0.25" radius="0.175" width="0" layer="29"/>
<smd name="A1" x="-0.5" y="-0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="B1" x="0" y="-0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="C1" x="0.5" y="-0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="C2" x="0.5" y="0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="B2" x="0" y="0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="A2" x="-0.5" y="0.25" dx="0.3" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<text x="-0.725" y="0.725" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.725" y="-2.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.675" y1="-0.4" x2="-0.225" y2="-0.175" layer="51"/>
<rectangle x1="-0.3" y1="-0.375" x2="-0.225" y2="-0.175" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="743157">
<wire x1="-5.08" y1="-5.08" x2="7.62" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="7.62" width="0.4064" layer="94"/>
<wire x1="7.62" y1="7.62" x2="-5.08" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<text x="-5.08" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="!A!/B" x="-7.62" y="-2.54" length="short" direction="in"/>
<pin name="A" x="-7.62" y="5.08" length="short"/>
<pin name="B" x="-7.62" y="2.54" length="short"/>
<pin name="X" x="10.16" y="2.54" length="short" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-6.35" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*1G3157" prefix="IC">
<description>&lt;b&gt;Single-Pole, Double-Throw Analog Switch&lt;/b&gt;&lt;p&gt;
Source: http://focus.ti.com/lit/ds/symlink/sn74lvc1g3157.pdf</description>
<gates>
<gate name="G$1" symbol="743157" x="0" y="0"/>
<gate name="P" symbol="PWRN" x="17.78" y="0" addlevel="request"/>
</gates>
<devices>
<device name="ZYPR" package="YZP_R-XBGA-N6">
<connects>
<connect gate="G$1" pin="!A!/B" pad="A2"/>
<connect gate="G$1" pin="A" pad="C1"/>
<connect gate="G$1" pin="B" pad="A1"/>
<connect gate="G$1" pin="X" pad="C2"/>
<connect gate="P" pin="GND" pad="B1"/>
<connect gate="P" pin="VCC" pad="B2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DBVR" package="DBV_R-PDSO-G6">
<connects>
<connect gate="G$1" pin="!A!/B" pad="6"/>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="B" pad="1"/>
<connect gate="G$1" pin="X" pad="4"/>
<connect gate="P" pin="GND" pad="2"/>
<connect gate="P" pin="VCC" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DCKR" package="DCK_R-PDSO-G6">
<connects>
<connect gate="G$1" pin="!A!/B" pad="6"/>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="B" pad="1"/>
<connect gate="G$1" pin="X" pad="4"/>
<connect gate="P" pin="GND" pad="2"/>
<connect gate="P" pin="VCC" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DRLR" package="DRL_R-PDSO-N6">
<connects>
<connect gate="G$1" pin="!A!/B" pad="6"/>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="B" pad="1"/>
<connect gate="G$1" pin="X" pad="4"/>
<connect gate="P" pin="GND" pad="2"/>
<connect gate="P" pin="VCC" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="YEPR" package="YEP_R-XBGA-N6">
<connects>
<connect gate="G$1" pin="!A!/B" pad="A2"/>
<connect gate="G$1" pin="A" pad="C1"/>
<connect gate="G$1" pin="B" pad="A1"/>
<connect gate="G$1" pin="X" pad="C2"/>
<connect gate="P" pin="GND" pad="B1"/>
<connect gate="P" pin="VCC" pad="B2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0.4064" drill="0">
<clearance class="0" value="0.2032"/>
</class>
<class number="1" name="power" width="0.6096" drill="0">
<clearance class="1" value="0.3048"/>
</class>
</classes>
<parts>
<part name="U$1" library="custom" deviceset="NINTENDO-MULTI" device=""/>
<part name="U$2" library="custom" deviceset="NINTENDO-MULTI" device=""/>
<part name="U$3" library="custom" deviceset="NINTENDO-MULTI" device=""/>
<part name="U$4" library="custom" deviceset="NINTENDO-MULTI" device=""/>
<part name="SUPPLY1" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY2" library="supply2" deviceset="VCC" device=""/>
<part name="SUPPLY3" library="supply2" deviceset="VCC" device=""/>
<part name="IC1" library="linear" deviceset="MCP1703" device="CB"/>
<part name="IC2" library="74xx-little-de" deviceset="74*1G3157" device="DBVR"/>
<part name="IC3" library="74xx-little-de" deviceset="74*1G3157" device="DBVR"/>
<part name="IC4" library="74xx-little-de" deviceset="74*1G3157" device="DBVR"/>
<part name="IC5" library="74xx-little-de" deviceset="74*1G3157" device="DBVR"/>
<part name="SUPPLY4" library="supply2" deviceset="VCC" device=""/>
<part name="SUPPLY5" library="supply2" deviceset="GND" device=""/>
<part name="U$5" library="custom" deviceset="TEENSY_HEADERS" device=""/>
<part name="SUPPLY6" library="supply2" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="121.92" y="86.36" rot="R270"/>
<instance part="U$2" gate="G$1" x="116.84" y="55.88" rot="R270"/>
<instance part="U$3" gate="G$1" x="157.48" y="66.04" rot="R270"/>
<instance part="U$4" gate="G$1" x="160.02" y="35.56" rot="R270"/>
<instance part="SUPPLY1" gate="GND" x="124.46" y="15.24"/>
<instance part="SUPPLY2" gate="G$1" x="33.02" y="20.32" rot="R90"/>
<instance part="SUPPLY3" gate="G$1" x="165.1" y="104.14"/>
<instance part="IC1" gate="G$1" x="182.88" y="88.9" rot="R90"/>
<instance part="IC2" gate="G$1" x="101.6" y="86.36" rot="R180"/>
<instance part="IC3" gate="G$1" x="101.6" y="55.88" rot="R180"/>
<instance part="IC4" gate="G$1" x="139.7" y="66.04" rot="R180"/>
<instance part="IC5" gate="G$1" x="144.78" y="35.56" rot="R180"/>
<instance part="IC2" gate="P" x="-25.4" y="109.22"/>
<instance part="IC3" gate="P" x="-17.78" y="109.22"/>
<instance part="IC5" gate="P" x="-10.16" y="109.22"/>
<instance part="IC4" gate="P" x="-2.54" y="109.22"/>
<instance part="SUPPLY4" gate="G$1" x="-25.4" y="121.92"/>
<instance part="SUPPLY5" gate="GND" x="-25.4" y="96.52"/>
<instance part="U$5" gate="G$1" x="53.34" y="53.34" rot="R180"/>
<instance part="SUPPLY6" gate="GND" x="66.04" y="15.24"/>
</instances>
<busses>
<bus name="N64_OR_NES[0..3]">
<segment>
<wire x1="30.48" y1="30.48" x2="30.48" y2="111.76" width="0.762" layer="92"/>
<wire x1="30.48" y1="111.76" x2="152.4" y2="111.76" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="S_OR_NES[0..3]">
<segment>
<wire x1="33.02" y1="63.5" x2="33.02" y2="109.22" width="0.762" layer="92"/>
<wire x1="33.02" y1="109.22" x2="162.56" y2="109.22" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="DATA[0..3]">
<segment>
<wire x1="71.12" y1="33.02" x2="71.12" y2="25.4" width="0.762" layer="92"/>
<wire x1="71.12" y1="25.4" x2="134.62" y2="25.4" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="CLOCK" class="0">
<segment>
<wire x1="66.04" y1="43.18" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
<wire x1="78.74" y1="43.18" x2="78.74" y2="63.5" width="0.1524" layer="91"/>
<wire x1="78.74" y1="63.5" x2="78.74" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="78.74" y1="73.66" x2="78.74" y2="93.98" width="0.1524" layer="91"/>
<wire x1="119.38" y1="93.98" x2="78.74" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="2"/>
<wire x1="114.3" y1="63.5" x2="78.74" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="2"/>
<wire x1="157.48" y1="43.18" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
<junction x="78.74" y="43.18"/>
<junction x="78.74" y="63.5"/>
<pinref part="U$3" gate="G$1" pin="2"/>
<wire x1="154.94" y1="73.66" x2="78.74" y2="73.66" width="0.1524" layer="91"/>
<junction x="78.74" y="73.66"/>
<pinref part="U$5" gate="G$1" pin="_D7"/>
</segment>
</net>
<net name="LATCH" class="0">
<segment>
<wire x1="66.04" y1="40.64" x2="81.28" y2="40.64" width="0.1524" layer="91"/>
<wire x1="81.28" y1="91.44" x2="81.28" y2="71.12" width="0.1524" layer="91"/>
<wire x1="81.28" y1="71.12" x2="81.28" y2="60.96" width="0.1524" layer="91"/>
<wire x1="81.28" y1="60.96" x2="81.28" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="3"/>
<wire x1="81.28" y1="91.44" x2="119.38" y2="91.44" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="3"/>
<wire x1="114.3" y1="60.96" x2="81.28" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="3"/>
<wire x1="157.48" y1="40.64" x2="81.28" y2="40.64" width="0.1524" layer="91"/>
<junction x="81.28" y="40.64"/>
<junction x="81.28" y="60.96"/>
<junction x="81.28" y="71.12"/>
<pinref part="U$3" gate="G$1" pin="3"/>
<wire x1="81.28" y1="71.12" x2="154.94" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="_D6"/>
</segment>
</net>
<net name="VCC" class="1">
<segment>
<pinref part="SUPPLY2" gate="G$1" pin="VCC"/>
<wire x1="35.56" y1="20.32" x2="40.64" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="5V"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="10"/>
<pinref part="SUPPLY3" gate="G$1" pin="VCC"/>
<wire x1="124.46" y1="93.98" x2="165.1" y2="93.98" width="0.1524" layer="91"/>
<wire x1="165.1" y1="93.98" x2="165.1" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="10"/>
<wire x1="162.56" y1="43.18" x2="165.1" y2="43.18" width="0.1524" layer="91"/>
<wire x1="165.1" y1="43.18" x2="165.1" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="10"/>
<wire x1="165.1" y1="50.8" x2="165.1" y2="73.66" width="0.1524" layer="91"/>
<wire x1="165.1" y1="73.66" x2="165.1" y2="93.98" width="0.1524" layer="91"/>
<wire x1="160.02" y1="73.66" x2="165.1" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="10"/>
<wire x1="119.38" y1="63.5" x2="121.92" y2="63.5" width="0.1524" layer="91"/>
<wire x1="121.92" y1="63.5" x2="121.92" y2="50.8" width="0.1524" layer="91"/>
<wire x1="121.92" y1="50.8" x2="165.1" y2="50.8" width="0.1524" layer="91"/>
<junction x="165.1" y="50.8"/>
<junction x="165.1" y="73.66"/>
<junction x="165.1" y="93.98"/>
<wire x1="182.88" y1="73.66" x2="165.1" y2="73.66" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VI"/>
<wire x1="182.88" y1="73.66" x2="182.88" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="G$1" pin="VCC"/>
<pinref part="IC2" gate="P" pin="VCC"/>
<wire x1="-25.4" y1="119.38" x2="-25.4" y2="116.84" width="0.1524" layer="91"/>
<pinref part="IC3" gate="P" pin="VCC"/>
<wire x1="-25.4" y1="116.84" x2="-17.78" y2="116.84" width="0.1524" layer="91"/>
<pinref part="IC5" gate="P" pin="VCC"/>
<wire x1="-17.78" y1="116.84" x2="-10.16" y2="116.84" width="0.1524" layer="91"/>
<pinref part="IC4" gate="P" pin="VCC"/>
<wire x1="-10.16" y1="116.84" x2="-2.54" y2="116.84" width="0.1524" layer="91"/>
<junction x="-2.54" y="116.84"/>
<junction x="-10.16" y="116.84"/>
<junction x="-17.78" y="116.84"/>
<junction x="-25.4" y="116.84"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="7"/>
<wire x1="114.3" y1="48.26" x2="114.3" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="7"/>
<wire x1="114.3" y1="20.32" x2="124.46" y2="20.32" width="0.1524" layer="91"/>
<wire x1="124.46" y1="20.32" x2="157.48" y2="20.32" width="0.1524" layer="91"/>
<wire x1="157.48" y1="20.32" x2="157.48" y2="27.94" width="0.1524" layer="91"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<wire x1="124.46" y1="17.78" x2="124.46" y2="20.32" width="0.1524" layer="91"/>
<wire x1="124.46" y1="76.2" x2="124.46" y2="48.26" width="0.1524" layer="91"/>
<junction x="124.46" y="20.32"/>
<wire x1="124.46" y1="48.26" x2="124.46" y2="20.32" width="0.1524" layer="91"/>
<wire x1="157.48" y1="20.32" x2="198.12" y2="20.32" width="0.1524" layer="91"/>
<wire x1="124.46" y1="76.2" x2="116.84" y2="76.2" width="0.1524" layer="91"/>
<wire x1="116.84" y1="76.2" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="7"/>
<wire x1="116.84" y1="78.74" x2="119.38" y2="78.74" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND"/>
<wire x1="190.5" y1="88.9" x2="198.12" y2="88.9" width="0.1524" layer="91"/>
<wire x1="198.12" y1="88.9" x2="198.12" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="7"/>
<wire x1="154.94" y1="58.42" x2="154.94" y2="48.26" width="0.1524" layer="91"/>
<wire x1="154.94" y1="48.26" x2="124.46" y2="48.26" width="0.1524" layer="91"/>
<junction x="124.46" y="48.26"/>
<junction x="157.48" y="20.32"/>
</segment>
<segment>
<pinref part="IC2" gate="P" pin="GND"/>
<pinref part="IC3" gate="P" pin="GND"/>
<wire x1="-25.4" y1="101.6" x2="-17.78" y2="101.6" width="0.1524" layer="91"/>
<pinref part="IC5" gate="P" pin="GND"/>
<wire x1="-17.78" y1="101.6" x2="-10.16" y2="101.6" width="0.1524" layer="91"/>
<pinref part="IC4" gate="P" pin="GND"/>
<wire x1="-10.16" y1="101.6" x2="-2.54" y2="101.6" width="0.1524" layer="91"/>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<wire x1="-25.4" y1="99.06" x2="-25.4" y2="101.6" width="0.1524" layer="91"/>
<junction x="-17.78" y="101.6"/>
<junction x="-10.16" y="101.6"/>
<junction x="-2.54" y="101.6"/>
<junction x="-25.4" y="101.6"/>
</segment>
<segment>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<pinref part="U$5" gate="G$1" pin="_GND"/>
<wire x1="66.04" y1="17.78" x2="66.04" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V33" class="0">
<segment>
<wire x1="170.18" y1="114.3" x2="127" y2="114.3" width="0.1524" layer="91"/>
<wire x1="127" y1="114.3" x2="127" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="5"/>
<wire x1="127" y1="83.82" x2="127" y2="53.34" width="0.1524" layer="91"/>
<wire x1="127" y1="53.34" x2="114.3" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="5"/>
<wire x1="119.38" y1="83.82" x2="127" y2="83.82" width="0.1524" layer="91"/>
<wire x1="170.18" y1="114.3" x2="170.18" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="5"/>
<wire x1="170.18" y1="63.5" x2="154.94" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="5"/>
<wire x1="157.48" y1="33.02" x2="170.18" y2="33.02" width="0.1524" layer="91"/>
<wire x1="170.18" y1="33.02" x2="170.18" y2="63.5" width="0.1524" layer="91"/>
<junction x="170.18" y="63.5"/>
<junction x="127" y="83.82"/>
<pinref part="IC1" gate="G$1" pin="VO"/>
<wire x1="182.88" y1="99.06" x2="182.88" y2="114.3" width="0.1524" layer="91"/>
<wire x1="182.88" y1="114.3" x2="170.18" y2="114.3" width="0.1524" layer="91"/>
<junction x="170.18" y="114.3"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="4"/>
<wire x1="157.48" y1="38.1" x2="154.94" y2="38.1" width="0.1524" layer="91"/>
<pinref part="IC5" gate="G$1" pin="B"/>
<wire x1="152.4" y1="33.02" x2="154.94" y2="33.02" width="0.1524" layer="91"/>
<wire x1="154.94" y1="33.02" x2="154.94" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="A"/>
<pinref part="U$4" gate="G$1" pin="6"/>
<wire x1="152.4" y1="30.48" x2="157.48" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="A"/>
<pinref part="U$1" gate="G$1" pin="6"/>
<wire x1="109.22" y1="81.28" x2="119.38" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="4"/>
<wire x1="119.38" y1="88.9" x2="116.84" y2="88.9" width="0.1524" layer="91"/>
<wire x1="116.84" y1="88.9" x2="116.84" y2="83.82" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="B"/>
<wire x1="116.84" y1="83.82" x2="109.22" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="4"/>
<wire x1="111.76" y1="58.42" x2="114.3" y2="58.42" width="0.1524" layer="91"/>
<wire x1="111.76" y1="53.34" x2="111.76" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="B"/>
<wire x1="109.22" y1="53.34" x2="111.76" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="A"/>
<pinref part="U$2" gate="G$1" pin="6"/>
<wire x1="109.22" y1="50.8" x2="114.3" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N64_OR_NES0" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="!A!/B"/>
<wire x1="109.22" y1="111.76" x2="109.22" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_B3"/>
<wire x1="40.64" y1="30.48" x2="30.48" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N64_OR_NES1" class="0">
<segment>
<wire x1="86.36" y1="111.76" x2="86.36" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="!A!/B"/>
<wire x1="86.36" y1="66.04" x2="109.22" y2="66.04" width="0.1524" layer="91"/>
<wire x1="109.22" y1="66.04" x2="109.22" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_B2"/>
<wire x1="40.64" y1="33.02" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N64_OR_NES2" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="!A!/B"/>
<wire x1="147.32" y1="68.58" x2="147.32" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_B1"/>
<wire x1="40.64" y1="35.56" x2="30.48" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N64_OR_NES3" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="!A!/B"/>
<wire x1="152.4" y1="38.1" x2="152.4" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_B0"/>
<wire x1="40.64" y1="38.1" x2="30.48" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="S_OR_NES0" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="1"/>
<wire x1="119.38" y1="96.52" x2="119.38" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_F7"/>
<wire x1="40.64" y1="71.12" x2="33.02" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="S_OR_NES1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="1"/>
<wire x1="114.3" y1="66.04" x2="114.3" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_F6"/>
<wire x1="40.64" y1="68.58" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="S_OR_NES2" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="1"/>
<wire x1="154.94" y1="76.2" x2="154.94" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_F5"/>
<wire x1="40.64" y1="66.04" x2="33.02" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="S_OR_NES3" class="0">
<segment>
<wire x1="162.56" y1="109.22" x2="162.56" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="1"/>
<wire x1="162.56" y1="45.72" x2="157.48" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_F4"/>
<wire x1="40.64" y1="63.5" x2="33.02" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="A"/>
<pinref part="U$3" gate="G$1" pin="6"/>
<wire x1="147.32" y1="60.96" x2="154.94" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="B"/>
<wire x1="147.32" y1="63.5" x2="149.86" y2="63.5" width="0.1524" layer="91"/>
<wire x1="149.86" y1="63.5" x2="149.86" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="4"/>
<wire x1="149.86" y1="68.58" x2="154.94" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA0" class="0">
<segment>
<wire x1="91.44" y1="83.82" x2="83.82" y2="83.82" width="0.1524" layer="91"/>
<wire x1="83.82" y1="25.4" x2="83.82" y2="83.82" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="X"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_D3"/>
<wire x1="66.04" y1="33.02" x2="71.12" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA1" class="0">
<segment>
<wire x1="86.36" y1="30.48" x2="86.36" y2="33.02" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="X"/>
<wire x1="86.36" y1="33.02" x2="86.36" y2="53.34" width="0.1524" layer="91"/>
<wire x1="86.36" y1="53.34" x2="91.44" y2="53.34" width="0.1524" layer="91"/>
<wire x1="86.36" y1="25.4" x2="86.36" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_D2"/>
<wire x1="66.04" y1="30.48" x2="71.12" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA2" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="X"/>
<wire x1="129.54" y1="63.5" x2="129.54" y2="30.48" width="0.1524" layer="91"/>
<wire x1="129.54" y1="30.48" x2="129.54" y2="27.94" width="0.1524" layer="91"/>
<wire x1="129.54" y1="25.4" x2="129.54" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_D1"/>
<wire x1="66.04" y1="27.94" x2="71.12" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA3" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="X"/>
<wire x1="134.62" y1="25.4" x2="134.62" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="_D0"/>
<wire x1="66.04" y1="25.4" x2="71.12" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
