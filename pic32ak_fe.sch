<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
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
<library name="pic32A">
<packages>
<package name="TQFP64_PT_MCH">
<smd name="1" x="-5.6769" y="3.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="2" x="-5.6769" y="3.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="3" x="-5.6769" y="2.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="4" x="-5.6769" y="2.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="5" x="-5.6769" y="1.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="6" x="-5.6769" y="1.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="7" x="-5.6769" y="0.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="8" x="-5.6769" y="0.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="9" x="-5.6769" y="-0.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="10" x="-5.6769" y="-0.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="11" x="-5.6769" y="-1.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="12" x="-5.6769" y="-1.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="13" x="-5.6769" y="-2.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="14" x="-5.6769" y="-2.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="15" x="-5.6769" y="-3.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="16" x="-5.6769" y="-3.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="17" x="-3.75" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="18" x="-3.25" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="19" x="-2.75" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="20" x="-2.25" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="21" x="-1.75" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="22" x="-1.25" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="23" x="-0.75" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="24" x="-0.25" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="25" x="0.25" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="26" x="0.75" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="27" x="1.25" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="28" x="1.75" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="29" x="2.25" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="30" x="2.75" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="31" x="3.25" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="32" x="3.75" y="-5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="33" x="5.6769" y="-3.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="34" x="5.6769" y="-3.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="35" x="5.6769" y="-2.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="36" x="5.6769" y="-2.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="37" x="5.6769" y="-1.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="38" x="5.6769" y="-1.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="39" x="5.6769" y="-0.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="40" x="5.6769" y="-0.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="41" x="5.6769" y="0.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="42" x="5.6769" y="0.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="43" x="5.6769" y="1.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="44" x="5.6769" y="1.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="45" x="5.6769" y="2.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="46" x="5.6769" y="2.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="47" x="5.6769" y="3.25" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="48" x="5.6769" y="3.75" dx="0.2794" dy="1.3462" layer="1" rot="R270"/>
<smd name="49" x="3.75" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="50" x="3.25" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="51" x="2.75" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="52" x="2.25" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="53" x="1.75" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="54" x="1.25" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="55" x="0.75" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="56" x="0.25" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="57" x="-0.25" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="58" x="-0.75" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="59" x="-1.25" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="60" x="-1.75" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="61" x="-2.25" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="62" x="-2.75" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="63" x="-3.25" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<smd name="64" x="-3.75" y="5.6769" dx="0.2794" dy="1.3462" layer="1" rot="R180"/>
<wire x1="5.6896" y1="3.7592" x2="5.9944" y2="3.7592" width="0.1524" layer="48"/>
<wire x1="3.6068" y1="5.0038" x2="3.8862" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="5.0038" x2="3.8862" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="5.9944" x2="3.6068" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="5.9944" x2="3.6068" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="5.0038" x2="3.3782" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="5.0038" x2="3.3782" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="5.9944" x2="3.0988" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="5.9944" x2="3.0988" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.0038" x2="2.8956" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="5.0038" x2="2.8956" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="5.9944" x2="2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.9944" x2="2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="5.0038" x2="2.3876" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="5.0038" x2="2.3876" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="5.9944" x2="2.1082" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="5.9944" x2="2.1082" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="5.0038" x2="1.8796" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="5.0038" x2="1.8796" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="5.9944" x2="1.6002" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="5.9944" x2="1.6002" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="5.0038" x2="1.397" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.397" y1="5.0038" x2="1.397" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.397" y1="5.9944" x2="1.1176" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="5.9944" x2="1.1176" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="5.0038" x2="0.889" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.889" y1="5.0038" x2="0.889" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.889" y1="5.9944" x2="0.6096" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="5.9944" x2="0.6096" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="5.0038" x2="0.381" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.381" y1="5.0038" x2="0.381" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.381" y1="5.9944" x2="0.1016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="5.9944" x2="0.1016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="5.0038" x2="-0.1016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="5.0038" x2="-0.1016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="5.9944" x2="-0.381" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="5.9944" x2="-0.381" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="5.0038" x2="-0.6096" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="5.0038" x2="-0.6096" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="5.9944" x2="-0.889" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="5.9944" x2="-0.889" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="5.0038" x2="-1.1176" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="5.0038" x2="-1.1176" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="5.9944" x2="-1.397" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="5.9944" x2="-1.397" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="5.0038" x2="-1.6002" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="5.0038" x2="-1.6002" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="5.9944" x2="-1.8796" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="5.9944" x2="-1.8796" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="5.0038" x2="-2.1082" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="5.0038" x2="-2.1082" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="5.9944" x2="-2.3876" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="5.9944" x2="-2.3876" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="5.0038" x2="-2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.0038" x2="-2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.9944" x2="-2.8956" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="5.9944" x2="-2.8956" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="5.0038" x2="-3.0988" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="5.0038" x2="-3.0988" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="5.9944" x2="-3.3782" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="5.9944" x2="-3.3782" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="5.0038" x2="-3.7338" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.7338" y1="5.0038" x2="-3.6068" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="5.0038" x2="-3.6068" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="5.9944" x2="-3.8862" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="5.9944" x2="-3.8862" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.6068" x2="-5.0038" y2="3.7338" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7338" x2="-5.0038" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.8862" x2="-5.9944" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.8862" x2="-5.9944" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.6068" x2="-5.0038" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.0988" x2="-5.0038" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.3782" x2="-5.9944" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.3782" x2="-5.9944" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.0988" x2="-5.0038" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.6162" x2="-5.0038" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.8956" x2="-5.9944" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.8956" x2="-5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.6162" x2="-5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.1082" x2="-5.0038" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.3876" x2="-5.9944" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.3876" x2="-5.9944" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.1082" x2="-5.0038" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.6002" x2="-5.0038" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.8796" x2="-5.9944" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.8796" x2="-5.9944" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.6002" x2="-5.0038" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.1176" x2="-5.0038" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.397" x2="-5.9944" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.397" x2="-5.9944" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.1176" x2="-5.0038" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.6096" x2="-5.0038" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.889" x2="-5.9944" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.889" x2="-5.9944" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.6096" x2="-5.0038" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.1016" x2="-5.0038" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.381" x2="-5.9944" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.381" x2="-5.9944" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.1016" x2="-5.0038" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.381" x2="-5.0038" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.1016" x2="-5.9944" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.1016" x2="-5.9944" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.381" x2="-5.0038" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.889" x2="-5.0038" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.6096" x2="-5.9944" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.6096" x2="-5.9944" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.889" x2="-5.0038" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.397" x2="-5.0038" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.1176" x2="-5.9944" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.1176" x2="-5.9944" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.397" x2="-5.0038" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.8796" x2="-5.0038" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.6002" x2="-5.9944" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.6002" x2="-5.9944" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.8796" x2="-5.0038" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.3876" x2="-5.0038" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.1082" x2="-5.9944" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.1082" x2="-5.9944" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.3876" x2="-5.0038" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.8956" x2="-5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.6162" x2="-5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.6162" x2="-5.9944" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.8956" x2="-5.0038" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.3782" x2="-5.0038" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.0988" x2="-5.9944" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.0988" x2="-5.9944" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.3782" x2="-5.0038" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.8862" x2="-5.0038" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.6068" x2="-5.9944" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.6068" x2="-5.9944" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.8862" x2="-5.0038" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-5.0038" x2="-3.8862" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-5.0038" x2="-3.8862" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-5.9944" x2="-3.6068" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-5.9944" x2="-3.6068" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-5.0038" x2="-3.3782" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-5.0038" x2="-3.3782" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-5.9944" x2="-3.0988" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-5.9944" x2="-3.0988" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.0038" x2="-2.8956" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-5.0038" x2="-2.8956" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-5.9944" x2="-2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.9944" x2="-2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-5.0038" x2="-2.3876" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-5.0038" x2="-2.3876" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-5.9944" x2="-2.1082" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-5.9944" x2="-2.1082" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-5.0038" x2="-1.8796" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-5.0038" x2="-1.8796" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-5.9944" x2="-1.6002" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-5.9944" x2="-1.6002" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-5.0038" x2="-1.397" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-5.0038" x2="-1.397" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-5.9944" x2="-1.1176" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-5.9944" x2="-1.1176" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-5.0038" x2="-0.889" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-5.0038" x2="-0.889" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-5.9944" x2="-0.6096" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-5.9944" x2="-0.6096" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-5.0038" x2="-0.381" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-5.0038" x2="-0.381" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-5.9944" x2="-0.1016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-5.9944" x2="-0.1016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-5.0038" x2="0.1016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-5.0038" x2="0.1016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-5.9944" x2="0.381" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-5.9944" x2="0.381" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-5.0038" x2="0.6096" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-5.0038" x2="0.6096" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-5.9944" x2="0.889" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-5.9944" x2="0.889" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-5.0038" x2="1.1176" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-5.0038" x2="1.1176" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-5.9944" x2="1.397" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-5.9944" x2="1.397" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-5.0038" x2="1.6002" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-5.0038" x2="1.6002" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-5.9944" x2="1.8796" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-5.9944" x2="1.8796" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-5.0038" x2="2.1082" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-5.0038" x2="2.1082" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-5.9944" x2="2.3876" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-5.9944" x2="2.3876" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-5.0038" x2="2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.0038" x2="2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.9944" x2="2.8956" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-5.9944" x2="2.8956" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-5.0038" x2="3.0988" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-5.0038" x2="3.0988" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-5.9944" x2="3.3782" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-5.9944" x2="3.3782" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-5.0038" x2="3.6068" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-5.0038" x2="3.6068" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-5.9944" x2="3.8862" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-5.9944" x2="3.8862" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.6068" x2="5.0038" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.8862" x2="5.9944" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.8862" x2="5.9944" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.6068" x2="5.0038" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.0988" x2="5.0038" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.3782" x2="5.9944" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.3782" x2="5.9944" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.0988" x2="5.0038" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.6162" x2="5.0038" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.8956" x2="5.9944" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.8956" x2="5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.6162" x2="5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.1082" x2="5.0038" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.3876" x2="5.9944" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.3876" x2="5.9944" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.1082" x2="5.0038" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.6002" x2="5.0038" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.8796" x2="5.9944" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.8796" x2="5.9944" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.6002" x2="5.0038" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.1176" x2="5.0038" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.397" x2="5.9944" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.397" x2="5.9944" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.1176" x2="5.0038" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.6096" x2="5.0038" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.889" x2="5.9944" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.889" x2="5.9944" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.6096" x2="5.0038" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.1016" x2="5.0038" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.381" x2="5.0038" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.1016" x2="5.9944" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.1016" x2="5.9944" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.381" x2="5.0038" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.889" x2="5.0038" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.6096" x2="5.9944" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.6096" x2="5.9944" y2="0.889" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.889" x2="5.0038" y2="0.889" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.397" x2="5.0038" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.1176" x2="5.9944" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.1176" x2="5.9944" y2="1.397" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.397" x2="5.0038" y2="1.397" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.8796" x2="5.0038" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.6002" x2="5.9944" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.6002" x2="5.9944" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.8796" x2="5.0038" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.3876" x2="5.0038" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.1082" x2="5.9944" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.1082" x2="5.9944" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.3876" x2="5.0038" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.8956" x2="5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.6162" x2="5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.6162" x2="5.9944" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.8956" x2="5.0038" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.3782" x2="5.0038" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.0988" x2="5.9944" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.0988" x2="5.9944" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.3782" x2="5.0038" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.8862" x2="5.0038" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.6068" x2="5.9944" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.6068" x2="5.9944" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.8862" x2="5.0038" y2="3.8862" width="0.1524" layer="51"/>
<text x="-5.207" y="3.3528" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="TQFP64_PT_MCH-M">
<smd name="1" x="-5.7785" y="3.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="2" x="-5.7785" y="3.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="3" x="-5.7785" y="2.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="4" x="-5.7785" y="2.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="5" x="-5.7785" y="1.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="6" x="-5.7785" y="1.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="7" x="-5.7785" y="0.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="8" x="-5.7785" y="0.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="9" x="-5.7785" y="-0.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="10" x="-5.7785" y="-0.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="11" x="-5.7785" y="-1.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="12" x="-5.7785" y="-1.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="13" x="-5.7785" y="-2.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="14" x="-5.7785" y="-2.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="15" x="-5.7785" y="-3.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="16" x="-5.7785" y="-3.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="17" x="-3.75" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="18" x="-3.25" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="19" x="-2.75" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="20" x="-2.25" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="21" x="-1.75" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="22" x="-1.25" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="23" x="-0.75" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="24" x="-0.25" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="25" x="0.25" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="26" x="0.75" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="27" x="1.25" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="28" x="1.75" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="29" x="2.25" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="30" x="2.75" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="31" x="3.25" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="32" x="3.75" y="-5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="33" x="5.7785" y="-3.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="34" x="5.7785" y="-3.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="35" x="5.7785" y="-2.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="36" x="5.7785" y="-2.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="37" x="5.7785" y="-1.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="38" x="5.7785" y="-1.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="39" x="5.7785" y="-0.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="40" x="5.7785" y="-0.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="41" x="5.7785" y="0.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="42" x="5.7785" y="0.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="43" x="5.7785" y="1.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="44" x="5.7785" y="1.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="45" x="5.7785" y="2.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="46" x="5.7785" y="2.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="47" x="5.7785" y="3.25" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="48" x="5.7785" y="3.75" dx="0.2794" dy="1.5494" layer="1" rot="R270"/>
<smd name="49" x="3.75" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="50" x="3.25" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="51" x="2.75" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="52" x="2.25" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="53" x="1.75" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="54" x="1.25" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="55" x="0.75" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="56" x="0.25" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="57" x="-0.25" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="58" x="-0.75" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="59" x="-1.25" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="60" x="-1.75" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="61" x="-2.25" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="62" x="-2.75" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="63" x="-3.25" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<smd name="64" x="-3.75" y="5.7785" dx="0.2794" dy="1.5494" layer="1" rot="R180"/>
<wire x1="-5.1308" y1="5.1308" x2="-5.1308" y2="4.2164" width="0.1524" layer="21"/>
<wire x1="-5.1308" y1="-5.1308" x2="-4.2164" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="-5.1308" x2="5.1308" y2="-4.2164" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="5.1308" x2="4.2164" y2="5.1308" width="0.1524" layer="21"/>
<wire x1="-5.1308" y1="-4.2164" x2="-5.1308" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="4.2164" y1="-5.1308" x2="5.1308" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="4.2164" x2="5.1308" y2="5.1308" width="0.1524" layer="21"/>
<wire x1="-4.2164" y1="5.1308" x2="-5.1308" y2="5.1308" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-7.0612" y="-0.5595"/>
<vertex x="-7.0612" y="-0.9405"/>
<vertex x="-6.8072" y="-0.9405"/>
<vertex x="-6.8072" y="-0.5595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-2.4405" y="-6.8072"/>
<vertex x="-2.4405" y="-7.0612"/>
<vertex x="-2.0595" y="-7.0612"/>
<vertex x="-2.0595" y="-6.8072"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="2.5595" y="-6.8072"/>
<vertex x="2.5595" y="-7.0612"/>
<vertex x="2.9405" y="-7.0612"/>
<vertex x="2.9405" y="-6.8072"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="7.0612" y="-0.0595"/>
<vertex x="7.0612" y="-0.4405"/>
<vertex x="6.8072" y="-0.4405"/>
<vertex x="6.8072" y="-0.0595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.0595" y="6.8072"/>
<vertex x="3.0595" y="7.0612"/>
<vertex x="3.4405" y="7.0612"/>
<vertex x="3.4405" y="6.8072"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.9405" y="6.8072"/>
<vertex x="-1.9405" y="7.0612"/>
<vertex x="-1.5595" y="7.0612"/>
<vertex x="-1.5595" y="6.8072"/>
</polygon>
<text x="-7.7724" y="3.7338" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="5.7912" y1="3.7592" x2="5.9944" y2="3.7592" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="3.7592" x2="8.6868" y2="3.7592" width="0.1524" layer="48"/>
<wire x1="8.6868" y1="3.7592" x2="9.0932" y2="3.7592" width="0.1524" layer="48"/>
<wire x1="5.7912" y1="3.2512" x2="8.6868" y2="3.2512" width="0.1524" layer="48"/>
<wire x1="8.6868" y1="3.2512" x2="9.0932" y2="3.2512" width="0.1524" layer="48"/>
<wire x1="8.6868" y1="3.7592" x2="8.6868" y2="5.0292" width="0.1524" layer="48"/>
<wire x1="8.6868" y1="3.2512" x2="8.6868" y2="1.9812" width="0.1524" layer="48"/>
<wire x1="8.6868" y1="3.7592" x2="8.5852" y2="4.0132" width="0.1524" layer="48"/>
<wire x1="8.6868" y1="3.7592" x2="8.8392" y2="4.0132" width="0.1524" layer="48"/>
<wire x1="8.5852" y1="4.0132" x2="8.8392" y2="4.0132" width="0.1524" layer="48"/>
<wire x1="8.6868" y1="3.2512" x2="8.5852" y2="2.9972" width="0.1524" layer="48"/>
<wire x1="8.6868" y1="3.2512" x2="8.8392" y2="2.9972" width="0.1524" layer="48"/>
<wire x1="8.5852" y1="2.9972" x2="8.8392" y2="2.9972" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="3.7592" x2="5.2324" y2="8.6868" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.6868" x2="5.2324" y2="9.0932" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="3.7592" x2="5.9944" y2="8.6868" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.6868" x2="3.9624" y2="8.6868" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.6868" x2="7.2644" y2="8.6868" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.6868" x2="4.9784" y2="8.8392" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.6868" x2="4.9784" y2="8.5852" width="0.1524" layer="48"/>
<wire x1="4.9784" y1="8.8392" x2="4.9784" y2="8.5852" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.6868" x2="6.2484" y2="8.8392" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.6868" x2="6.2484" y2="8.5852" width="0.1524" layer="48"/>
<wire x1="6.2484" y1="8.8392" x2="6.2484" y2="8.5852" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="3.7592" x2="-5.9944" y2="10.6172" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.6172" x2="-5.9944" y2="10.9728" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.6868" x2="5.9944" y2="10.6172" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.6172" x2="5.9944" y2="10.9728" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.6172" x2="5.9944" y2="10.6172" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.6172" x2="-5.7404" y2="10.7188" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.6172" x2="-5.7404" y2="10.4648" width="0.1524" layer="48"/>
<wire x1="-5.7404" y1="10.7188" x2="-5.7404" y2="10.4648" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.6172" x2="5.7404" y2="10.7188" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.6172" x2="5.7404" y2="10.4648" width="0.1524" layer="48"/>
<wire x1="5.7404" y1="10.7188" x2="5.7404" y2="10.4648" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-3.7592" x2="-5.0038" y2="-8.6868" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.6868" x2="-5.0038" y2="-9.0932" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-3.7592" x2="5.0038" y2="-8.6868" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.6868" x2="5.0038" y2="-9.0932" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.6868" x2="5.0038" y2="-8.6868" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.6868" x2="-4.7498" y2="-8.5852" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.6868" x2="-4.7498" y2="-8.8392" width="0.1524" layer="48"/>
<wire x1="-4.7498" y1="-8.5852" x2="-4.7498" y2="-8.8392" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.6868" x2="4.7498" y2="-8.5852" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.6868" x2="4.7498" y2="-8.8392" width="0.1524" layer="48"/>
<wire x1="4.7498" y1="-8.5852" x2="4.7498" y2="-8.8392" width="0.1524" layer="48"/>
<wire x1="-3.7592" y1="5.0038" x2="-8.6868" y2="5.0038" width="0.1524" layer="48"/>
<wire x1="-8.6868" y1="5.0038" x2="-9.0932" y2="5.0038" width="0.1524" layer="48"/>
<wire x1="-3.7592" y1="-5.0038" x2="-8.6868" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.6868" y1="-5.0038" x2="-9.0932" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.6868" y1="5.0038" x2="-8.6868" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.6868" y1="5.0038" x2="-8.8392" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.6868" y1="5.0038" x2="-8.5852" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.8392" y1="4.7498" x2="-8.5852" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.6868" y1="-5.0038" x2="-8.8392" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="-8.6868" y1="-5.0038" x2="-8.5852" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="-8.8392" y1="-4.7498" x2="-8.5852" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="3.7592" y1="5.9944" x2="10.6172" y2="5.9944" width="0.1524" layer="48"/>
<wire x1="10.6172" y1="5.9944" x2="10.9728" y2="5.9944" width="0.1524" layer="48"/>
<wire x1="3.7592" y1="-5.9944" x2="10.6172" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.6172" y1="-5.9944" x2="10.9728" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.6172" y1="5.9944" x2="10.6172" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.6172" y1="5.9944" x2="10.4648" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.6172" y1="5.9944" x2="10.7188" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.4648" y1="5.7404" x2="10.7188" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.6172" y1="-5.9944" x2="10.4648" y2="-5.7404" width="0.1524" layer="48"/>
<wire x1="10.6172" y1="-5.9944" x2="10.7188" y2="-5.7404" width="0.1524" layer="48"/>
<wire x1="10.4648" y1="-5.7404" x2="10.7188" y2="-5.7404" width="0.1524" layer="48"/>
<text x="-18.4658" y="-12.4968" size="1.27" layer="48" ratio="6" rot="SR0">Default Horiz Padstyle: RX11Y61D0T</text>
<text x="-17.907" y="-14.0208" size="1.27" layer="48" ratio="6" rot="SR0">Default Vert Padstyle: RX11Y61D0T</text>
<text x="-14.8082" y="-18.5928" size="1.27" layer="48" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-20.1168" size="1.27" layer="48" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="9.1948" y="3.175" size="0.635" layer="48" ratio="4" rot="SR0">0.02in/0.5mm</text>
<text x="1.8542" y="9.1948" size="0.635" layer="48" ratio="4" rot="SR0">0.03in/0.762mm</text>
<text x="-4.318" y="11.1252" size="0.635" layer="48" ratio="4" rot="SR0">0.472in/11.989mm</text>
<text x="-4.318" y="-9.8552" size="0.635" layer="48" ratio="4" rot="SR0">0.394in/10.008mm</text>
<text x="-17.8562" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.394in/10.008mm</text>
<text x="11.1252" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.472in/11.989mm</text>
<wire x1="3.6068" y1="5.0038" x2="3.8862" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="5.0038" x2="3.8862" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="5.9944" x2="3.6068" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="5.9944" x2="3.6068" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="5.0038" x2="3.3782" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="5.0038" x2="3.3782" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="5.9944" x2="3.0988" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="5.9944" x2="3.0988" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.0038" x2="2.8956" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="5.0038" x2="2.8956" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="5.9944" x2="2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.9944" x2="2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="5.0038" x2="2.3876" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="5.0038" x2="2.3876" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="5.9944" x2="2.1082" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="5.9944" x2="2.1082" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="5.0038" x2="1.8796" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="5.0038" x2="1.8796" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="5.9944" x2="1.6002" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="5.9944" x2="1.6002" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="5.0038" x2="1.397" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.397" y1="5.0038" x2="1.397" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.397" y1="5.9944" x2="1.1176" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="5.9944" x2="1.1176" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="5.0038" x2="0.889" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.889" y1="5.0038" x2="0.889" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.889" y1="5.9944" x2="0.6096" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="5.9944" x2="0.6096" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="5.0038" x2="0.381" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.381" y1="5.0038" x2="0.381" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.381" y1="5.9944" x2="0.1016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="5.9944" x2="0.1016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="5.0038" x2="-0.1016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="5.0038" x2="-0.1016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="5.9944" x2="-0.381" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="5.9944" x2="-0.381" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="5.0038" x2="-0.6096" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="5.0038" x2="-0.6096" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="5.9944" x2="-0.889" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="5.9944" x2="-0.889" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="5.0038" x2="-1.1176" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="5.0038" x2="-1.1176" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="5.9944" x2="-1.397" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="5.9944" x2="-1.397" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="5.0038" x2="-1.6002" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="5.0038" x2="-1.6002" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="5.9944" x2="-1.8796" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="5.9944" x2="-1.8796" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="5.0038" x2="-2.1082" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="5.0038" x2="-2.1082" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="5.9944" x2="-2.3876" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="5.9944" x2="-2.3876" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="5.0038" x2="-2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.0038" x2="-2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.9944" x2="-2.8956" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="5.9944" x2="-2.8956" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="5.0038" x2="-3.0988" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="5.0038" x2="-3.0988" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="5.9944" x2="-3.3782" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="5.9944" x2="-3.3782" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="5.0038" x2="-3.7338" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.7338" y1="5.0038" x2="-3.6068" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="5.0038" x2="-3.6068" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="5.9944" x2="-3.8862" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="5.9944" x2="-3.8862" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.6068" x2="-5.0038" y2="3.7338" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7338" x2="-5.0038" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.8862" x2="-5.9944" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.8862" x2="-5.9944" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.6068" x2="-5.0038" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.0988" x2="-5.0038" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.3782" x2="-5.9944" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.3782" x2="-5.9944" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.0988" x2="-5.0038" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.6162" x2="-5.0038" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.8956" x2="-5.9944" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.8956" x2="-5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.6162" x2="-5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.1082" x2="-5.0038" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.3876" x2="-5.9944" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.3876" x2="-5.9944" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.1082" x2="-5.0038" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.6002" x2="-5.0038" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.8796" x2="-5.9944" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.8796" x2="-5.9944" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.6002" x2="-5.0038" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.1176" x2="-5.0038" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.397" x2="-5.9944" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.397" x2="-5.9944" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.1176" x2="-5.0038" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.6096" x2="-5.0038" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.889" x2="-5.9944" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.889" x2="-5.9944" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.6096" x2="-5.0038" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.1016" x2="-5.0038" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.381" x2="-5.9944" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.381" x2="-5.9944" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.1016" x2="-5.0038" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.381" x2="-5.0038" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.1016" x2="-5.9944" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.1016" x2="-5.9944" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.381" x2="-5.0038" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.889" x2="-5.0038" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.6096" x2="-5.9944" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.6096" x2="-5.9944" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.889" x2="-5.0038" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.397" x2="-5.0038" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.1176" x2="-5.9944" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.1176" x2="-5.9944" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.397" x2="-5.0038" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.8796" x2="-5.0038" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.6002" x2="-5.9944" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.6002" x2="-5.9944" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.8796" x2="-5.0038" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.3876" x2="-5.0038" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.1082" x2="-5.9944" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.1082" x2="-5.9944" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.3876" x2="-5.0038" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.8956" x2="-5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.6162" x2="-5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.6162" x2="-5.9944" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.8956" x2="-5.0038" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.3782" x2="-5.0038" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.0988" x2="-5.9944" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.0988" x2="-5.9944" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.3782" x2="-5.0038" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.8862" x2="-5.0038" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.6068" x2="-5.9944" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.6068" x2="-5.9944" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.8862" x2="-5.0038" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-5.0038" x2="-3.8862" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-5.0038" x2="-3.8862" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-5.9944" x2="-3.6068" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-5.9944" x2="-3.6068" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-5.0038" x2="-3.3782" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-5.0038" x2="-3.3782" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-5.9944" x2="-3.0988" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-5.9944" x2="-3.0988" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.0038" x2="-2.8956" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-5.0038" x2="-2.8956" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-5.9944" x2="-2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.9944" x2="-2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-5.0038" x2="-2.3876" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-5.0038" x2="-2.3876" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-5.9944" x2="-2.1082" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-5.9944" x2="-2.1082" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-5.0038" x2="-1.8796" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-5.0038" x2="-1.8796" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-5.9944" x2="-1.6002" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-5.9944" x2="-1.6002" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-5.0038" x2="-1.397" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-5.0038" x2="-1.397" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-5.9944" x2="-1.1176" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-5.9944" x2="-1.1176" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-5.0038" x2="-0.889" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-5.0038" x2="-0.889" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-5.9944" x2="-0.6096" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-5.9944" x2="-0.6096" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-5.0038" x2="-0.381" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-5.0038" x2="-0.381" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-5.9944" x2="-0.1016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-5.9944" x2="-0.1016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-5.0038" x2="0.1016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-5.0038" x2="0.1016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-5.9944" x2="0.381" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-5.9944" x2="0.381" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-5.0038" x2="0.6096" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-5.0038" x2="0.6096" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-5.9944" x2="0.889" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-5.9944" x2="0.889" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-5.0038" x2="1.1176" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-5.0038" x2="1.1176" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-5.9944" x2="1.397" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-5.9944" x2="1.397" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-5.0038" x2="1.6002" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-5.0038" x2="1.6002" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-5.9944" x2="1.8796" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-5.9944" x2="1.8796" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-5.0038" x2="2.1082" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-5.0038" x2="2.1082" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-5.9944" x2="2.3876" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-5.9944" x2="2.3876" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-5.0038" x2="2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.0038" x2="2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.9944" x2="2.8956" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-5.9944" x2="2.8956" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-5.0038" x2="3.0988" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-5.0038" x2="3.0988" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-5.9944" x2="3.3782" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-5.9944" x2="3.3782" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-5.0038" x2="3.6068" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-5.0038" x2="3.6068" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-5.9944" x2="3.8862" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-5.9944" x2="3.8862" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.6068" x2="5.0038" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.8862" x2="5.9944" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.8862" x2="5.9944" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.6068" x2="5.0038" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.0988" x2="5.0038" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.3782" x2="5.9944" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.3782" x2="5.9944" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.0988" x2="5.0038" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.6162" x2="5.0038" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.8956" x2="5.9944" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.8956" x2="5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.6162" x2="5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.1082" x2="5.0038" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.3876" x2="5.9944" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.3876" x2="5.9944" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.1082" x2="5.0038" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.6002" x2="5.0038" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.8796" x2="5.9944" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.8796" x2="5.9944" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.6002" x2="5.0038" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.1176" x2="5.0038" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.397" x2="5.9944" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.397" x2="5.9944" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.1176" x2="5.0038" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.6096" x2="5.0038" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.889" x2="5.9944" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.889" x2="5.9944" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.6096" x2="5.0038" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.1016" x2="5.0038" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.381" x2="5.9944" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.381" x2="5.9944" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.1016" x2="5.0038" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.381" x2="5.0038" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.1016" x2="5.9944" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.1016" x2="5.9944" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.381" x2="5.0038" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.889" x2="5.0038" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.6096" x2="5.9944" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.6096" x2="5.9944" y2="0.889" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.889" x2="5.0038" y2="0.889" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.397" x2="5.0038" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.1176" x2="5.9944" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.1176" x2="5.9944" y2="1.397" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.397" x2="5.0038" y2="1.397" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.8796" x2="5.0038" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.6002" x2="5.9944" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.6002" x2="5.9944" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.8796" x2="5.0038" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.3876" x2="5.0038" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.1082" x2="5.9944" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.1082" x2="5.9944" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.3876" x2="5.0038" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.8956" x2="5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.6162" x2="5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.6162" x2="5.9944" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.8956" x2="5.0038" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.3782" x2="5.0038" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.0988" x2="5.9944" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.0988" x2="5.9944" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.3782" x2="5.0038" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.8862" x2="5.0038" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.6068" x2="5.9944" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.6068" x2="5.9944" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.8862" x2="5.0038" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7338" x2="-3.7338" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="5.0038" x2="-5.0038" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-5.0038" x2="5.0038" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-5.0038" x2="5.0038" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="5.0038" x2="-5.0038" y2="5.0038" width="0.1524" layer="51"/>
<text x="-5.207" y="3.3528" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="TQFP64_PT_MCH-L">
<smd name="1" x="-5.5753" y="3.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="2" x="-5.5753" y="3.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="3" x="-5.5753" y="2.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="4" x="-5.5753" y="2.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="5" x="-5.5753" y="1.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="6" x="-5.5753" y="1.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="7" x="-5.5753" y="0.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="8" x="-5.5753" y="0.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="9" x="-5.5753" y="-0.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="10" x="-5.5753" y="-0.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="11" x="-5.5753" y="-1.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="12" x="-5.5753" y="-1.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="13" x="-5.5753" y="-2.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="14" x="-5.5753" y="-2.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="15" x="-5.5753" y="-3.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="16" x="-5.5753" y="-3.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="17" x="-3.75" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="18" x="-3.25" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="19" x="-2.75" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="20" x="-2.25" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="21" x="-1.75" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="22" x="-1.25" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="23" x="-0.75" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="24" x="-0.25" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="25" x="0.25" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="26" x="0.75" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="27" x="1.25" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="28" x="1.75" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="29" x="2.25" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="30" x="2.75" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="31" x="3.25" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="32" x="3.75" y="-5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="33" x="5.5753" y="-3.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="34" x="5.5753" y="-3.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="35" x="5.5753" y="-2.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="36" x="5.5753" y="-2.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="37" x="5.5753" y="-1.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="38" x="5.5753" y="-1.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="39" x="5.5753" y="-0.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="40" x="5.5753" y="-0.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="41" x="5.5753" y="0.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="42" x="5.5753" y="0.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="43" x="5.5753" y="1.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="44" x="5.5753" y="1.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="45" x="5.5753" y="2.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="46" x="5.5753" y="2.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="47" x="5.5753" y="3.25" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="48" x="5.5753" y="3.75" dx="0.2286" dy="1.143" layer="1" rot="R270"/>
<smd name="49" x="3.75" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="50" x="3.25" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="51" x="2.75" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="52" x="2.25" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="53" x="1.75" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="54" x="1.25" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="55" x="0.75" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="56" x="0.25" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="57" x="-0.25" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="58" x="-0.75" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="59" x="-1.25" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="60" x="-1.75" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="61" x="-2.25" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="62" x="-2.75" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="63" x="-3.25" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<smd name="64" x="-3.75" y="5.5753" dx="0.2286" dy="1.143" layer="1" rot="R180"/>
<wire x1="-5.1308" y1="5.1308" x2="-5.1308" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-5.1308" y1="-5.1308" x2="-4.191" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="-5.1308" x2="5.1308" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="5.1308" x2="4.191" y2="5.1308" width="0.1524" layer="21"/>
<wire x1="-5.1308" y1="-4.191" x2="-5.1308" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="4.191" y1="-5.1308" x2="5.1308" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="4.191" x2="5.1308" y2="5.1308" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="5.1308" x2="-5.1308" y2="5.1308" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-6.6548" y="-0.5595"/>
<vertex x="-6.6548" y="-0.9405"/>
<vertex x="-6.4008" y="-0.9405"/>
<vertex x="-6.4008" y="-0.5595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-2.4405" y="-6.4008"/>
<vertex x="-2.4405" y="-6.6548"/>
<vertex x="-2.0595" y="-6.6548"/>
<vertex x="-2.0595" y="-6.4008"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="2.5595" y="-6.4008"/>
<vertex x="2.5595" y="-6.6548"/>
<vertex x="2.9405" y="-6.6548"/>
<vertex x="2.9405" y="-6.4008"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="6.6548" y="-0.0595"/>
<vertex x="6.6548" y="-0.4405"/>
<vertex x="6.4008" y="-0.4405"/>
<vertex x="6.4008" y="-0.0595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.0595" y="6.4008"/>
<vertex x="3.0595" y="6.6548"/>
<vertex x="3.4405" y="6.6548"/>
<vertex x="3.4405" y="6.4008"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.9405" y="6.4008"/>
<vertex x="-1.9405" y="6.6548"/>
<vertex x="-1.5595" y="6.6548"/>
<vertex x="-1.5595" y="6.4008"/>
</polygon>
<text x="-7.366" y="3.7338" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="5.588" y1="3.7592" x2="5.9944" y2="3.7592" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="3.7592" x2="8.4836" y2="3.7592" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.7592" x2="8.89" y2="3.7592" width="0.1524" layer="48"/>
<wire x1="5.588" y1="3.2512" x2="8.4836" y2="3.2512" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.2512" x2="8.89" y2="3.2512" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.7592" x2="8.4836" y2="5.0292" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.2512" x2="8.4836" y2="1.9812" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.7592" x2="8.382" y2="4.0132" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.7592" x2="8.636" y2="4.0132" width="0.1524" layer="48"/>
<wire x1="8.382" y1="4.0132" x2="8.636" y2="4.0132" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.2512" x2="8.382" y2="2.9972" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.2512" x2="8.636" y2="2.9972" width="0.1524" layer="48"/>
<wire x1="8.382" y1="2.9972" x2="8.636" y2="2.9972" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="3.7592" x2="5.2324" y2="8.4836" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.4836" x2="5.2324" y2="8.89" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="3.7592" x2="5.9944" y2="8.4836" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.4836" x2="3.9624" y2="8.4836" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.4836" x2="7.2644" y2="8.4836" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.4836" x2="4.9784" y2="8.636" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.4836" x2="4.9784" y2="8.382" width="0.1524" layer="48"/>
<wire x1="4.9784" y1="8.636" x2="4.9784" y2="8.382" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.4836" x2="6.2484" y2="8.636" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.4836" x2="6.2484" y2="8.382" width="0.1524" layer="48"/>
<wire x1="6.2484" y1="8.636" x2="6.2484" y2="8.382" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="3.7592" x2="-5.9944" y2="10.414" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.414" x2="-5.9944" y2="10.7696" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.4836" x2="5.9944" y2="10.414" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.414" x2="5.9944" y2="10.7696" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.414" x2="5.9944" y2="10.414" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.414" x2="-5.7404" y2="10.5156" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.414" x2="-5.7404" y2="10.2616" width="0.1524" layer="48"/>
<wire x1="-5.7404" y1="10.5156" x2="-5.7404" y2="10.2616" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.414" x2="5.7404" y2="10.5156" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.414" x2="5.7404" y2="10.2616" width="0.1524" layer="48"/>
<wire x1="5.7404" y1="10.5156" x2="5.7404" y2="10.2616" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-3.7592" x2="-5.0038" y2="-8.4836" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.4836" x2="-5.0038" y2="-8.89" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-3.7592" x2="5.0038" y2="-8.4836" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.4836" x2="5.0038" y2="-8.89" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.4836" x2="5.0038" y2="-8.4836" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.4836" x2="-4.7498" y2="-8.382" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.4836" x2="-4.7498" y2="-8.636" width="0.1524" layer="48"/>
<wire x1="-4.7498" y1="-8.382" x2="-4.7498" y2="-8.636" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.4836" x2="4.7498" y2="-8.382" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.4836" x2="4.7498" y2="-8.636" width="0.1524" layer="48"/>
<wire x1="4.7498" y1="-8.382" x2="4.7498" y2="-8.636" width="0.1524" layer="48"/>
<wire x1="-3.7592" y1="5.0038" x2="-8.4836" y2="5.0038" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="5.0038" x2="-8.89" y2="5.0038" width="0.1524" layer="48"/>
<wire x1="-3.7592" y1="-5.0038" x2="-8.4836" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="-5.0038" x2="-8.89" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="5.0038" x2="-8.4836" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="5.0038" x2="-8.636" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="5.0038" x2="-8.382" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.636" y1="4.7498" x2="-8.382" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="-5.0038" x2="-8.636" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="-5.0038" x2="-8.382" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="-8.636" y1="-4.7498" x2="-8.382" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="3.7592" y1="5.9944" x2="10.414" y2="5.9944" width="0.1524" layer="48"/>
<wire x1="10.414" y1="5.9944" x2="10.7696" y2="5.9944" width="0.1524" layer="48"/>
<wire x1="3.7592" y1="-5.9944" x2="10.414" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.414" y1="-5.9944" x2="10.7696" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.414" y1="5.9944" x2="10.414" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.414" y1="5.9944" x2="10.2616" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.414" y1="5.9944" x2="10.5156" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.2616" y1="5.7404" x2="10.5156" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.414" y1="-5.9944" x2="10.2616" y2="-5.7404" width="0.1524" layer="48"/>
<wire x1="10.414" y1="-5.9944" x2="10.5156" y2="-5.7404" width="0.1524" layer="48"/>
<wire x1="10.2616" y1="-5.7404" x2="10.5156" y2="-5.7404" width="0.1524" layer="48"/>
<text x="-17.907" y="-12.2936" size="1.27" layer="48" ratio="6" rot="SR0">Default Horiz Padstyle: RX9Y45D0T</text>
<text x="-17.3228" y="-13.8176" size="1.27" layer="48" ratio="6" rot="SR0">Default Vert Padstyle: RX9Y45D0T</text>
<text x="-14.8082" y="-18.3896" size="1.27" layer="48" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-19.9136" size="1.27" layer="48" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.9916" y="3.175" size="0.635" layer="48" ratio="4" rot="SR0">0.02in/0.5mm</text>
<text x="1.8542" y="8.9916" size="0.635" layer="48" ratio="4" rot="SR0">0.03in/0.762mm</text>
<text x="-4.318" y="10.922" size="0.635" layer="48" ratio="4" rot="SR0">0.472in/11.989mm</text>
<text x="-4.318" y="-9.652" size="0.635" layer="48" ratio="4" rot="SR0">0.394in/10.008mm</text>
<text x="-17.653" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.394in/10.008mm</text>
<text x="10.922" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.472in/11.989mm</text>
<wire x1="3.6068" y1="5.0038" x2="3.8862" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="5.0038" x2="3.8862" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="5.9944" x2="3.6068" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="5.9944" x2="3.6068" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="5.0038" x2="3.3782" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="5.0038" x2="3.3782" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="5.9944" x2="3.0988" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="5.9944" x2="3.0988" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.0038" x2="2.8956" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="5.0038" x2="2.8956" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="5.9944" x2="2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.9944" x2="2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="5.0038" x2="2.3876" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="5.0038" x2="2.3876" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="5.9944" x2="2.1082" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="5.9944" x2="2.1082" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="5.0038" x2="1.8796" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="5.0038" x2="1.8796" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="5.9944" x2="1.6002" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="5.9944" x2="1.6002" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="5.0038" x2="1.397" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.397" y1="5.0038" x2="1.397" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.397" y1="5.9944" x2="1.1176" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="5.9944" x2="1.1176" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="5.0038" x2="0.889" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.889" y1="5.0038" x2="0.889" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.889" y1="5.9944" x2="0.6096" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="5.9944" x2="0.6096" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="5.0038" x2="0.381" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.381" y1="5.0038" x2="0.381" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.381" y1="5.9944" x2="0.1016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="5.9944" x2="0.1016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="5.0038" x2="-0.1016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="5.0038" x2="-0.1016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="5.9944" x2="-0.381" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="5.9944" x2="-0.381" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="5.0038" x2="-0.6096" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="5.0038" x2="-0.6096" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="5.9944" x2="-0.889" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="5.9944" x2="-0.889" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="5.0038" x2="-1.1176" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="5.0038" x2="-1.1176" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="5.9944" x2="-1.397" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="5.9944" x2="-1.397" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="5.0038" x2="-1.6002" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="5.0038" x2="-1.6002" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="5.9944" x2="-1.8796" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="5.9944" x2="-1.8796" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="5.0038" x2="-2.1082" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="5.0038" x2="-2.1082" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="5.9944" x2="-2.3876" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="5.9944" x2="-2.3876" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="5.0038" x2="-2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.0038" x2="-2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.9944" x2="-2.8956" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="5.9944" x2="-2.8956" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="5.0038" x2="-3.0988" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="5.0038" x2="-3.0988" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="5.9944" x2="-3.3782" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="5.9944" x2="-3.3782" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="5.0038" x2="-3.7338" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.7338" y1="5.0038" x2="-3.6068" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="5.0038" x2="-3.6068" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="5.9944" x2="-3.8862" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="5.9944" x2="-3.8862" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.6068" x2="-5.0038" y2="3.7338" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7338" x2="-5.0038" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.8862" x2="-5.9944" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.8862" x2="-5.9944" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.6068" x2="-5.0038" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.0988" x2="-5.0038" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.3782" x2="-5.9944" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.3782" x2="-5.9944" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.0988" x2="-5.0038" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.6162" x2="-5.0038" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.8956" x2="-5.9944" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.8956" x2="-5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.6162" x2="-5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.1082" x2="-5.0038" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.3876" x2="-5.9944" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.3876" x2="-5.9944" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.1082" x2="-5.0038" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.6002" x2="-5.0038" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.8796" x2="-5.9944" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.8796" x2="-5.9944" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.6002" x2="-5.0038" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.1176" x2="-5.0038" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.397" x2="-5.9944" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.397" x2="-5.9944" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.1176" x2="-5.0038" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.6096" x2="-5.0038" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.889" x2="-5.9944" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.889" x2="-5.9944" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.6096" x2="-5.0038" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.1016" x2="-5.0038" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.381" x2="-5.9944" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.381" x2="-5.9944" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.1016" x2="-5.0038" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.381" x2="-5.0038" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.1016" x2="-5.9944" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.1016" x2="-5.9944" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.381" x2="-5.0038" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.889" x2="-5.0038" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.6096" x2="-5.9944" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.6096" x2="-5.9944" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.889" x2="-5.0038" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.397" x2="-5.0038" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.1176" x2="-5.9944" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.1176" x2="-5.9944" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.397" x2="-5.0038" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.8796" x2="-5.0038" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.6002" x2="-5.9944" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.6002" x2="-5.9944" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.8796" x2="-5.0038" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.3876" x2="-5.0038" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.1082" x2="-5.9944" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.1082" x2="-5.9944" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.3876" x2="-5.0038" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.8956" x2="-5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.6162" x2="-5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.6162" x2="-5.9944" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.8956" x2="-5.0038" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.3782" x2="-5.0038" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.0988" x2="-5.9944" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.0988" x2="-5.9944" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.3782" x2="-5.0038" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.8862" x2="-5.0038" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.6068" x2="-5.9944" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.6068" x2="-5.9944" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.8862" x2="-5.0038" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-5.0038" x2="-3.8862" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-5.0038" x2="-3.8862" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-5.9944" x2="-3.6068" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-5.9944" x2="-3.6068" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-5.0038" x2="-3.3782" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-5.0038" x2="-3.3782" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-5.9944" x2="-3.0988" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-5.9944" x2="-3.0988" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.0038" x2="-2.8956" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-5.0038" x2="-2.8956" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-5.9944" x2="-2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.9944" x2="-2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-5.0038" x2="-2.3876" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-5.0038" x2="-2.3876" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-5.9944" x2="-2.1082" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-5.9944" x2="-2.1082" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-5.0038" x2="-1.8796" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-5.0038" x2="-1.8796" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-5.9944" x2="-1.6002" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-5.9944" x2="-1.6002" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-5.0038" x2="-1.397" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-5.0038" x2="-1.397" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-5.9944" x2="-1.1176" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-5.9944" x2="-1.1176" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-5.0038" x2="-0.889" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-5.0038" x2="-0.889" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-5.9944" x2="-0.6096" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-5.9944" x2="-0.6096" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-5.0038" x2="-0.381" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-5.0038" x2="-0.381" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-5.9944" x2="-0.1016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-5.9944" x2="-0.1016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-5.0038" x2="0.1016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-5.0038" x2="0.1016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-5.9944" x2="0.381" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-5.9944" x2="0.381" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-5.0038" x2="0.6096" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-5.0038" x2="0.6096" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-5.9944" x2="0.889" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-5.9944" x2="0.889" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-5.0038" x2="1.1176" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-5.0038" x2="1.1176" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-5.9944" x2="1.397" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-5.9944" x2="1.397" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-5.0038" x2="1.6002" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-5.0038" x2="1.6002" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-5.9944" x2="1.8796" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-5.9944" x2="1.8796" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-5.0038" x2="2.1082" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-5.0038" x2="2.1082" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-5.9944" x2="2.3876" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-5.9944" x2="2.3876" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-5.0038" x2="2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.0038" x2="2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.9944" x2="2.8956" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-5.9944" x2="2.8956" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-5.0038" x2="3.0988" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-5.0038" x2="3.0988" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-5.9944" x2="3.3782" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-5.9944" x2="3.3782" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-5.0038" x2="3.6068" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-5.0038" x2="3.6068" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-5.9944" x2="3.8862" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-5.9944" x2="3.8862" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.6068" x2="5.0038" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.8862" x2="5.9944" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.8862" x2="5.9944" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.6068" x2="5.0038" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.0988" x2="5.0038" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.3782" x2="5.9944" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.3782" x2="5.9944" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.0988" x2="5.0038" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.6162" x2="5.0038" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.8956" x2="5.9944" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.8956" x2="5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.6162" x2="5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.1082" x2="5.0038" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.3876" x2="5.9944" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.3876" x2="5.9944" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.1082" x2="5.0038" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.6002" x2="5.0038" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.8796" x2="5.9944" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.8796" x2="5.9944" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.6002" x2="5.0038" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.1176" x2="5.0038" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.397" x2="5.9944" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.397" x2="5.9944" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.1176" x2="5.0038" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.6096" x2="5.0038" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.889" x2="5.9944" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.889" x2="5.9944" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.6096" x2="5.0038" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.1016" x2="5.0038" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.381" x2="5.9944" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.381" x2="5.9944" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.1016" x2="5.0038" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.381" x2="5.0038" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.1016" x2="5.9944" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.1016" x2="5.9944" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.381" x2="5.0038" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.889" x2="5.0038" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.6096" x2="5.9944" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.6096" x2="5.9944" y2="0.889" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.889" x2="5.0038" y2="0.889" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.397" x2="5.0038" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.1176" x2="5.9944" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.1176" x2="5.9944" y2="1.397" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.397" x2="5.0038" y2="1.397" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.8796" x2="5.0038" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.6002" x2="5.9944" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.6002" x2="5.9944" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.8796" x2="5.0038" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.3876" x2="5.0038" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.1082" x2="5.9944" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.1082" x2="5.9944" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.3876" x2="5.0038" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.8956" x2="5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.6162" x2="5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.6162" x2="5.9944" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.8956" x2="5.0038" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.3782" x2="5.0038" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.0988" x2="5.9944" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.0988" x2="5.9944" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.3782" x2="5.0038" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.8862" x2="5.0038" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.6068" x2="5.9944" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.6068" x2="5.9944" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.8862" x2="5.0038" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7338" x2="-3.7338" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="5.0038" x2="-5.0038" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-5.0038" x2="5.0038" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-5.0038" x2="5.0038" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="5.0038" x2="-5.0038" y2="5.0038" width="0.1524" layer="51"/>
<text x="-5.207" y="3.3528" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="PIC32AK1216GC41064-E/PT">
<pin name="PGD2/AD2AN6/CMP3C/ISRC2/IBIAS2/RP1/SDA2/IOMF2/RA0" x="0" y="0"/>
<pin name="AD1AN6/RP8/IOMF1/RA7" x="0" y="-2.54"/>
<pin name="PGC2/DACOUT1/AD1AN7/AD2AN3/CMP1D/CMP2D/CMP3D/RP2/SCL2/RA1" x="0" y="-5.08"/>
<pin name="VSS_2" x="0" y="-7.62" direction="pas"/>
<pin name="VDD_2" x="0" y="-10.16" direction="pwr"/>
<pin name="AD1AN10/RP12/RA11" x="0" y="-12.7"/>
<pin name="AD2AN9/ISRC3/IBIAS3/RP9/RA8" x="0" y="-15.24"/>
<pin name="AD1ANN3/AD1AN9/RP10/RA9" x="0" y="-17.78"/>
<pin name="AD2ANN3/AD2AN7/RP11/RA10" x="0" y="-20.32"/>
<pin name="AVSS" x="0" y="-22.86" direction="pas"/>
<pin name="AVDD" x="0" y="-25.4" direction="pwr"/>
<pin name="OA1OUT/AD1AN0/CMP1A/RP3/RA2" x="0" y="-27.94"/>
<pin name="OA1IN-/AD1ANN1/AD2AN0/RP4/RA3" x="0" y="-30.48"/>
<pin name="OA1IN+/AD1AN1/CMP1B/RP5/RA4" x="0" y="-33.02"/>
<pin name="OA3OUT/AD1AN3/CMP3A/RP6/RA5" x="0" y="-35.56"/>
<pin name="OA3IN-/AD1AN2/RP7/RA6" x="0" y="-38.1"/>
<pin name="OA3IN+/AD2AN2/CMP3B/RP22/RB5" x="0" y="-40.64"/>
<pin name="VSS_3" x="0" y="-43.18" direction="pas"/>
<pin name="VDD_3" x="0" y="-45.72" direction="pwr"/>
<pin name="OA2OUT/AD2AN1/CMP2A/RP17/INT0/RB0" x="0" y="-48.26"/>
<pin name="TMS/OA2IN-/AD1AN4/AD2ANN1/RP18/RB1" x="0" y="-50.8"/>
<pin name="OA2IN+/AD2AN4/CMP2B/RP19/RB2" x="0" y="-53.34"/>
<pin name="AD1AN11/RP25/RB8" x="0" y="-55.88"/>
<pin name="AD2AN10/RP26/RB9" x="0" y="-58.42"/>
<pin name="VSS_4" x="0" y="-60.96" direction="pas"/>
<pin name="VDD_4" x="0" y="-63.5" direction="pwr"/>
<pin name="PGD1/AD1AN5/CMP1C/ISRC0/IBIAS0/RP20/SDA1/RB3" x="0" y="-66.04"/>
<pin name="PGC1/AD2AN5/CMP2C/ISRC1/IBIAS1/RP21/SCL1/RB4" x="0" y="-68.58"/>
<pin name="AD1ANN2/AD1AN8/RP23/RB6" x="0" y="-71.12"/>
<pin name="AD2ANN2/AD2AN8/RP24/IOMF0/RB7" x="0" y="-73.66"/>
<pin name="RP27/SCK2/RB10" x="0" y="-76.2"/>
<pin name="RP28/SDI2/RB11" x="0" y="-78.74"/>
<pin name="RP41/IOMD11/IOMF11/PCI20/RC8" x="218.44" y="-78.74" rot="R180"/>
<pin name="RP42/IOMD10/SDO2/IOMF10/PCI19/RC9" x="218.44" y="-76.2" rot="R180"/>
<pin name="RP39/RC6" x="218.44" y="-73.66" rot="R180"/>
<pin name="RP40/RC7" x="218.44" y="-71.12" rot="R180"/>
<pin name="OSCO/CLKO/RP33/IOMF5/RC0" x="218.44" y="-68.58" rot="R180"/>
<pin name="OSCI/CLKI/RP34/IOMF6/RC1" x="218.44" y="-66.04" rot="R180"/>
<pin name="VSS_5" x="218.44" y="-63.5" direction="pas" rot="R180"/>
<pin name="VDD_5" x="218.44" y="-60.96" direction="pwr" rot="R180"/>
<pin name="PGC3/RP35/PWM4H/RC2" x="218.44" y="-58.42" rot="R180"/>
<pin name="RP38/PWM4L/RC5" x="218.44" y="-55.88" rot="R180"/>
<pin name="PGD3/RP36/PWM3H/IOMD0/RC3" x="218.44" y="-53.34" rot="R180"/>
<pin name="RP37/PWM3L/IOMD1/RC4" x="218.44" y="-50.8" rot="R180"/>
<pin name="RP43/IOMD9/IOMF9/RC10" x="218.44" y="-48.26" rot="R180"/>
<pin name="RP44/IOMD8/IOMF8/RC11" x="218.44" y="-45.72" rot="R180"/>
<pin name="VSS_6" x="218.44" y="-43.18" direction="pas" rot="R180"/>
<pin name="VDD_6" x="218.44" y="-40.64" direction="pwr" rot="R180"/>
<pin name="RP58/IOMF7/RD9" x="218.44" y="-38.1" rot="R180"/>
<pin name="RP59/RD10" x="218.44" y="-35.56" rot="R180"/>
<pin name="RP49/PWM2H/IOMD2/RD0" x="218.44" y="-33.02" rot="R180"/>
<pin name="TCK/RP50/PWM2L/IOMD3/RD1" x="218.44" y="-30.48" rot="R180"/>
<pin name="TDO/RP51/PWM1H/IOMD4/RD2" x="218.44" y="-27.94" rot="R180"/>
<pin name="TDI/RP52/PWM1L/IOMD5/RD3" x="218.44" y="-25.4" rot="R180"/>
<pin name="RP54/ASCL1/RD5" x="218.44" y="-22.86" rot="R180"/>
<pin name="RP55/ASDA1/RD6" x="218.44" y="-20.32" rot="R180"/>
<pin name="RP56/ASCL2/IOMD7/IOMF4/RD7" x="218.44" y="-17.78" rot="R180"/>
<pin name="RP57/ASDA2/IOMD6/IOMF3/RD8" x="218.44" y="-15.24" rot="R180"/>
<pin name="VSS" x="218.44" y="-12.7" direction="pas" rot="R180"/>
<pin name="VDD" x="218.44" y="-10.16" direction="pwr" rot="R180"/>
<pin name="RP53/PCI22/RD4" x="218.44" y="-7.62" rot="R180"/>
<pin name="RP60/RD11" x="218.44" y="-5.08" rot="R180"/>
<pin name="RP61/PCI21/RD12" x="218.44" y="-2.54" rot="R180"/>
<pin name="!MCLR" x="218.44" y="0" direction="in" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-83.82" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-83.82" x2="210.82" y2="-83.82" width="0.1524" layer="94"/>
<wire x1="210.82" y1="-83.82" x2="210.82" y2="5.08" width="0.1524" layer="94"/>
<wire x1="210.82" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="104.4956" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="103.8606" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIC32AK1216GC41064-E/PT" prefix="U">
<gates>
<gate name="A" symbol="PIC32AK1216GC41064-E/PT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TQFP64_PT_MCH">
<connects>
<connect gate="A" pin="!MCLR" pad="64"/>
<connect gate="A" pin="AD1AN10/RP12/RA11" pad="6"/>
<connect gate="A" pin="AD1AN11/RP25/RB8" pad="23"/>
<connect gate="A" pin="AD1AN6/RP8/IOMF1/RA7" pad="2"/>
<connect gate="A" pin="AD1ANN2/AD1AN8/RP23/RB6" pad="29"/>
<connect gate="A" pin="AD1ANN3/AD1AN9/RP10/RA9" pad="8"/>
<connect gate="A" pin="AD2AN10/RP26/RB9" pad="24"/>
<connect gate="A" pin="AD2AN9/ISRC3/IBIAS3/RP9/RA8" pad="7"/>
<connect gate="A" pin="AD2ANN2/AD2AN8/RP24/IOMF0/RB7" pad="30"/>
<connect gate="A" pin="AD2ANN3/AD2AN7/RP11/RA10" pad="9"/>
<connect gate="A" pin="AVDD" pad="11"/>
<connect gate="A" pin="AVSS" pad="10"/>
<connect gate="A" pin="OA1IN+/AD1AN1/CMP1B/RP5/RA4" pad="14"/>
<connect gate="A" pin="OA1IN-/AD1ANN1/AD2AN0/RP4/RA3" pad="13"/>
<connect gate="A" pin="OA1OUT/AD1AN0/CMP1A/RP3/RA2" pad="12"/>
<connect gate="A" pin="OA2IN+/AD2AN4/CMP2B/RP19/RB2" pad="22"/>
<connect gate="A" pin="OA2OUT/AD2AN1/CMP2A/RP17/INT0/RB0" pad="20"/>
<connect gate="A" pin="OA3IN+/AD2AN2/CMP3B/RP22/RB5" pad="17"/>
<connect gate="A" pin="OA3IN-/AD1AN2/RP7/RA6" pad="16"/>
<connect gate="A" pin="OA3OUT/AD1AN3/CMP3A/RP6/RA5" pad="15"/>
<connect gate="A" pin="OSCI/CLKI/RP34/IOMF6/RC1" pad="38"/>
<connect gate="A" pin="OSCO/CLKO/RP33/IOMF5/RC0" pad="37"/>
<connect gate="A" pin="PGC1/AD2AN5/CMP2C/ISRC1/IBIAS1/RP21/SCL1/RB4" pad="28"/>
<connect gate="A" pin="PGC2/DACOUT1/AD1AN7/AD2AN3/CMP1D/CMP2D/CMP3D/RP2/SCL2/RA1" pad="3"/>
<connect gate="A" pin="PGC3/RP35/PWM4H/RC2" pad="41"/>
<connect gate="A" pin="PGD1/AD1AN5/CMP1C/ISRC0/IBIAS0/RP20/SDA1/RB3" pad="27"/>
<connect gate="A" pin="PGD2/AD2AN6/CMP3C/ISRC2/IBIAS2/RP1/SDA2/IOMF2/RA0" pad="1"/>
<connect gate="A" pin="PGD3/RP36/PWM3H/IOMD0/RC3" pad="43"/>
<connect gate="A" pin="RP27/SCK2/RB10" pad="31"/>
<connect gate="A" pin="RP28/SDI2/RB11" pad="32"/>
<connect gate="A" pin="RP37/PWM3L/IOMD1/RC4" pad="44"/>
<connect gate="A" pin="RP38/PWM4L/RC5" pad="42"/>
<connect gate="A" pin="RP39/RC6" pad="35"/>
<connect gate="A" pin="RP40/RC7" pad="36"/>
<connect gate="A" pin="RP41/IOMD11/IOMF11/PCI20/RC8" pad="33"/>
<connect gate="A" pin="RP42/IOMD10/SDO2/IOMF10/PCI19/RC9" pad="34"/>
<connect gate="A" pin="RP43/IOMD9/IOMF9/RC10" pad="45"/>
<connect gate="A" pin="RP44/IOMD8/IOMF8/RC11" pad="46"/>
<connect gate="A" pin="RP49/PWM2H/IOMD2/RD0" pad="51"/>
<connect gate="A" pin="RP53/PCI22/RD4" pad="61"/>
<connect gate="A" pin="RP54/ASCL1/RD5" pad="55"/>
<connect gate="A" pin="RP55/ASDA1/RD6" pad="56"/>
<connect gate="A" pin="RP56/ASCL2/IOMD7/IOMF4/RD7" pad="57"/>
<connect gate="A" pin="RP57/ASDA2/IOMD6/IOMF3/RD8" pad="58"/>
<connect gate="A" pin="RP58/IOMF7/RD9" pad="49"/>
<connect gate="A" pin="RP59/RD10" pad="50"/>
<connect gate="A" pin="RP60/RD11" pad="62"/>
<connect gate="A" pin="RP61/PCI21/RD12" pad="63"/>
<connect gate="A" pin="TCK/RP50/PWM2L/IOMD3/RD1" pad="52"/>
<connect gate="A" pin="TDI/RP52/PWM1L/IOMD5/RD3" pad="54"/>
<connect gate="A" pin="TDO/RP51/PWM1H/IOMD4/RD2" pad="53"/>
<connect gate="A" pin="TMS/OA2IN-/AD1AN4/AD2ANN1/RP18/RB1" pad="21"/>
<connect gate="A" pin="VDD" pad="60"/>
<connect gate="A" pin="VDD_2" pad="5"/>
<connect gate="A" pin="VDD_3" pad="19"/>
<connect gate="A" pin="VDD_4" pad="26"/>
<connect gate="A" pin="VDD_5" pad="40"/>
<connect gate="A" pin="VDD_6" pad="48"/>
<connect gate="A" pin="VSS" pad="59"/>
<connect gate="A" pin="VSS_2" pad="4"/>
<connect gate="A" pin="VSS_3" pad="18"/>
<connect gate="A" pin="VSS_4" pad="25"/>
<connect gate="A" pin="VSS_5" pad="39"/>
<connect gate="A" pin="VSS_6" pad="47"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="PIC32AK1216GC41064-E/PT" constant="no"/>
</technology>
</technologies>
</device>
<device name="TQFP64_PT_MCH-M" package="TQFP64_PT_MCH-M">
<connects>
<connect gate="A" pin="!MCLR" pad="64"/>
<connect gate="A" pin="AD1AN10/RP12/RA11" pad="6"/>
<connect gate="A" pin="AD1AN11/RP25/RB8" pad="23"/>
<connect gate="A" pin="AD1AN6/RP8/IOMF1/RA7" pad="2"/>
<connect gate="A" pin="AD1ANN2/AD1AN8/RP23/RB6" pad="29"/>
<connect gate="A" pin="AD1ANN3/AD1AN9/RP10/RA9" pad="8"/>
<connect gate="A" pin="AD2AN10/RP26/RB9" pad="24"/>
<connect gate="A" pin="AD2AN9/ISRC3/IBIAS3/RP9/RA8" pad="7"/>
<connect gate="A" pin="AD2ANN2/AD2AN8/RP24/IOMF0/RB7" pad="30"/>
<connect gate="A" pin="AD2ANN3/AD2AN7/RP11/RA10" pad="9"/>
<connect gate="A" pin="AVDD" pad="11"/>
<connect gate="A" pin="AVSS" pad="10"/>
<connect gate="A" pin="OA1IN+/AD1AN1/CMP1B/RP5/RA4" pad="14"/>
<connect gate="A" pin="OA1IN-/AD1ANN1/AD2AN0/RP4/RA3" pad="13"/>
<connect gate="A" pin="OA1OUT/AD1AN0/CMP1A/RP3/RA2" pad="12"/>
<connect gate="A" pin="OA2IN+/AD2AN4/CMP2B/RP19/RB2" pad="22"/>
<connect gate="A" pin="OA2OUT/AD2AN1/CMP2A/RP17/INT0/RB0" pad="20"/>
<connect gate="A" pin="OA3IN+/AD2AN2/CMP3B/RP22/RB5" pad="17"/>
<connect gate="A" pin="OA3IN-/AD1AN2/RP7/RA6" pad="16"/>
<connect gate="A" pin="OA3OUT/AD1AN3/CMP3A/RP6/RA5" pad="15"/>
<connect gate="A" pin="OSCI/CLKI/RP34/IOMF6/RC1" pad="38"/>
<connect gate="A" pin="OSCO/CLKO/RP33/IOMF5/RC0" pad="37"/>
<connect gate="A" pin="PGC1/AD2AN5/CMP2C/ISRC1/IBIAS1/RP21/SCL1/RB4" pad="28"/>
<connect gate="A" pin="PGC2/DACOUT1/AD1AN7/AD2AN3/CMP1D/CMP2D/CMP3D/RP2/SCL2/RA1" pad="3"/>
<connect gate="A" pin="PGC3/RP35/PWM4H/RC2" pad="41"/>
<connect gate="A" pin="PGD1/AD1AN5/CMP1C/ISRC0/IBIAS0/RP20/SDA1/RB3" pad="27"/>
<connect gate="A" pin="PGD2/AD2AN6/CMP3C/ISRC2/IBIAS2/RP1/SDA2/IOMF2/RA0" pad="1"/>
<connect gate="A" pin="PGD3/RP36/PWM3H/IOMD0/RC3" pad="43"/>
<connect gate="A" pin="RP27/SCK2/RB10" pad="31"/>
<connect gate="A" pin="RP28/SDI2/RB11" pad="32"/>
<connect gate="A" pin="RP37/PWM3L/IOMD1/RC4" pad="44"/>
<connect gate="A" pin="RP38/PWM4L/RC5" pad="42"/>
<connect gate="A" pin="RP39/RC6" pad="35"/>
<connect gate="A" pin="RP40/RC7" pad="36"/>
<connect gate="A" pin="RP41/IOMD11/IOMF11/PCI20/RC8" pad="33"/>
<connect gate="A" pin="RP42/IOMD10/SDO2/IOMF10/PCI19/RC9" pad="34"/>
<connect gate="A" pin="RP43/IOMD9/IOMF9/RC10" pad="45"/>
<connect gate="A" pin="RP44/IOMD8/IOMF8/RC11" pad="46"/>
<connect gate="A" pin="RP49/PWM2H/IOMD2/RD0" pad="51"/>
<connect gate="A" pin="RP53/PCI22/RD4" pad="61"/>
<connect gate="A" pin="RP54/ASCL1/RD5" pad="55"/>
<connect gate="A" pin="RP55/ASDA1/RD6" pad="56"/>
<connect gate="A" pin="RP56/ASCL2/IOMD7/IOMF4/RD7" pad="57"/>
<connect gate="A" pin="RP57/ASDA2/IOMD6/IOMF3/RD8" pad="58"/>
<connect gate="A" pin="RP58/IOMF7/RD9" pad="49"/>
<connect gate="A" pin="RP59/RD10" pad="50"/>
<connect gate="A" pin="RP60/RD11" pad="62"/>
<connect gate="A" pin="RP61/PCI21/RD12" pad="63"/>
<connect gate="A" pin="TCK/RP50/PWM2L/IOMD3/RD1" pad="52"/>
<connect gate="A" pin="TDI/RP52/PWM1L/IOMD5/RD3" pad="54"/>
<connect gate="A" pin="TDO/RP51/PWM1H/IOMD4/RD2" pad="53"/>
<connect gate="A" pin="TMS/OA2IN-/AD1AN4/AD2ANN1/RP18/RB1" pad="21"/>
<connect gate="A" pin="VDD" pad="60"/>
<connect gate="A" pin="VDD_2" pad="5"/>
<connect gate="A" pin="VDD_3" pad="19"/>
<connect gate="A" pin="VDD_4" pad="26"/>
<connect gate="A" pin="VDD_5" pad="40"/>
<connect gate="A" pin="VDD_6" pad="48"/>
<connect gate="A" pin="VSS" pad="59"/>
<connect gate="A" pin="VSS_2" pad="4"/>
<connect gate="A" pin="VSS_3" pad="18"/>
<connect gate="A" pin="VSS_4" pad="25"/>
<connect gate="A" pin="VSS_5" pad="39"/>
<connect gate="A" pin="VSS_6" pad="47"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="PIC32AK1216GC41064-E/PT" constant="no"/>
</technology>
</technologies>
</device>
<device name="TQFP64_PT_MCH-L" package="TQFP64_PT_MCH-L">
<connects>
<connect gate="A" pin="!MCLR" pad="64"/>
<connect gate="A" pin="AD1AN10/RP12/RA11" pad="6"/>
<connect gate="A" pin="AD1AN11/RP25/RB8" pad="23"/>
<connect gate="A" pin="AD1AN6/RP8/IOMF1/RA7" pad="2"/>
<connect gate="A" pin="AD1ANN2/AD1AN8/RP23/RB6" pad="29"/>
<connect gate="A" pin="AD1ANN3/AD1AN9/RP10/RA9" pad="8"/>
<connect gate="A" pin="AD2AN10/RP26/RB9" pad="24"/>
<connect gate="A" pin="AD2AN9/ISRC3/IBIAS3/RP9/RA8" pad="7"/>
<connect gate="A" pin="AD2ANN2/AD2AN8/RP24/IOMF0/RB7" pad="30"/>
<connect gate="A" pin="AD2ANN3/AD2AN7/RP11/RA10" pad="9"/>
<connect gate="A" pin="AVDD" pad="11"/>
<connect gate="A" pin="AVSS" pad="10"/>
<connect gate="A" pin="OA1IN+/AD1AN1/CMP1B/RP5/RA4" pad="14"/>
<connect gate="A" pin="OA1IN-/AD1ANN1/AD2AN0/RP4/RA3" pad="13"/>
<connect gate="A" pin="OA1OUT/AD1AN0/CMP1A/RP3/RA2" pad="12"/>
<connect gate="A" pin="OA2IN+/AD2AN4/CMP2B/RP19/RB2" pad="22"/>
<connect gate="A" pin="OA2OUT/AD2AN1/CMP2A/RP17/INT0/RB0" pad="20"/>
<connect gate="A" pin="OA3IN+/AD2AN2/CMP3B/RP22/RB5" pad="17"/>
<connect gate="A" pin="OA3IN-/AD1AN2/RP7/RA6" pad="16"/>
<connect gate="A" pin="OA3OUT/AD1AN3/CMP3A/RP6/RA5" pad="15"/>
<connect gate="A" pin="OSCI/CLKI/RP34/IOMF6/RC1" pad="38"/>
<connect gate="A" pin="OSCO/CLKO/RP33/IOMF5/RC0" pad="37"/>
<connect gate="A" pin="PGC1/AD2AN5/CMP2C/ISRC1/IBIAS1/RP21/SCL1/RB4" pad="28"/>
<connect gate="A" pin="PGC2/DACOUT1/AD1AN7/AD2AN3/CMP1D/CMP2D/CMP3D/RP2/SCL2/RA1" pad="3"/>
<connect gate="A" pin="PGC3/RP35/PWM4H/RC2" pad="41"/>
<connect gate="A" pin="PGD1/AD1AN5/CMP1C/ISRC0/IBIAS0/RP20/SDA1/RB3" pad="27"/>
<connect gate="A" pin="PGD2/AD2AN6/CMP3C/ISRC2/IBIAS2/RP1/SDA2/IOMF2/RA0" pad="1"/>
<connect gate="A" pin="PGD3/RP36/PWM3H/IOMD0/RC3" pad="43"/>
<connect gate="A" pin="RP27/SCK2/RB10" pad="31"/>
<connect gate="A" pin="RP28/SDI2/RB11" pad="32"/>
<connect gate="A" pin="RP37/PWM3L/IOMD1/RC4" pad="44"/>
<connect gate="A" pin="RP38/PWM4L/RC5" pad="42"/>
<connect gate="A" pin="RP39/RC6" pad="35"/>
<connect gate="A" pin="RP40/RC7" pad="36"/>
<connect gate="A" pin="RP41/IOMD11/IOMF11/PCI20/RC8" pad="33"/>
<connect gate="A" pin="RP42/IOMD10/SDO2/IOMF10/PCI19/RC9" pad="34"/>
<connect gate="A" pin="RP43/IOMD9/IOMF9/RC10" pad="45"/>
<connect gate="A" pin="RP44/IOMD8/IOMF8/RC11" pad="46"/>
<connect gate="A" pin="RP49/PWM2H/IOMD2/RD0" pad="51"/>
<connect gate="A" pin="RP53/PCI22/RD4" pad="61"/>
<connect gate="A" pin="RP54/ASCL1/RD5" pad="55"/>
<connect gate="A" pin="RP55/ASDA1/RD6" pad="56"/>
<connect gate="A" pin="RP56/ASCL2/IOMD7/IOMF4/RD7" pad="57"/>
<connect gate="A" pin="RP57/ASDA2/IOMD6/IOMF3/RD8" pad="58"/>
<connect gate="A" pin="RP58/IOMF7/RD9" pad="49"/>
<connect gate="A" pin="RP59/RD10" pad="50"/>
<connect gate="A" pin="RP60/RD11" pad="62"/>
<connect gate="A" pin="RP61/PCI21/RD12" pad="63"/>
<connect gate="A" pin="TCK/RP50/PWM2L/IOMD3/RD1" pad="52"/>
<connect gate="A" pin="TDI/RP52/PWM1L/IOMD5/RD3" pad="54"/>
<connect gate="A" pin="TDO/RP51/PWM1H/IOMD4/RD2" pad="53"/>
<connect gate="A" pin="TMS/OA2IN-/AD1AN4/AD2ANN1/RP18/RB1" pad="21"/>
<connect gate="A" pin="VDD" pad="60"/>
<connect gate="A" pin="VDD_2" pad="5"/>
<connect gate="A" pin="VDD_3" pad="19"/>
<connect gate="A" pin="VDD_4" pad="26"/>
<connect gate="A" pin="VDD_5" pad="40"/>
<connect gate="A" pin="VDD_6" pad="48"/>
<connect gate="A" pin="VSS" pad="59"/>
<connect gate="A" pin="VSS_2" pad="4"/>
<connect gate="A" pin="VSS_3" pad="18"/>
<connect gate="A" pin="VSS_4" pad="25"/>
<connect gate="A" pin="VSS_5" pad="39"/>
<connect gate="A" pin="VSS_6" pad="47"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="PIC32AK1216GC41064-E/PT" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA10-1" urn="urn:adsk.eagle:footprint:8300/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-12.7" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-11.938" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="10.795" y="1.651" size="1.27" layer="21" ratio="10">10</text>
<text x="1.27" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
</package>
<package name="MA04-1" urn="urn:adsk.eagle:footprint:8285/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.635" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.334" y="-0.635" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA10-1" urn="urn:adsk.eagle:package:8346/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA10-1"/>
</packageinstances>
</package3d>
<package3d name="MA04-1" urn="urn:adsk.eagle:package:8337/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA04-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA10-1" urn="urn:adsk.eagle:symbol:8299/1" library_version="2">
<wire x1="3.81" y1="-12.7" x2="-1.27" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="15.24" x2="-1.27" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-12.7" x2="3.81" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="15.24" x2="3.81" y2="15.24" width="0.4064" layer="94"/>
<text x="-1.27" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="16.002" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MA04-1" urn="urn:adsk.eagle:symbol:8284/1" library_version="2">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA10-1" urn="urn:adsk.eagle:component:8394/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA10-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA10-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="10" pad="10"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
<connect gate="1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8346/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="4" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA04-1" urn="urn:adsk.eagle:component:8375/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA04-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA04-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8337/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="41" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
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
<symbol name="VSS" urn="urn:adsk.eagle:symbol:26944/1" library_version="1">
<wire x1="-1.27" y1="1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.905" x2="0" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VSS" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VDD" urn="urn:adsk.eagle:symbol:26943/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="0" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VSS" urn="urn:adsk.eagle:component:26973/1" prefix="VSS" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VSS" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VDD" urn="urn:adsk.eagle:component:26970/1" prefix="VDD" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
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
<library name="rcl" urn="urn:adsk.eagle:library:334">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;r.lbr
&lt;li&gt;cap.lbr 
&lt;li&gt;cap-fe.lbr
&lt;li&gt;captant.lbr
&lt;li&gt;polcap.lbr
&lt;li&gt;ipc-smd.lbr
&lt;/ul&gt;
All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
&lt;p&gt;
for Electrolyt Capacitors see also :&lt;p&gt;
www.bccomponents.com &lt;p&gt;
www.panasonic.com&lt;p&gt;
www.kemet.com&lt;p&gt;
http://www.secc.co.jp/pdf/os_e/2004/e_os_all.pdf &lt;b&gt;(SANYO)&lt;/b&gt;
&lt;p&gt;
for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;

&lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0&gt;
&lt;tr valign="top"&gt;

&lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
&lt;td width="90%"&gt;

&lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
      3005P&lt;BR&gt;
      3006P&lt;BR&gt;
      3006W&lt;BR&gt;
      3006Y&lt;BR&gt;
      3009P&lt;BR&gt;
      3009W&lt;BR&gt;
      3009Y&lt;BR&gt;
      3057J&lt;BR&gt;
      3057L&lt;BR&gt;
      3057P&lt;BR&gt;
      3057Y&lt;BR&gt;
      3059J&lt;BR&gt;
      3059L&lt;BR&gt;
      3059P&lt;BR&gt;
      3059Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      89P&lt;BR&gt;
      89W&lt;BR&gt;
      89X&lt;BR&gt;
      89PH&lt;BR&gt;
      76P&lt;BR&gt;
      89XH&lt;BR&gt;
      78SLT&lt;BR&gt;
      78L&amp;nbsp;ALT&lt;BR&gt;
      56P&amp;nbsp;ALT&lt;BR&gt;
      78P&amp;nbsp;ALT&lt;BR&gt;
      T8S&lt;BR&gt;
      78L&lt;BR&gt;
      56P&lt;BR&gt;
      78P&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      T18/784&lt;BR&gt;
      783&lt;BR&gt;
      781&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2199&lt;BR&gt;
      1697/1897&lt;BR&gt;
      1680/1880&lt;BR&gt;
      2187&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      8035EKP/CT20/RJ-20P&lt;BR&gt;
      -&lt;BR&gt;
      RJ-20X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      1211L&lt;BR&gt;
      8012EKQ&amp;nbsp;ALT&lt;BR&gt;
      8012EKR&amp;nbsp;ALT&lt;BR&gt;
      1211P&lt;BR&gt;
      8012EKJ&lt;BR&gt;
      8012EKL&lt;BR&gt;
      8012EKQ&lt;BR&gt;
      8012EKR&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      2101P&lt;BR&gt;
      2101W&lt;BR&gt;
      2101Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2102L&lt;BR&gt;
      2102S&lt;BR&gt;
      2102Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVMCOG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      43P&lt;BR&gt;
      43W&lt;BR&gt;
      43Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      40L&lt;BR&gt;
      40P&lt;BR&gt;
      40Y&lt;BR&gt;
      70Y-T602&lt;BR&gt;
      70L&lt;BR&gt;
      70P&lt;BR&gt;
      70Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
   &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3250L&lt;BR&gt;
      3250P&lt;BR&gt;
      3250W&lt;BR&gt;
      3250X&lt;BR&gt;
      3252P&lt;BR&gt;
      3252W&lt;BR&gt;
      3252X&lt;BR&gt;
      3260P&lt;BR&gt;
      3260W&lt;BR&gt;
      3260X&lt;BR&gt;
      3262P&lt;BR&gt;
      3262W&lt;BR&gt;
      3262X&lt;BR&gt;
      3266P&lt;BR&gt;
      3266W&lt;BR&gt;
      3266X&lt;BR&gt;
      3290H&lt;BR&gt;
      3290P&lt;BR&gt;
      3290W&lt;BR&gt;
      3292P&lt;BR&gt;
      3292W&lt;BR&gt;
      3292X&lt;BR&gt;
      3296P&lt;BR&gt;
      3296W&lt;BR&gt;
      3296X&lt;BR&gt;
      3296Y&lt;BR&gt;
      3296Z&lt;BR&gt;
      3299P&lt;BR&gt;
      3299W&lt;BR&gt;
      3299X&lt;BR&gt;
      3299Y&lt;BR&gt;
      3299Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64P&amp;nbsp;ALT&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      64X&amp;nbsp;ALT&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66P&lt;BR&gt;
      66W&lt;BR&gt;
      66X&lt;BR&gt;
      67P&lt;BR&gt;
      67W&lt;BR&gt;
      67X&lt;BR&gt;
      67Y&lt;BR&gt;
      67Z&lt;BR&gt;
      68P&lt;BR&gt;
      68W&lt;BR&gt;
      68X&lt;BR&gt;
      67Y&amp;nbsp;ALT&lt;BR&gt;
      67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      5050&lt;BR&gt;
      5091&lt;BR&gt;
      5080&lt;BR&gt;
      5087&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T63YB&lt;BR&gt;
      T63XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      5887&lt;BR&gt;
      5891&lt;BR&gt;
      5880&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T93Z&lt;BR&gt;
      T93YA&lt;BR&gt;
      T93XA&lt;BR&gt;
      T93YB&lt;BR&gt;
      T93XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKW&lt;BR&gt;
      8026EKM&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKB&lt;BR&gt;
      8026EKM&lt;BR&gt;
      1309X&lt;BR&gt;
      1309P&lt;BR&gt;
      1309W&lt;BR&gt;
      8024EKP&lt;BR&gt;
      8024EKW&lt;BR&gt;
      8024EKN&lt;BR&gt;
      RJ-9P/CT9P&lt;BR&gt;
      RJ-9W&lt;BR&gt;
      RJ-9X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3105P/3106P&lt;BR&gt;
      3105W/3106W&lt;BR&gt;
      3105X/3106X&lt;BR&gt;
      3105Y/3106Y&lt;BR&gt;
      3105Z/3105Z&lt;BR&gt;
      3102P&lt;BR&gt;
      3102W&lt;BR&gt;
      3102X&lt;BR&gt;
      3102Y&lt;BR&gt;
      3102Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMCBG&lt;BR&gt;
      EVMCCG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      55-1-X&lt;BR&gt;
      55-4-X&lt;BR&gt;
      55-3-X&lt;BR&gt;
      55-2-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      50-2-X&lt;BR&gt;
      50-4-X&lt;BR&gt;
      50-3-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      64Y&lt;BR&gt;
      64Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3323P&lt;BR&gt;
      3323S&lt;BR&gt;
      3323W&lt;BR&gt;
      3329H&lt;BR&gt;
      3329P&lt;BR&gt;
      3329W&lt;BR&gt;
      3339H&lt;BR&gt;
      3339P&lt;BR&gt;
      3339W&lt;BR&gt;
      3352E&lt;BR&gt;
      3352H&lt;BR&gt;
      3352K&lt;BR&gt;
      3352P&lt;BR&gt;
      3352T&lt;BR&gt;
      3352V&lt;BR&gt;
      3352W&lt;BR&gt;
      3362H&lt;BR&gt;
      3362M&lt;BR&gt;
      3362P&lt;BR&gt;
      3362R&lt;BR&gt;
      3362S&lt;BR&gt;
      3362U&lt;BR&gt;
      3362W&lt;BR&gt;
      3362X&lt;BR&gt;
      3386B&lt;BR&gt;
      3386C&lt;BR&gt;
      3386F&lt;BR&gt;
      3386H&lt;BR&gt;
      3386K&lt;BR&gt;
      3386M&lt;BR&gt;
      3386P&lt;BR&gt;
      3386S&lt;BR&gt;
      3386W&lt;BR&gt;
      3386X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      25P&lt;BR&gt;
      25S&lt;BR&gt;
      25RX&lt;BR&gt;
      82P&lt;BR&gt;
      82M&lt;BR&gt;
      82PA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      91E&lt;BR&gt;
      91X&lt;BR&gt;
      91T&lt;BR&gt;
      91B&lt;BR&gt;
      91A&lt;BR&gt;
      91V&lt;BR&gt;
      91W&lt;BR&gt;
      25W&lt;BR&gt;
      25V&lt;BR&gt;
      25P&lt;BR&gt;
      -&lt;BR&gt;
      25S&lt;BR&gt;
      25U&lt;BR&gt;
      25RX&lt;BR&gt;
      25X&lt;BR&gt;
      72XW&lt;BR&gt;
      72XL&lt;BR&gt;
      72PM&lt;BR&gt;
      72RX&lt;BR&gt;
      -&lt;BR&gt;
      72PX&lt;BR&gt;
      72P&lt;BR&gt;
      72RXW&lt;BR&gt;
      72RXL&lt;BR&gt;
      72X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T7YB&lt;BR&gt;
      T7YA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      TXD&lt;BR&gt;
      TYA&lt;BR&gt;
      TYP&lt;BR&gt;
      -&lt;BR&gt;
      TYD&lt;BR&gt;
      TX&lt;BR&gt;
      -&lt;BR&gt;
      150SX&lt;BR&gt;
      100SX&lt;BR&gt;
      102T&lt;BR&gt;
      101S&lt;BR&gt;
      190T&lt;BR&gt;
      150TX&lt;BR&gt;
      101&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      101SX&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ET6P&lt;BR&gt;
      ET6S&lt;BR&gt;
      ET6X&lt;BR&gt;
      RJ-6W/8014EMW&lt;BR&gt;
      RJ-6P/8014EMP&lt;BR&gt;
      RJ-6X/8014EMX&lt;BR&gt;
      TM7W&lt;BR&gt;
      TM7P&lt;BR&gt;
      TM7X&lt;BR&gt;
      -&lt;BR&gt;
      8017SMS&lt;BR&gt;
      -&lt;BR&gt;
      8017SMB&lt;BR&gt;
      8017SMA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      CT-6W&lt;BR&gt;
      CT-6H&lt;BR&gt;
      CT-6P&lt;BR&gt;
      CT-6R&lt;BR&gt;
      -&lt;BR&gt;
      CT-6V&lt;BR&gt;
      CT-6X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKV&lt;BR&gt;
      -&lt;BR&gt;
      8038EKX&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKP&lt;BR&gt;
      8038EKZ&lt;BR&gt;
      8038EKW&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3321H&lt;BR&gt;
      3321P&lt;BR&gt;
      3321N&lt;BR&gt;
      1102H&lt;BR&gt;
      1102P&lt;BR&gt;
      1102T&lt;BR&gt;
      RVA0911V304A&lt;BR&gt;
      -&lt;BR&gt;
      RVA0911H413A&lt;BR&gt;
      RVG0707V100A&lt;BR&gt;
      RVA0607V(H)306A&lt;BR&gt;
      RVA1214H213A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3104B&lt;BR&gt;
      3104C&lt;BR&gt;
      3104F&lt;BR&gt;
      3104H&lt;BR&gt;
      -&lt;BR&gt;
      3104M&lt;BR&gt;
      3104P&lt;BR&gt;
      3104S&lt;BR&gt;
      3104W&lt;BR&gt;
      3104X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      EVMQ0G&lt;BR&gt;
      EVMQIG&lt;BR&gt;
      EVMQ3G&lt;BR&gt;
      EVMS0G&lt;BR&gt;
      EVMQ0G&lt;BR&gt;
      EVMG0G&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMK4GA00B&lt;BR&gt;
      EVM30GA00B&lt;BR&gt;
      EVMK0GA00B&lt;BR&gt;
      EVM38GA00B&lt;BR&gt;
      EVMB6&lt;BR&gt;
      EVLQ0&lt;BR&gt;
      -&lt;BR&gt;
      EVMMSG&lt;BR&gt;
      EVMMBG&lt;BR&gt;
      EVMMAG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMMCS&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM0&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM3&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      62-3-1&lt;BR&gt;
      62-1-2&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67R&lt;BR&gt;
      -&lt;BR&gt;
      67P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67X&lt;BR&gt;
      63V&lt;BR&gt;
      63S&lt;BR&gt;
      63M&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63H&lt;BR&gt;
      63P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;&amp;nbsp;&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
      &lt;P&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3224G&lt;BR&gt;
      3224J&lt;BR&gt;
      3224W&lt;BR&gt;
      3269P&lt;BR&gt;
      3269W&lt;BR&gt;
      3269X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      44G&lt;BR&gt;
      44J&lt;BR&gt;
      44W&lt;BR&gt;
      84P&lt;BR&gt;
      84W&lt;BR&gt;
      84X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST63Z&lt;BR&gt;
      ST63Y&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST5P&lt;BR&gt;
      ST5W&lt;BR&gt;
      ST5X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3314G&lt;BR&gt;
      3314J&lt;BR&gt;
      3364A/B&lt;BR&gt;
      3364C/D&lt;BR&gt;
      3364W/X&lt;BR&gt;
      3313G&lt;BR&gt;
      3313J&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      23B&lt;BR&gt;
      23A&lt;BR&gt;
      21X&lt;BR&gt;
      21W&lt;BR&gt;
      -&lt;BR&gt;
      22B&lt;BR&gt;
      22A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST5YL/ST53YL&lt;BR&gt;
      ST5YJ/5T53YJ&lt;BR&gt;
      ST-23A&lt;BR&gt;
      ST-22B&lt;BR&gt;
      ST-22&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST-4B&lt;BR&gt;
      ST-4A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST-3B&lt;BR&gt;
      ST-3A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVM-6YS&lt;BR&gt;
      EVM-1E&lt;BR&gt;
      EVM-1G&lt;BR&gt;
      EVM-1D&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      G4B&lt;BR&gt;
      G4A&lt;BR&gt;
      TR04-3S1&lt;BR&gt;
      TRG04-2S1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      DVR-43A&lt;BR&gt;
      CVR-42C&lt;BR&gt;
      CVR-42A/C&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;
&lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
&lt;P&gt;

&amp;nbsp;
&lt;P&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="C0402" urn="urn:adsk.eagle:footprint:23121/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0504" urn="urn:adsk.eagle:footprint:23122/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C0603" urn="urn:adsk.eagle:footprint:23123/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0805" urn="urn:adsk.eagle:footprint:23124/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C1206" urn="urn:adsk.eagle:footprint:23125/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1210" urn="urn:adsk.eagle:footprint:23126/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1310" urn="urn:adsk.eagle:footprint:23127/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.3" x2="0.1001" y2="0.3" layer="35"/>
</package>
<package name="C1608" urn="urn:adsk.eagle:footprint:23128/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C1812" urn="urn:adsk.eagle:footprint:23129/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.3" y1="-0.4001" x2="0.3" y2="0.4001" layer="35"/>
</package>
<package name="C1825" urn="urn:adsk.eagle:footprint:23130/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.7" y1="-0.7" x2="0.7" y2="0.7" layer="35"/>
</package>
<package name="C2012" urn="urn:adsk.eagle:footprint:23131/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C3216" urn="urn:adsk.eagle:footprint:23132/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.3" y1="-0.5001" x2="0.3" y2="0.5001" layer="35"/>
</package>
<package name="C3225" urn="urn:adsk.eagle:footprint:23133/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="C4532" urn="urn:adsk.eagle:footprint:23134/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="C4564" urn="urn:adsk.eagle:footprint:23135/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="C025-024X044" urn="urn:adsk.eagle:footprint:23136/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.778" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.778" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-025X050" urn="urn:adsk.eagle:footprint:23137/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.5 x 5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-030X050" urn="urn:adsk.eagle:footprint:23138/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 3 x 5 mm</description>
<wire x1="-2.159" y1="1.524" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.524" x2="-2.159" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.27" x2="2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.524" x2="2.413" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.27" x2="-2.159" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.524" x2="2.413" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.27" x2="-2.159" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-040X050" urn="urn:adsk.eagle:footprint:23139/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 4 x 5 mm</description>
<wire x1="-2.159" y1="1.905" x2="2.159" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.905" x2="-2.159" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.651" x2="2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.651" x2="-2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.905" x2="2.413" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.651" x2="-2.159" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.905" x2="2.413" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.651" x2="-2.159" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-050X050" urn="urn:adsk.eagle:footprint:23140/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 5 x 5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-060X050" urn="urn:adsk.eagle:footprint:23141/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 6 x 5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-024X070" urn="urn:adsk.eagle:footprint:23142/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm + 5 mm, outline 2.4 x 7 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.191" y1="-1.143" x2="-3.9624" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="1.143" x2="-3.9624" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-0.635" x2="-4.191" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="0.635" x2="-4.191" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.699" y1="-0.635" x2="-4.699" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.143" x2="-2.5654" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.143" x2="-2.5654" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.81" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-025X075" urn="urn:adsk.eagle:footprint:23143/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.016" x2="4.953" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.27" x2="4.953" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.27" x2="4.953" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.27" x2="4.699" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.27" x2="2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-0.762" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.254" x2="2.413" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-035X075" urn="urn:adsk.eagle:footprint:23144/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.778" x2="2.159" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.778" x2="-2.159" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.524" x2="-2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.778" x2="2.413" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.524" x2="-2.159" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.778" x2="2.413" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.524" x2="-2.159" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="2.794" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.524" x2="2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.508" x2="2.413" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-045X075" urn="urn:adsk.eagle:footprint:23145/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.032" x2="4.953" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.286" x2="4.953" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.286" x2="4.953" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.286" x2="4.699" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.286" x2="2.794" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.397" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-055X075" urn="urn:adsk.eagle:footprint:23146/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.794" x2="4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.794" x2="4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.794" x2="4.699" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.794" x2="2.794" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-2.032" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-024X044" urn="urn:adsk.eagle:footprint:23147/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-0.381" x2="2.54" y2="0.381" layer="51"/>
<rectangle x1="-2.54" y1="-0.381" x2="-2.159" y2="0.381" layer="51"/>
</package>
<package name="C050-025X075" urn="urn:adsk.eagle:footprint:23148/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.016" x2="-3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="3.429" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.016" x2="3.683" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="3.683" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.27" x2="3.683" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.016" x2="-3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.016" x2="-3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-045X075" urn="urn:adsk.eagle:footprint:23149/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.032" x2="-3.683" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.286" x2="3.429" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.032" x2="3.683" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="-3.429" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="3.683" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.286" x2="3.683" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.032" x2="-3.429" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.032" x2="-3.429" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-030X075" urn="urn:adsk.eagle:footprint:23150/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.27" x2="-3.683" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.27" x2="3.683" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="3.683" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.524" x2="3.683" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.27" x2="-3.429" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.27" x2="-3.429" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-050X075" urn="urn:adsk.eagle:footprint:23151/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="3.683" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.54" x2="3.683" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.286" x2="-3.429" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.286" x2="-3.429" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-055X075" urn="urn:adsk.eagle:footprint:23152/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.54" x2="-3.683" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.794" x2="3.429" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.54" x2="3.683" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="-3.429" y2="2.794" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="3.683" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.794" x2="3.683" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.54" x2="-3.429" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.54" x2="-3.429" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.302" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-075X075" urn="urn:adsk.eagle:footprint:23153/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-1.524" y1="0" x2="-0.4572" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="0.762" width="0.4064" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0.762" x2="0.4318" y2="0" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0" x2="0.4318" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="3.429" x2="-3.683" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-3.683" x2="3.429" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.429" x2="3.683" y2="3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="-3.429" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="3.683" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-3.683" x2="3.683" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-3.429" x2="-3.429" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="3.429" x2="-3.429" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="4.064" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050H075X075" urn="urn:adsk.eagle:footprint:23154/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Horizontal, grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-3.683" y1="7.112" x2="-3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="0.508" x2="-3.302" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.508" x2="-1.778" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0.508" x2="1.778" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.508" x2="3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="3.683" y1="0.508" x2="3.683" y2="7.112" width="0.1524" layer="21"/>
<wire x1="3.175" y1="7.62" x2="-3.175" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="2.413" x2="-0.3048" y2="1.778" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-0.3048" y2="1.143" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="2.413" x2="0.3302" y2="1.778" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="0.3302" y2="1.143" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="7.112" x2="-3.175" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.175" y1="7.62" x2="3.683" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.254" width="0.508" layer="51"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.254" width="0.508" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.302" y="8.001" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="3.175" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="0.127" x2="-2.286" y2="0.508" layer="51"/>
<rectangle x1="2.286" y1="0.127" x2="2.794" y2="0.508" layer="51"/>
</package>
<package name="C075-032X103" urn="urn:adsk.eagle:footprint:23155/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<wire x1="4.826" y1="1.524" x2="-4.826" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.524" x2="4.826" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.524" x2="5.08" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-1.524" x2="5.08" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.27" x2="-4.826" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.27" x2="-4.826" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.508" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.889" x2="-0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-0.889" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.889" x2="0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.889" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.826" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-042X103" urn="urn:adsk.eagle:footprint:23156/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.778" x2="5.08" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="5.08" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-2.032" x2="5.08" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.778" x2="-4.826" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.778" x2="-4.826" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.699" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-052X106" urn="urn:adsk.eagle:footprint:23157/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<wire x1="4.953" y1="2.54" x2="-4.953" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.286" x2="-5.207" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.286" x2="5.207" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.54" x2="5.207" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-2.54" x2="5.207" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.286" x2="-4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.286" x2="-4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-043X133" urn="urn:adsk.eagle:footprint:23158/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.032" x2="6.096" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.604" y1="1.524" x2="6.604" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.032" x2="-6.096" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-1.524" x2="-6.604" y2="1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.032" x2="6.604" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.032" x2="6.604" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-1.524" x2="-6.096" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="1.524" x2="-6.096" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-054X133" urn="urn:adsk.eagle:footprint:23159/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.54" x2="6.096" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.032" x2="6.604" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.54" x2="-6.096" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.032" x2="-6.604" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.54" x2="6.604" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.54" x2="6.604" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.032" x2="-6.096" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.032" x2="-6.096" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.905" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-064X133" urn="urn:adsk.eagle:footprint:23160/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.096" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.54" x2="6.604" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="6.604" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-3.048" x2="6.604" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102_152-062X184" urn="urn:adsk.eagle:footprint:23161/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm + 15.2 mm, outline 6.2 x 18.4 mm</description>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="3.683" y2="0" width="0.1524" layer="21"/>
<wire x1="6.477" y1="0" x2="8.636" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.223" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.223" y1="3.048" x2="6.731" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.223" y1="-3.048" x2="6.731" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="2.54" x2="6.731" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.176" y1="3.048" x2="11.684" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="11.176" y1="-3.048" x2="11.684" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="11.176" y1="-3.048" x2="7.112" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="7.112" y1="3.048" x2="11.176" y2="3.048" width="0.1524" layer="21"/>
<wire x1="11.684" y1="2.54" x2="11.684" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="3" x="10.033" y="0" drill="1.016" shape="octagon"/>
<text x="-5.969" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-054X183" urn="urn:adsk.eagle:footprint:23162/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 5.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="9.017" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-2.54" x2="-8.509" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.032" x2="-9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="2.54" x2="8.509" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="2.54" x2="9.017" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-2.54" x2="9.017" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.032" x2="-8.509" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.032" x2="-8.509" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-064X183" urn="urn:adsk.eagle:footprint:23163/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 6.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.54" x2="9.017" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.048" x2="-8.509" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.54" x2="-9.017" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.048" x2="8.509" y2="3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.048" x2="9.017" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.048" x2="9.017" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.54" x2="-8.509" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.54" x2="-8.509" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-072X183" urn="urn:adsk.eagle:footprint:23164/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 7.2 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.048" x2="9.017" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.556" x2="-8.509" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.048" x2="-9.017" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.556" x2="8.509" y2="3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.556" x2="9.017" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.556" x2="9.017" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.048" x2="-8.509" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.048" x2="-8.509" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-084X183" urn="urn:adsk.eagle:footprint:23165/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 8.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.556" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.064" x2="-8.509" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.556" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.064" x2="8.509" y2="4.064" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.064" x2="9.017" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.064" x2="9.017" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.556" x2="-8.509" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.556" x2="-8.509" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.445" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-091X182" urn="urn:adsk.eagle:footprint:23166/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 9.1 x 18.2 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.937" x2="9.017" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.445" x2="-8.509" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.937" x2="-9.017" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.445" x2="8.509" y2="4.445" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.445" x2="9.017" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.445" x2="9.017" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.937" x2="-8.509" y2="-4.445" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.937" x2="-8.509" y2="4.445" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.826" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-062X268" urn="urn:adsk.eagle:footprint:23167/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 6.2 x 26.8 mm</description>
<wire x1="-12.827" y1="3.048" x2="12.827" y2="3.048" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.048" x2="-12.827" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.048" x2="13.335" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.048" x2="13.335" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-2.54" x2="-12.827" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="2.54" x2="-12.827" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.7" y="3.429" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-074X268" urn="urn:adsk.eagle:footprint:23168/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 7.4 x 26.8 mm</description>
<wire x1="-12.827" y1="3.556" x2="12.827" y2="3.556" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.048" x2="13.335" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.556" x2="-12.827" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.048" x2="-13.335" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.556" x2="13.335" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.556" x2="13.335" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.048" x2="-12.827" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.048" x2="-12.827" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="3.937" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-087X268" urn="urn:adsk.eagle:footprint:23169/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 8.7 x 26.8 mm</description>
<wire x1="-12.827" y1="4.318" x2="12.827" y2="4.318" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.81" x2="13.335" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-4.318" x2="-12.827" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.81" x2="-13.335" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="4.318" x2="13.335" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-4.318" x2="13.335" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.81" x2="-12.827" y2="-4.318" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.81" x2="-12.827" y2="4.318" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="4.699" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-108X268" urn="urn:adsk.eagle:footprint:23170/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 10.8 x 26.8 mm</description>
<wire x1="-12.827" y1="5.334" x2="12.827" y2="5.334" width="0.1524" layer="21"/>
<wire x1="13.335" y1="4.826" x2="13.335" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.334" x2="-12.827" y2="-5.334" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-4.826" x2="-13.335" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.334" x2="13.335" y2="4.826" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.334" x2="13.335" y2="-4.826" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-4.826" x2="-12.827" y2="-5.334" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="4.826" x2="-12.827" y2="5.334" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.715" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-113X268" urn="urn:adsk.eagle:footprint:23171/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 11.3 x 26.8 mm</description>
<wire x1="-12.827" y1="5.588" x2="12.827" y2="5.588" width="0.1524" layer="21"/>
<wire x1="13.335" y1="5.08" x2="13.335" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.588" x2="-12.827" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.08" x2="-13.335" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.588" x2="13.335" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.588" x2="13.335" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-5.08" x2="-12.827" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="5.08" x2="-12.827" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-093X316" urn="urn:adsk.eagle:footprint:23172/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 9.3 x 31.6 mm</description>
<wire x1="-15.24" y1="4.572" x2="15.24" y2="4.572" width="0.1524" layer="21"/>
<wire x1="15.748" y1="4.064" x2="15.748" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-4.572" x2="-15.24" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-4.064" x2="-15.748" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="4.572" x2="15.748" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-4.572" x2="15.748" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-4.064" x2="-15.24" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="4.064" x2="-15.24" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="4.953" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-113X316" urn="urn:adsk.eagle:footprint:23173/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 11.3 x 31.6 mm</description>
<wire x1="-15.24" y1="5.588" x2="15.24" y2="5.588" width="0.1524" layer="21"/>
<wire x1="15.748" y1="5.08" x2="15.748" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-5.588" x2="-15.24" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-5.08" x2="-15.748" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="5.588" x2="15.748" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-5.588" x2="15.748" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-5.08" x2="-15.24" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="5.08" x2="-15.24" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-134X316" urn="urn:adsk.eagle:footprint:23174/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 13.4 x 31.6 mm</description>
<wire x1="-15.24" y1="6.604" x2="15.24" y2="6.604" width="0.1524" layer="21"/>
<wire x1="15.748" y1="6.096" x2="15.748" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-6.604" x2="-15.24" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-6.096" x2="-15.748" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="6.604" x2="15.748" y2="6.096" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-6.604" x2="15.748" y2="-6.096" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-6.096" x2="-15.24" y2="-6.604" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="6.096" x2="-15.24" y2="6.604" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-205X316" urn="urn:adsk.eagle:footprint:23175/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 20.5 x 31.6 mm</description>
<wire x1="-15.24" y1="10.16" x2="15.24" y2="10.16" width="0.1524" layer="21"/>
<wire x1="15.748" y1="9.652" x2="15.748" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-10.16" x2="-15.24" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-9.652" x2="-15.748" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="10.16" x2="15.748" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-10.16" x2="15.748" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-9.652" x2="-15.24" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="9.652" x2="-15.24" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.318" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-137X374" urn="urn:adsk.eagle:footprint:23176/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 13.7 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="6.731" x2="-18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="18.542" y1="6.731" x2="-18.542" y2="6.731" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.2372" y="7.0612" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-162X374" urn="urn:adsk.eagle:footprint:23177/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 16.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="8.001" x2="-18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="18.542" y1="8.001" x2="-18.542" y2="8.001" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="8.3312" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-182X374" urn="urn:adsk.eagle:footprint:23178/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 18.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="9.017" x2="-18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="18.542" y1="9.017" x2="-18.542" y2="9.017" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="9.3472" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-192X418" urn="urn:adsk.eagle:footprint:23179/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 19.2 x 41.8 mm</description>
<wire x1="-20.32" y1="8.509" x2="20.32" y2="8.509" width="0.1524" layer="21"/>
<wire x1="20.828" y1="8.001" x2="20.828" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-8.509" x2="-20.32" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-8.001" x2="-20.828" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="8.509" x2="20.828" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-8.509" x2="20.828" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-8.001" x2="-20.32" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="8.001" x2="-20.32" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-203X418" urn="urn:adsk.eagle:footprint:23180/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 20.3 x 41.8 mm</description>
<wire x1="-20.32" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="21"/>
<wire x1="20.828" y1="9.652" x2="20.828" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-10.16" x2="-20.32" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-9.652" x2="-20.828" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="10.16" x2="20.828" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-10.16" x2="20.828" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-9.652" x2="-20.32" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="9.652" x2="-20.32" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.32" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-035X075" urn="urn:adsk.eagle:footprint:23181/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.524" x2="-3.683" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.778" x2="3.429" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.524" x2="3.683" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="-3.429" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="3.683" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.778" x2="3.683" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.524" x2="-3.429" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.524" x2="-3.429" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-155X418" urn="urn:adsk.eagle:footprint:23182/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 15.5 x 41.8 mm</description>
<wire x1="-20.32" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.828" y1="7.112" x2="20.828" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-7.62" x2="-20.32" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-7.112" x2="-20.828" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="7.62" x2="20.828" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-7.62" x2="20.828" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-7.112" x2="-20.32" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="7.112" x2="-20.32" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-063X106" urn="urn:adsk.eagle:footprint:23183/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<wire x1="4.953" y1="3.048" x2="-4.953" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.794" x2="-5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.794" x2="5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="3.048" x2="5.207" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-3.048" x2="5.207" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.794" x2="-4.953" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.794" x2="-4.953" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-154X316" urn="urn:adsk.eagle:footprint:23184/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 15.4 x 31.6 mm</description>
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.1524" layer="21"/>
<wire x1="15.748" y1="7.112" x2="15.748" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-7.62" x2="-15.24" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-7.112" x2="-15.748" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="7.62" x2="15.748" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-7.62" x2="15.748" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-7.112" x2="-15.24" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="7.112" x2="-15.24" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-173X316" urn="urn:adsk.eagle:footprint:23185/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 17.3 x 31.6 mm</description>
<wire x1="-15.24" y1="8.509" x2="15.24" y2="8.509" width="0.1524" layer="21"/>
<wire x1="15.748" y1="8.001" x2="15.748" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-8.509" x2="-15.24" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-8.001" x2="-15.748" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="8.509" x2="15.748" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-8.509" x2="15.748" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-8.001" x2="-15.24" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="8.001" x2="-15.24" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C0402K" urn="urn:adsk.eagle:footprint:23186/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0204 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1005</description>
<wire x1="-0.425" y1="0.2" x2="0.425" y2="0.2" width="0.1016" layer="51"/>
<wire x1="0.425" y1="-0.2" x2="-0.425" y2="-0.2" width="0.1016" layer="51"/>
<smd name="1" x="-0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<smd name="2" x="0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<text x="-0.5" y="0.425" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.5" y="-1.45" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.5" y1="-0.25" x2="-0.225" y2="0.25" layer="51"/>
<rectangle x1="0.225" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
</package>
<package name="C0603K" urn="urn:adsk.eagle:footprint:23187/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0603 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1608</description>
<wire x1="-0.725" y1="0.35" x2="0.725" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.725" y1="-0.35" x2="-0.725" y2="-0.35" width="0.1016" layer="51"/>
<smd name="1" x="-0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<smd name="2" x="0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<text x="-0.8" y="0.65" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.8" y="-1.65" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8" y1="-0.4" x2="-0.45" y2="0.4" layer="51"/>
<rectangle x1="0.45" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
</package>
<package name="C0805K" urn="urn:adsk.eagle:footprint:23188/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0805 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 2012</description>
<wire x1="-0.925" y1="0.6" x2="0.925" y2="0.6" width="0.1016" layer="51"/>
<wire x1="0.925" y1="-0.6" x2="-0.925" y2="-0.6" width="0.1016" layer="51"/>
<smd name="1" x="-1" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="1" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1" y="0.875" size="1.016" layer="25">&gt;NAME</text>
<text x="-1" y="-1.9" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1" y1="-0.65" x2="-0.5" y2="0.65" layer="51"/>
<rectangle x1="0.5" y1="-0.65" x2="1" y2="0.65" layer="51"/>
</package>
<package name="C1206K" urn="urn:adsk.eagle:footprint:23189/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1206 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3216</description>
<wire x1="-1.525" y1="0.75" x2="1.525" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-0.75" x2="-1.525" y2="-0.75" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2" layer="1"/>
<text x="-1.6" y="1.1" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.1" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.8" x2="-1.1" y2="0.8" layer="51"/>
<rectangle x1="1.1" y1="-0.8" x2="1.6" y2="0.8" layer="51"/>
</package>
<package name="C1210K" urn="urn:adsk.eagle:footprint:23190/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1210 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3225</description>
<wire x1="-1.525" y1="1.175" x2="1.525" y2="1.175" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-1.175" x2="-1.525" y2="-1.175" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<text x="-1.6" y="1.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-1.25" x2="-1.1" y2="1.25" layer="51"/>
<rectangle x1="1.1" y1="-1.25" x2="1.6" y2="1.25" layer="51"/>
</package>
<package name="C1812K" urn="urn:adsk.eagle:footprint:23191/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1812 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4532</description>
<wire x1="-2.175" y1="1.525" x2="2.175" y2="1.525" width="0.1016" layer="51"/>
<wire x1="2.175" y1="-1.525" x2="-2.175" y2="-1.525" width="0.1016" layer="51"/>
<smd name="1" x="-2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<smd name="2" x="2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<text x="-2.25" y="1.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.25" y="-2.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.25" y1="-1.6" x2="-1.65" y2="1.6" layer="51"/>
<rectangle x1="1.65" y1="-1.6" x2="2.25" y2="1.6" layer="51"/>
</package>
<package name="C1825K" urn="urn:adsk.eagle:footprint:23192/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1825 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4564</description>
<wire x1="-1.525" y1="3.125" x2="1.525" y2="3.125" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-3.125" x2="-1.525" y2="-3.125" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<text x="-1.6" y="3.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-4.625" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-3.2" x2="-1.1" y2="3.2" layer="51"/>
<rectangle x1="1.1" y1="-3.2" x2="1.6" y2="3.2" layer="51"/>
</package>
<package name="C2220K" urn="urn:adsk.eagle:footprint:23193/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2220 reflow solder&lt;/b&gt;&lt;p&gt;Metric Code Size 5650</description>
<wire x1="-2.725" y1="2.425" x2="2.725" y2="2.425" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-2.425" x2="-2.725" y2="-2.425" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<text x="-2.8" y="2.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-3.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-2.5" x2="-2.2" y2="2.5" layer="51"/>
<rectangle x1="2.2" y1="-2.5" x2="2.8" y2="2.5" layer="51"/>
</package>
<package name="C2225K" urn="urn:adsk.eagle:footprint:23194/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2225 reflow solder&lt;/b&gt;&lt;p&gt;Metric Code Size 5664</description>
<wire x1="-2.725" y1="3.075" x2="2.725" y2="3.075" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-3.075" x2="-2.725" y2="-3.075" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<text x="-2.8" y="3.6" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-4.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-3.15" x2="-2.2" y2="3.15" layer="51"/>
<rectangle x1="2.2" y1="-3.15" x2="2.8" y2="3.15" layer="51"/>
</package>
<package name="C0201" urn="urn:adsk.eagle:footprint:23196/1" library_version="11">
<description>Source: http://www.avxcorp.com/docs/catalogs/cx5r.pdf</description>
<smd name="1" x="-0.25" y="0" dx="0.25" dy="0.35" layer="1"/>
<smd name="2" x="0.25" y="0" dx="0.25" dy="0.35" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="0.1" x2="0.15" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="-0.1" layer="51"/>
</package>
<package name="C1808" urn="urn:adsk.eagle:footprint:23197/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Source: AVX .. aphvc.pdf</description>
<wire x1="-1.4732" y1="0.9502" x2="1.4732" y2="0.9502" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-0.9502" x2="1.4732" y2="-0.9502" width="0.1016" layer="51"/>
<smd name="1" x="-1.95" y="0" dx="1.6" dy="2.2" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.6" dy="2.2" layer="1"/>
<text x="-2.233" y="1.827" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.233" y="-2.842" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.275" y1="-1.015" x2="-1.225" y2="1.015" layer="51"/>
<rectangle x1="1.225" y1="-1.015" x2="2.275" y2="1.015" layer="51"/>
</package>
<package name="C3640" urn="urn:adsk.eagle:footprint:23198/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Source: AVX .. aphvc.pdf</description>
<wire x1="-3.8322" y1="5.0496" x2="3.8322" y2="5.0496" width="0.1016" layer="51"/>
<wire x1="-3.8322" y1="-5.0496" x2="3.8322" y2="-5.0496" width="0.1016" layer="51"/>
<smd name="1" x="-4.267" y="0" dx="2.6" dy="10.7" layer="1"/>
<smd name="2" x="4.267" y="0" dx="2.6" dy="10.7" layer="1"/>
<text x="-4.647" y="6.465" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.647" y="-7.255" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.57" y1="-5.1" x2="-3.05" y2="5.1" layer="51"/>
<rectangle x1="3.05" y1="-5.1" x2="4.5688" y2="5.1" layer="51"/>
</package>
<package name="C01005" urn="urn:adsk.eagle:footprint:23199/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0402" urn="urn:adsk.eagle:footprint:23043/3" library_version="11">
<description>&lt;b&gt;Chip RESISTOR 0402 EIA (1005 Metric)&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1" y1="0.483" x2="1" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1" y1="0.483" x2="1" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1" y1="-0.483" x2="-1" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1" y1="-0.483" x2="-1" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.5" y="0" dx="0.6" dy="0.7" layer="1"/>
<smd name="2" x="0.5" y="0" dx="0.6" dy="0.7" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.35" x2="0.1999" y2="0.35" layer="35"/>
</package>
<package name="R0603" urn="urn:adsk.eagle:footprint:23044/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0805" urn="urn:adsk.eagle:footprint:23045/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R0805W" urn="urn:adsk.eagle:footprint:23046/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1206" urn="urn:adsk.eagle:footprint:23047/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1206W" urn="urn:adsk.eagle:footprint:23048/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1210" urn="urn:adsk.eagle:footprint:23049/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
</package>
<package name="R1210W" urn="urn:adsk.eagle:footprint:23050/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="R2010" urn="urn:adsk.eagle:footprint:23051/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2010W" urn="urn:adsk.eagle:footprint:23052/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2012" urn="urn:adsk.eagle:footprint:23053/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2012W" urn="urn:adsk.eagle:footprint:23054/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.94" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="0.94" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2512" urn="urn:adsk.eagle:footprint:23055/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2512W" urn="urn:adsk.eagle:footprint:23056/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.896" y="0" dx="2" dy="2.1" layer="1"/>
<smd name="2" x="2.896" y="0" dx="2" dy="2.1" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R3216" urn="urn:adsk.eagle:footprint:23057/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3216W" urn="urn:adsk.eagle:footprint:23058/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3225" urn="urn:adsk.eagle:footprint:23059/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R3225W" urn="urn:adsk.eagle:footprint:23060/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R5025" urn="urn:adsk.eagle:footprint:23061/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R5025W" urn="urn:adsk.eagle:footprint:23062/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332" urn="urn:adsk.eagle:footprint:23063/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332W" urn="urn:adsk.eagle:footprint:25646/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<smd name="2" x="3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M0805" urn="urn:adsk.eagle:footprint:23065/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M1206" urn="urn:adsk.eagle:footprint:23066/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M1406" urn="urn:adsk.eagle:footprint:23067/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="M2012" urn="urn:adsk.eagle:footprint:23068/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M2309" urn="urn:adsk.eagle:footprint:23069/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M3216" urn="urn:adsk.eagle:footprint:23070/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M3516" urn="urn:adsk.eagle:footprint:23071/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="M5923" urn="urn:adsk.eagle:footprint:23072/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="0204/5" urn="urn:adsk.eagle:footprint:22991/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7" urn="urn:adsk.eagle:footprint:22998/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0207/10" urn="urn:adsk.eagle:footprint:22992/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12" urn="urn:adsk.eagle:footprint:22993/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 12 mm</description>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15" urn="urn:adsk.eagle:footprint:22997/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 15mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V" urn="urn:adsk.eagle:footprint:22994/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V" urn="urn:adsk.eagle:footprint:22995/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7" urn="urn:adsk.eagle:footprint:22996/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 7.5 mm</description>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0309/10" urn="urn:adsk.eagle:footprint:23073/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 10mm</description>
<wire x1="-4.699" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="5.08" y1="0" x2="4.699" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.6228" y1="-0.3048" x2="-4.318" y2="0.3048" layer="51"/>
<rectangle x1="4.318" y1="-0.3048" x2="4.6228" y2="0.3048" layer="51"/>
</package>
<package name="0309/12" urn="urn:adsk.eagle:footprint:23074/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.318" y1="-0.3048" x2="5.1816" y2="0.3048" layer="21"/>
<rectangle x1="-5.1816" y1="-0.3048" x2="-4.318" y2="0.3048" layer="21"/>
</package>
<package name="0411/12" urn="urn:adsk.eagle:footprint:23076/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.762" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.762" layer="51"/>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.3594" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
<rectangle x1="5.08" y1="-0.381" x2="5.3594" y2="0.381" layer="21"/>
</package>
<package name="0411/15" urn="urn:adsk.eagle:footprint:23077/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 15 mm</description>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0" x2="-6.35" y2="0" width="0.762" layer="51"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.762" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="5.08" y1="-0.381" x2="6.477" y2="0.381" layer="21"/>
<rectangle x1="-6.477" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
</package>
<package name="0411V" urn="urn:adsk.eagle:footprint:23078/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 3.81 mm</description>
<wire x1="1.27" y1="0" x2="0.3048" y2="0" width="0.762" layer="51"/>
<wire x1="-1.5748" y1="0" x2="-2.54" y2="0" width="0.762" layer="51"/>
<circle x="-2.54" y="0" radius="2.032" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.9144" shape="octagon"/>
<text x="-0.508" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.5334" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.4732" y1="-0.381" x2="0.2032" y2="0.381" layer="21"/>
</package>
<package name="0414/15" urn="urn:adsk.eagle:footprint:23079/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="1.905" x2="-5.842" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-5.842" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="-2.159" x2="6.096" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="2.159" x2="6.096" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-6.096" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="2.159" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-2.159" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="-4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.842" y1="2.159" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-2.159" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-1.905" x2="6.096" y2="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.5654" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.4064" x2="6.5024" y2="0.4064" layer="21"/>
<rectangle x1="-6.5024" y1="-0.4064" x2="-6.096" y2="0.4064" layer="21"/>
</package>
<package name="0414V" urn="urn:adsk.eagle:footprint:23080/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.159" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.381" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.381" y="-2.3622" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.2954" y2="0.4064" layer="21"/>
</package>
<package name="0617/17" urn="urn:adsk.eagle:footprint:23081/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 17.5 mm</description>
<wire x1="-8.89" y1="0" x2="-8.636" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.636" y1="0" x2="8.89" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.016" shape="octagon"/>
<text x="-8.128" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.096" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.5344" y1="-0.4064" x2="-8.2296" y2="0.4064" layer="51"/>
<rectangle x1="8.2296" y1="-0.4064" x2="8.5344" y2="0.4064" layer="51"/>
</package>
<package name="0617/22" urn="urn:adsk.eagle:footprint:23082/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 22.5 mm</description>
<wire x1="-10.287" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.287" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.255" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.1854" y1="-0.4064" x2="-8.255" y2="0.4064" layer="21"/>
<rectangle x1="8.255" y1="-0.4064" x2="10.1854" y2="0.4064" layer="21"/>
</package>
<package name="0617V" urn="urn:adsk.eagle:footprint:23083/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="3.048" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="0.635" y="1.4224" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="-2.6162" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.3208" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="0922/22" urn="urn:adsk.eagle:footprint:23084/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 22.5 mm</description>
<wire x1="11.43" y1="0" x2="10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-11.43" y1="0" x2="-10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-10.16" y1="-4.191" x2="-10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="4.572" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.318" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-4.572" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="-4.318" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="-8.636" y2="4.318" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="-8.636" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="9.779" y1="4.572" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="9.779" y1="-4.572" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.191" x2="-9.779" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.16" y1="4.191" x2="-9.779" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.779" y1="-4.572" x2="10.16" y2="-4.191" width="0.1524" layer="21" curve="90"/>
<wire x1="9.779" y1="4.572" x2="10.16" y2="4.191" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-10.16" y="5.1054" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.7188" y1="-0.4064" x2="-10.16" y2="0.4064" layer="51"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-10.16" y2="0.4064" layer="21"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.7188" y2="0.4064" layer="51"/>
</package>
<package name="P0613V" urn="urn:adsk.eagle:footprint:23085/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.286" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.254" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.254" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="P0613/15" urn="urn:adsk.eagle:footprint:23086/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.032" x2="-6.223" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.032" x2="-6.223" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="-2.286" x2="6.477" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="2.286" x2="6.477" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.223" y1="2.286" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.159" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.159" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="-5.207" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="-5.207" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.223" y1="2.286" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-2.286" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="0.635" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.032" x2="6.477" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.032" x2="-6.477" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.477" y="2.6924" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-7.0358" y1="-0.4064" x2="-6.477" y2="0.4064" layer="51"/>
<rectangle x1="6.477" y1="-0.4064" x2="7.0358" y2="0.4064" layer="51"/>
</package>
<package name="P0817/22" urn="urn:adsk.eagle:footprint:23087/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 22.5 mm</description>
<wire x1="-10.414" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="-3.429" x2="-8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="3.81" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="3.556" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="-3.81" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.556" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="-6.985" y2="3.556" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="-6.985" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.128" y1="3.81" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-3.81" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.429" x2="8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.414" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="3.429" x2="-8.128" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.509" y1="-3.429" x2="-8.128" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="8.128" y1="3.81" x2="8.509" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.128" y1="-3.81" x2="8.509" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="4.2164" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="6.604" y="-2.2606" size="1.27" layer="51" ratio="10" rot="R90">0817</text>
<rectangle x1="8.509" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-8.509" y2="0.4064" layer="21"/>
</package>
<package name="P0817V" urn="urn:adsk.eagle:footprint:23088/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 6.35 mm</description>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="3.81" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.016" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.032" size="1.016" layer="21" ratio="12">0817</text>
<rectangle x1="-3.81" y1="-0.4064" x2="0" y2="0.4064" layer="21"/>
</package>
<package name="V234/12" urn="urn:adsk.eagle:footprint:23089/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V234, grid 12.5 mm</description>
<wire x1="-4.953" y1="1.524" x2="-4.699" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.953" y1="-1.524" x2="-4.699" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="1.524" x2="-4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="-4.699" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.8128" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.016" shape="octagon"/>
<text x="-4.953" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.953" y1="-0.4064" x2="5.4102" y2="0.4064" layer="21"/>
<rectangle x1="-5.4102" y1="-0.4064" x2="-4.953" y2="0.4064" layer="21"/>
</package>
<package name="V235/17" urn="urn:adsk.eagle:footprint:23090/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V235, grid 17.78 mm</description>
<wire x1="-6.731" y1="2.921" x2="6.731" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="2.54" x2="-7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.921" x2="-6.731" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0" x2="7.874" y2="0" width="1.016" layer="51"/>
<wire x1="-7.874" y1="0" x2="-8.89" y2="0" width="1.016" layer="51"/>
<wire x1="-7.112" y1="-2.54" x2="-6.731" y2="-2.921" width="0.1524" layer="21" curve="90"/>
<wire x1="6.731" y1="2.921" x2="7.112" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="-2.921" x2="7.112" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.112" y1="2.54" x2="-6.731" y2="2.921" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-8.89" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.1938" shape="octagon"/>
<text x="-6.858" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.842" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="7.112" y1="-0.508" x2="7.747" y2="0.508" layer="21"/>
<rectangle x1="-7.747" y1="-0.508" x2="-7.112" y2="0.508" layer="21"/>
</package>
<package name="V526-0" urn="urn:adsk.eagle:footprint:23091/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V526-0, grid 2.5 mm</description>
<wire x1="-2.54" y1="1.016" x2="-2.286" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="1.27" x2="2.54" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="-1.27" x2="2.54" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="-1.016" x2="-2.286" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.27" x2="-2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.016" x2="2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.27" x2="2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="-2.54" y2="-1.016" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.413" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102AX" urn="urn:adsk.eagle:footprint:23100/1" library_version="11">
<description>&lt;b&gt;Mini MELF 0102 Axial&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.6" width="0" layer="51"/>
<circle x="0" y="0" radius="0.6" width="0" layer="52"/>
<smd name="1" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100"/>
<smd name="2" x="0" y="0" dx="1.9" dy="1.9" layer="16" roundness="100"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
<hole x="0" y="0" drill="1.3"/>
</package>
<package name="0922V" urn="urn:adsk.eagle:footprint:23098/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 7.5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.508" y="1.6764" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.508" y="-2.9972" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.54" size="1.016" layer="21" ratio="12">0922</text>
<rectangle x1="-3.81" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="MINI_MELF-0102R" urn="urn:adsk.eagle:footprint:23092/1" library_version="11">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102W" urn="urn:adsk.eagle:footprint:23093/1" library_version="11">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<smd name="2" x="0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204R" urn="urn:adsk.eagle:footprint:25676/1" library_version="11">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.938" y1="0.6" x2="-0.938" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.938" y1="-0.6" x2="0.938" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204W" urn="urn:adsk.eagle:footprint:25677/1" library_version="11">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.684" y1="0.6" x2="-0.684" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.684" y1="-0.6" x2="0.684" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207R" urn="urn:adsk.eagle:footprint:25678/1" library_version="11">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.2125" y1="1" x2="-1.2125" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.2125" y1="-1" x2="1.2125" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<smd name="2" x="2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<text x="-2.2225" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.2225" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207W" urn="urn:adsk.eagle:footprint:25679/1" library_version="11">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.149" y1="1" x2="-1.149" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.149" y1="-1" x2="1.149" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<smd name="2" x="2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<text x="-2.54" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RDH/15" urn="urn:adsk.eagle:footprint:23099/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type RDH, grid 15 mm</description>
<wire x1="-7.62" y1="0" x2="-6.858" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="3.048" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="2.794" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-3.048" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.794" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="-4.953" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="-4.953" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.667" x2="-6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-2.667" x2="6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.858" y1="0" x2="7.62" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.667" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="3.048" x2="6.477" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.667" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="6.096" y1="-3.048" x2="6.477" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.572" y="-1.7272" size="1.27" layer="51" ratio="10" rot="R90">RDH</text>
<rectangle x1="-6.7564" y1="-0.4064" x2="-6.4516" y2="0.4064" layer="51"/>
<rectangle x1="6.4516" y1="-0.4064" x2="6.7564" y2="0.4064" layer="51"/>
</package>
<package name="0204V" urn="urn:adsk.eagle:footprint:22999/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0309V" urn="urn:adsk.eagle:footprint:23075/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 2.5 mm</description>
<wire x1="1.27" y1="0" x2="0.635" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.524" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="0.254" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-2.2098" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.254" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.635" y1="-0.3048" x2="-0.3302" y2="0.3048" layer="51"/>
<rectangle x1="-0.3302" y1="-0.3048" x2="0.254" y2="0.3048" layer="21"/>
</package>
<package name="R0201" urn="urn:adsk.eagle:footprint:25683/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
</package>
<package name="VMTA55" urn="urn:adsk.eagle:footprint:25689/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-5.08" y1="0" x2="-4.26" y2="0" width="0.6096" layer="51"/>
<wire x1="3.3375" y1="-1.45" x2="3.3375" y2="1.45" width="0.1524" layer="21"/>
<wire x1="3.3375" y1="1.45" x2="-3.3625" y2="1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="1.45" x2="-3.3625" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="-1.45" x2="3.3375" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="4.235" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.1" shape="octagon"/>
<text x="-3.175" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.26" y1="-0.3048" x2="-3.3075" y2="0.3048" layer="21"/>
<rectangle x1="3.2825" y1="-0.3048" x2="4.235" y2="0.3048" layer="21"/>
</package>
<package name="VMTB60" urn="urn:adsk.eagle:footprint:25690/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC60&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.585" y2="0" width="0.6096" layer="51"/>
<wire x1="4.6875" y1="-1.95" x2="4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="4.6875" y1="1.95" x2="-4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="1.95" x2="-4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="-1.95" x2="4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="5.585" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-4.445" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.585" y1="-0.3048" x2="-4.6325" y2="0.3048" layer="21"/>
<rectangle x1="4.6325" y1="-0.3048" x2="5.585" y2="0.3048" layer="21"/>
</package>
<package name="VTA52" urn="urn:adsk.eagle:footprint:25684/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR52&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-15.24" y1="0" x2="-13.97" y2="0" width="0.6096" layer="51"/>
<wire x1="12.6225" y1="0.025" x2="12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="4.725" x2="-12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="4.725" x2="-12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="0.025" x2="-12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="-4.65" x2="12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="-4.65" x2="12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="13.97" y1="0" x2="15.24" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-15.24" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="15.24" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-13.97" y1="-0.3048" x2="-12.5675" y2="0.3048" layer="21"/>
<rectangle x1="12.5675" y1="-0.3048" x2="13.97" y2="0.3048" layer="21"/>
</package>
<package name="VTA53" urn="urn:adsk.eagle:footprint:25685/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR53&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="4.7" x2="-9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="4.7" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-4.675" x2="9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-4.675" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA54" urn="urn:adsk.eagle:footprint:25686/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR54&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="3.3" x2="-9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="3.3" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-3.3" x2="9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-3.3" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA55" urn="urn:adsk.eagle:footprint:25687/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-8.255" y1="0" x2="-6.985" y2="0" width="0.6096" layer="51"/>
<wire x1="6.405" y1="0" x2="6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="3.3" x2="-6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="3.3" x2="-6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="0" x2="-6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="-3.3" x2="6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="-3.3" x2="6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="6.985" y1="0" x2="8.255" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-8.255" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="8.255" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.985" y1="-0.3048" x2="-6.35" y2="0.3048" layer="21"/>
<rectangle x1="6.35" y1="-0.3048" x2="6.985" y2="0.3048" layer="21"/>
</package>
<package name="VTA56" urn="urn:adsk.eagle:footprint:25688/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR56&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="4.5" y1="0" x2="4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="3.3" x2="-4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="3.3" x2="-4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="0" x2="-4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="-3.3" x2="4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="-3.3" x2="4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.08" y2="0.3048" layer="21"/>
</package>
<package name="R4527" urn="urn:adsk.eagle:footprint:13246/1" library_version="11">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0001" urn="urn:adsk.eagle:footprint:25692/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.075" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="1.606" x2="3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-2.544" y="2.229" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.501" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0002" urn="urn:adsk.eagle:footprint:25693/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.55" y1="3.375" x2="-5.55" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.55" y1="-3.375" x2="5.55" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.55" y1="-3.375" x2="5.55" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.55" y1="3.375" x2="-5.55" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.65" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.65" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC01/2" urn="urn:adsk.eagle:footprint:25694/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="-1.475" width="0.2032" layer="51"/>
<wire x1="-2.45" y1="-1.475" x2="2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="1.475" width="0.2032" layer="51"/>
<wire x1="2.45" y1="1.475" x2="-2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="1.106" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="-1.106" x2="-2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="1.106" x2="2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="-1.106" width="0.2032" layer="21"/>
<smd name="1" x="-2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<smd name="2" x="2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<text x="-2.544" y="1.904" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.176" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC2515" urn="urn:adsk.eagle:footprint:25695/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.05" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.05" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="1.606" x2="3.05" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-3.2" y="2.15" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.2" y="-3.4" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC4527" urn="urn:adsk.eagle:footprint:25696/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.675" y1="3.4" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.675" y1="-3.375" x2="5.675" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.675" y1="-3.375" x2="5.675" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.675" y1="3.4" x2="-5.675" y2="3.4" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.775" y="3.925" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.775" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC6927" urn="urn:adsk.eagle:footprint:25697/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-8.65" y1="3.375" x2="-8.65" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-8.65" y1="-3.375" x2="8.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="8.65" y1="-3.375" x2="8.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="8.65" y1="3.375" x2="-8.65" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-7.95" y="0.025" dx="3.94" dy="5.97" layer="1"/>
<smd name="2" x="7.95" y="0" dx="3.94" dy="5.97" layer="1"/>
<text x="-8.75" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.75" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218" urn="urn:adsk.eagle:footprint:25698/1" library_version="11">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
</package>
<package name="1812X7R" urn="urn:adsk.eagle:footprint:25699/1" library_version="11">
<description>&lt;b&gt;Chip Monolithic Ceramic Capacitors&lt;/b&gt; Medium Voltage High Capacitance for General Use&lt;p&gt;
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<wire x1="-1.1" y1="1.5" x2="1.1" y2="1.5" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.5" x2="-1.1" y2="-1.5" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="1.5" x2="0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.6" y1="-1.5" x2="-0.6" y2="-1.5" width="0.2032" layer="21"/>
<smd name="1" x="-1.425" y="0" dx="0.8" dy="3.5" layer="1"/>
<smd name="2" x="1.425" y="0" dx="0.8" dy="3.5" layer="1" rot="R180"/>
<text x="-1.9456" y="1.9958" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.9456" y="-3.7738" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.4" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="1.4" y2="1.6" layer="51" rot="R180"/>
</package>
<package name="R01005" urn="urn:adsk.eagle:footprint:25701/1" library_version="11">
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="CAPC1005X60" urn="urn:adsk.eagle:package:23626/2" type="model" library_version="11">
<description>Chip, 1.00 X 0.50 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.00 X 0.50 X 0.60 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="C0402"/>
</packageinstances>
</package3d>
<package3d name="C0504" urn="urn:adsk.eagle:package:23624/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0504"/>
</packageinstances>
</package3d>
<package3d name="C0603" urn="urn:adsk.eagle:package:23616/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0603"/>
</packageinstances>
</package3d>
<package3d name="C0805" urn="urn:adsk.eagle:package:23617/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0805"/>
</packageinstances>
</package3d>
<package3d name="C1206" urn="urn:adsk.eagle:package:23618/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1206"/>
</packageinstances>
</package3d>
<package3d name="C1210" urn="urn:adsk.eagle:package:23619/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1210"/>
</packageinstances>
</package3d>
<package3d name="C1310" urn="urn:adsk.eagle:package:23620/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1310"/>
</packageinstances>
</package3d>
<package3d name="C1608" urn="urn:adsk.eagle:package:23621/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1608"/>
</packageinstances>
</package3d>
<package3d name="C1812" urn="urn:adsk.eagle:package:23622/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1812"/>
</packageinstances>
</package3d>
<package3d name="C1825" urn="urn:adsk.eagle:package:23623/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1825"/>
</packageinstances>
</package3d>
<package3d name="C2012" urn="urn:adsk.eagle:package:23625/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C2012"/>
</packageinstances>
</package3d>
<package3d name="C3216" urn="urn:adsk.eagle:package:23628/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C3216"/>
</packageinstances>
</package3d>
<package3d name="C3225" urn="urn:adsk.eagle:package:23655/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C3225"/>
</packageinstances>
</package3d>
<package3d name="C4532" urn="urn:adsk.eagle:package:23627/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C4532"/>
</packageinstances>
</package3d>
<package3d name="C4564" urn="urn:adsk.eagle:package:23648/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C4564"/>
</packageinstances>
</package3d>
<package3d name="C025-024X044" urn="urn:adsk.eagle:package:23630/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<packageinstances>
<packageinstance name="C025-024X044"/>
</packageinstances>
</package3d>
<package3d name="C025-025X050" urn="urn:adsk.eagle:package:23629/2" type="model" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 2.5 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-025X050"/>
</packageinstances>
</package3d>
<package3d name="C025-030X050" urn="urn:adsk.eagle:package:23631/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 3 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-030X050"/>
</packageinstances>
</package3d>
<package3d name="C025-040X050" urn="urn:adsk.eagle:package:23634/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 4 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-040X050"/>
</packageinstances>
</package3d>
<package3d name="C025-050X050" urn="urn:adsk.eagle:package:23633/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 5 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-050X050"/>
</packageinstances>
</package3d>
<package3d name="C025-060X050" urn="urn:adsk.eagle:package:23632/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 6 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-060X050"/>
</packageinstances>
</package3d>
<package3d name="C025_050-024X070" urn="urn:adsk.eagle:package:23639/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm + 5 mm, outline 2.4 x 7 mm</description>
<packageinstances>
<packageinstance name="C025_050-024X070"/>
</packageinstances>
</package3d>
<package3d name="C025_050-025X075" urn="urn:adsk.eagle:package:23641/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 2.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-025X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-035X075" urn="urn:adsk.eagle:package:23651/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 3.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-035X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-045X075" urn="urn:adsk.eagle:package:23635/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 4.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-045X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-055X075" urn="urn:adsk.eagle:package:23636/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 5.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-055X075"/>
</packageinstances>
</package3d>
<package3d name="C050-024X044" urn="urn:adsk.eagle:package:23643/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 2.4 x 4.4 mm</description>
<packageinstances>
<packageinstance name="C050-024X044"/>
</packageinstances>
</package3d>
<package3d name="C050-025X075" urn="urn:adsk.eagle:package:23637/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 2.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-025X075"/>
</packageinstances>
</package3d>
<package3d name="C050-045X075" urn="urn:adsk.eagle:package:23638/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 4.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-045X075"/>
</packageinstances>
</package3d>
<package3d name="C050-030X075" urn="urn:adsk.eagle:package:23640/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 3 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-030X075"/>
</packageinstances>
</package3d>
<package3d name="C050-050X075" urn="urn:adsk.eagle:package:23665/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-050X075"/>
</packageinstances>
</package3d>
<package3d name="C050-055X075" urn="urn:adsk.eagle:package:23642/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 5.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-055X075"/>
</packageinstances>
</package3d>
<package3d name="C050-075X075" urn="urn:adsk.eagle:package:23645/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 7.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-075X075"/>
</packageinstances>
</package3d>
<package3d name="C050H075X075" urn="urn:adsk.eagle:package:23644/1" type="box" library_version="11">
<description>CAPACITOR
Horizontal, grid 5 mm, outline 7.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050H075X075"/>
</packageinstances>
</package3d>
<package3d name="C075-032X103" urn="urn:adsk.eagle:package:23646/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<packageinstances>
<packageinstance name="C075-032X103"/>
</packageinstances>
</package3d>
<package3d name="C075-042X103" urn="urn:adsk.eagle:package:23656/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<packageinstances>
<packageinstance name="C075-042X103"/>
</packageinstances>
</package3d>
<package3d name="C075-052X106" urn="urn:adsk.eagle:package:23650/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<packageinstances>
<packageinstance name="C075-052X106"/>
</packageinstances>
</package3d>
<package3d name="C102-043X133" urn="urn:adsk.eagle:package:23647/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-043X133"/>
</packageinstances>
</package3d>
<package3d name="C102-054X133" urn="urn:adsk.eagle:package:23649/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-054X133"/>
</packageinstances>
</package3d>
<package3d name="C102-064X133" urn="urn:adsk.eagle:package:23653/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-064X133"/>
</packageinstances>
</package3d>
<package3d name="C102_152-062X184" urn="urn:adsk.eagle:package:23652/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm + 15.2 mm, outline 6.2 x 18.4 mm</description>
<packageinstances>
<packageinstance name="C102_152-062X184"/>
</packageinstances>
</package3d>
<package3d name="C150-054X183" urn="urn:adsk.eagle:package:23669/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 5.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-054X183"/>
</packageinstances>
</package3d>
<package3d name="C150-064X183" urn="urn:adsk.eagle:package:23654/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 6.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-064X183"/>
</packageinstances>
</package3d>
<package3d name="C150-072X183" urn="urn:adsk.eagle:package:23657/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 7.2 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-072X183"/>
</packageinstances>
</package3d>
<package3d name="C150-084X183" urn="urn:adsk.eagle:package:23658/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 8.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-084X183"/>
</packageinstances>
</package3d>
<package3d name="C150-091X182" urn="urn:adsk.eagle:package:23659/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 9.1 x 18.2 mm</description>
<packageinstances>
<packageinstance name="C150-091X182"/>
</packageinstances>
</package3d>
<package3d name="C225-062X268" urn="urn:adsk.eagle:package:23661/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 6.2 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-062X268"/>
</packageinstances>
</package3d>
<package3d name="C225-074X268" urn="urn:adsk.eagle:package:23660/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 7.4 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-074X268"/>
</packageinstances>
</package3d>
<package3d name="C225-087X268" urn="urn:adsk.eagle:package:23662/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 8.7 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-087X268"/>
</packageinstances>
</package3d>
<package3d name="C225-108X268" urn="urn:adsk.eagle:package:23663/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 10.8 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-108X268"/>
</packageinstances>
</package3d>
<package3d name="C225-113X268" urn="urn:adsk.eagle:package:23667/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 11.3 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-113X268"/>
</packageinstances>
</package3d>
<package3d name="C275-093X316" urn="urn:adsk.eagle:package:23701/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 9.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-093X316"/>
</packageinstances>
</package3d>
<package3d name="C275-113X316" urn="urn:adsk.eagle:package:23673/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 11.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-113X316"/>
</packageinstances>
</package3d>
<package3d name="C275-134X316" urn="urn:adsk.eagle:package:23664/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 13.4 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-134X316"/>
</packageinstances>
</package3d>
<package3d name="C275-205X316" urn="urn:adsk.eagle:package:23666/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 20.5 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-205X316"/>
</packageinstances>
</package3d>
<package3d name="C325-137X374" urn="urn:adsk.eagle:package:23672/1" type="box" library_version="11">
<description>CAPACITOR
grid 32.5 mm, outline 13.7 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-137X374"/>
</packageinstances>
</package3d>
<package3d name="C325-162X374" urn="urn:adsk.eagle:package:23670/1" type="box" library_version="11">
<description>CAPACITOR
grid 32.5 mm, outline 16.2 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-162X374"/>
</packageinstances>
</package3d>
<package3d name="C325-182X374" urn="urn:adsk.eagle:package:23668/1" type="box" library_version="11">
<description>CAPACITOR
grid 32.5 mm, outline 18.2 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-182X374"/>
</packageinstances>
</package3d>
<package3d name="C375-192X418" urn="urn:adsk.eagle:package:23674/1" type="box" library_version="11">
<description>CAPACITOR
grid 37.5 mm, outline 19.2 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-192X418"/>
</packageinstances>
</package3d>
<package3d name="C375-203X418" urn="urn:adsk.eagle:package:23671/1" type="box" library_version="11">
<description>CAPACITOR
grid 37.5 mm, outline 20.3 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-203X418"/>
</packageinstances>
</package3d>
<package3d name="C050-035X075" urn="urn:adsk.eagle:package:23677/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 3.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-035X075"/>
</packageinstances>
</package3d>
<package3d name="C375-155X418" urn="urn:adsk.eagle:package:23675/1" type="box" library_version="11">
<description>CAPACITOR
grid 37.5 mm, outline 15.5 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-155X418"/>
</packageinstances>
</package3d>
<package3d name="C075-063X106" urn="urn:adsk.eagle:package:23678/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<packageinstances>
<packageinstance name="C075-063X106"/>
</packageinstances>
</package3d>
<package3d name="C275-154X316" urn="urn:adsk.eagle:package:23685/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 15.4 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-154X316"/>
</packageinstances>
</package3d>
<package3d name="C275-173X316" urn="urn:adsk.eagle:package:23676/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 17.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-173X316"/>
</packageinstances>
</package3d>
<package3d name="C0402K" urn="urn:adsk.eagle:package:23679/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 0204 reflow solder
Metric Code Size 1005</description>
<packageinstances>
<packageinstance name="C0402K"/>
</packageinstances>
</package3d>
<package3d name="C0603K" urn="urn:adsk.eagle:package:23680/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 0603 reflow solder
Metric Code Size 1608</description>
<packageinstances>
<packageinstance name="C0603K"/>
</packageinstances>
</package3d>
<package3d name="C0805K" urn="urn:adsk.eagle:package:23681/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 0805 reflow solder
Metric Code Size 2012</description>
<packageinstances>
<packageinstance name="C0805K"/>
</packageinstances>
</package3d>
<package3d name="C1206K" urn="urn:adsk.eagle:package:23682/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1206 reflow solder
Metric Code Size 3216</description>
<packageinstances>
<packageinstance name="C1206K"/>
</packageinstances>
</package3d>
<package3d name="C1210K" urn="urn:adsk.eagle:package:23683/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1210 reflow solder
Metric Code Size 3225</description>
<packageinstances>
<packageinstance name="C1210K"/>
</packageinstances>
</package3d>
<package3d name="C1812K" urn="urn:adsk.eagle:package:23686/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1812 reflow solder
Metric Code Size 4532</description>
<packageinstances>
<packageinstance name="C1812K"/>
</packageinstances>
</package3d>
<package3d name="C1825K" urn="urn:adsk.eagle:package:23684/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1825 reflow solder
Metric Code Size 4564</description>
<packageinstances>
<packageinstance name="C1825K"/>
</packageinstances>
</package3d>
<package3d name="C2220K" urn="urn:adsk.eagle:package:23687/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 2220 reflow solderMetric Code Size 5650</description>
<packageinstances>
<packageinstance name="C2220K"/>
</packageinstances>
</package3d>
<package3d name="C2225K" urn="urn:adsk.eagle:package:23692/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 2225 reflow solderMetric Code Size 5664</description>
<packageinstances>
<packageinstance name="C2225K"/>
</packageinstances>
</package3d>
<package3d name="C0201" urn="urn:adsk.eagle:package:23690/2" type="model" library_version="11">
<description>Source: http://www.avxcorp.com/docs/catalogs/cx5r.pdf</description>
<packageinstances>
<packageinstance name="C0201"/>
</packageinstances>
</package3d>
<package3d name="C1808" urn="urn:adsk.eagle:package:23689/2" type="model" library_version="11">
<description>CAPACITOR
Source: AVX .. aphvc.pdf</description>
<packageinstances>
<packageinstance name="C1808"/>
</packageinstances>
</package3d>
<package3d name="C3640" urn="urn:adsk.eagle:package:23693/2" type="model" library_version="11">
<description>CAPACITOR
Source: AVX .. aphvc.pdf</description>
<packageinstances>
<packageinstance name="C3640"/>
</packageinstances>
</package3d>
<package3d name="C01005" urn="urn:adsk.eagle:package:23691/1" type="box" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C01005"/>
</packageinstances>
</package3d>
<package3d name="R0402" urn="urn:adsk.eagle:package:23547/3" type="model" library_version="11">
<description>Chip RESISTOR 0402 EIA (1005 Metric)</description>
<packageinstances>
<packageinstance name="R0402"/>
</packageinstances>
</package3d>
<package3d name="R0603" urn="urn:adsk.eagle:package:23555/3" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0603"/>
</packageinstances>
</package3d>
<package3d name="R0805" urn="urn:adsk.eagle:package:23553/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0805"/>
</packageinstances>
</package3d>
<package3d name="R0805W" urn="urn:adsk.eagle:package:23537/2" type="model" library_version="11">
<description>RESISTOR wave soldering</description>
<packageinstances>
<packageinstance name="R0805W"/>
</packageinstances>
</package3d>
<package3d name="R1206" urn="urn:adsk.eagle:package:23540/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R1206"/>
</packageinstances>
</package3d>
<package3d name="R1206W" urn="urn:adsk.eagle:package:23539/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R1206W"/>
</packageinstances>
</package3d>
<package3d name="R1210" urn="urn:adsk.eagle:package:23554/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R1210"/>
</packageinstances>
</package3d>
<package3d name="R1210W" urn="urn:adsk.eagle:package:23541/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R1210W"/>
</packageinstances>
</package3d>
<package3d name="R2010" urn="urn:adsk.eagle:package:23551/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2010"/>
</packageinstances>
</package3d>
<package3d name="R2010W" urn="urn:adsk.eagle:package:23542/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2010W"/>
</packageinstances>
</package3d>
<package3d name="R2012" urn="urn:adsk.eagle:package:23543/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2012"/>
</packageinstances>
</package3d>
<package3d name="R2012W" urn="urn:adsk.eagle:package:23544/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2012W"/>
</packageinstances>
</package3d>
<package3d name="R2512" urn="urn:adsk.eagle:package:23545/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2512"/>
</packageinstances>
</package3d>
<package3d name="R2512W" urn="urn:adsk.eagle:package:23565/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2512W"/>
</packageinstances>
</package3d>
<package3d name="R3216" urn="urn:adsk.eagle:package:23557/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R3216"/>
</packageinstances>
</package3d>
<package3d name="R3216W" urn="urn:adsk.eagle:package:23548/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R3216W"/>
</packageinstances>
</package3d>
<package3d name="R3225" urn="urn:adsk.eagle:package:23549/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R3225"/>
</packageinstances>
</package3d>
<package3d name="R3225W" urn="urn:adsk.eagle:package:23550/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R3225W"/>
</packageinstances>
</package3d>
<package3d name="R5025" urn="urn:adsk.eagle:package:23552/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R5025"/>
</packageinstances>
</package3d>
<package3d name="R5025W" urn="urn:adsk.eagle:package:23558/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R5025W"/>
</packageinstances>
</package3d>
<package3d name="R6332" urn="urn:adsk.eagle:package:23559/2" type="model" library_version="11">
<description>RESISTOR
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<packageinstances>
<packageinstance name="R6332"/>
</packageinstances>
</package3d>
<package3d name="R6332W" urn="urn:adsk.eagle:package:26078/2" type="model" library_version="11">
<description>RESISTOR wave soldering
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<packageinstances>
<packageinstance name="R6332W"/>
</packageinstances>
</package3d>
<package3d name="M0805" urn="urn:adsk.eagle:package:23556/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.10 W</description>
<packageinstances>
<packageinstance name="M0805"/>
</packageinstances>
</package3d>
<package3d name="M1206" urn="urn:adsk.eagle:package:23566/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M1206"/>
</packageinstances>
</package3d>
<package3d name="M1406" urn="urn:adsk.eagle:package:23569/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.12 W</description>
<packageinstances>
<packageinstance name="M1406"/>
</packageinstances>
</package3d>
<package3d name="M2012" urn="urn:adsk.eagle:package:23561/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.10 W</description>
<packageinstances>
<packageinstance name="M2012"/>
</packageinstances>
</package3d>
<package3d name="M2309" urn="urn:adsk.eagle:package:23562/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M2309"/>
</packageinstances>
</package3d>
<package3d name="M3216" urn="urn:adsk.eagle:package:23563/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M3216"/>
</packageinstances>
</package3d>
<package3d name="M3516" urn="urn:adsk.eagle:package:23573/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.12 W</description>
<packageinstances>
<packageinstance name="M3516"/>
</packageinstances>
</package3d>
<package3d name="M5923" urn="urn:adsk.eagle:package:23564/3" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M5923"/>
</packageinstances>
</package3d>
<package3d name="0204/5" urn="urn:adsk.eagle:package:23488/1" type="box" library_version="11">
<description>RESISTOR
type 0204, grid 5 mm</description>
<packageinstances>
<packageinstance name="0204/5"/>
</packageinstances>
</package3d>
<package3d name="0204/7" urn="urn:adsk.eagle:package:23498/2" type="model" library_version="11">
<description>RESISTOR
type 0204, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0204/7"/>
</packageinstances>
</package3d>
<package3d name="0207/10" urn="urn:adsk.eagle:package:23491/2" type="model" library_version="11">
<description>RESISTOR
type 0207, grid 10 mm</description>
<packageinstances>
<packageinstance name="0207/10"/>
</packageinstances>
</package3d>
<package3d name="0207/12" urn="urn:adsk.eagle:package:23489/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 12 mm</description>
<packageinstances>
<packageinstance name="0207/12"/>
</packageinstances>
</package3d>
<package3d name="0207/15" urn="urn:adsk.eagle:package:23492/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 15mm</description>
<packageinstances>
<packageinstance name="0207/15"/>
</packageinstances>
</package3d>
<package3d name="0207/2V" urn="urn:adsk.eagle:package:23490/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0207/2V"/>
</packageinstances>
</package3d>
<package3d name="0207/5V" urn="urn:adsk.eagle:package:23502/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 5 mm</description>
<packageinstances>
<packageinstance name="0207/5V"/>
</packageinstances>
</package3d>
<package3d name="0207/7" urn="urn:adsk.eagle:package:23493/2" type="model" library_version="11">
<description>RESISTOR
type 0207, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0207/7"/>
</packageinstances>
</package3d>
<package3d name="0309/10" urn="urn:adsk.eagle:package:23567/2" type="model" library_version="11">
<description>RESISTOR
type 0309, grid 10mm</description>
<packageinstances>
<packageinstance name="0309/10"/>
</packageinstances>
</package3d>
<package3d name="0309/12" urn="urn:adsk.eagle:package:23571/1" type="box" library_version="11">
<description>RESISTOR
type 0309, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="0309/12"/>
</packageinstances>
</package3d>
<package3d name="0411/12" urn="urn:adsk.eagle:package:23578/1" type="box" library_version="11">
<description>RESISTOR
type 0411, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="0411/12"/>
</packageinstances>
</package3d>
<package3d name="0411/15" urn="urn:adsk.eagle:package:23568/2" type="model" library_version="11">
<description>RESISTOR
type 0411, grid 15 mm</description>
<packageinstances>
<packageinstance name="0411/15"/>
</packageinstances>
</package3d>
<package3d name="0411V" urn="urn:adsk.eagle:package:23570/1" type="box" library_version="11">
<description>RESISTOR
type 0411, grid 3.81 mm</description>
<packageinstances>
<packageinstance name="0411V"/>
</packageinstances>
</package3d>
<package3d name="0414/15" urn="urn:adsk.eagle:package:23579/2" type="model" library_version="11">
<description>RESISTOR
type 0414, grid 15 mm</description>
<packageinstances>
<packageinstance name="0414/15"/>
</packageinstances>
</package3d>
<package3d name="0414V" urn="urn:adsk.eagle:package:23574/1" type="box" library_version="11">
<description>RESISTOR
type 0414, grid 5 mm</description>
<packageinstances>
<packageinstance name="0414V"/>
</packageinstances>
</package3d>
<package3d name="0617/17" urn="urn:adsk.eagle:package:23575/2" type="model" library_version="11">
<description>RESISTOR
type 0617, grid 17.5 mm</description>
<packageinstances>
<packageinstance name="0617/17"/>
</packageinstances>
</package3d>
<package3d name="0617/22" urn="urn:adsk.eagle:package:23577/1" type="box" library_version="11">
<description>RESISTOR
type 0617, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="0617/22"/>
</packageinstances>
</package3d>
<package3d name="0617V" urn="urn:adsk.eagle:package:23576/1" type="box" library_version="11">
<description>RESISTOR
type 0617, grid 5 mm</description>
<packageinstances>
<packageinstance name="0617V"/>
</packageinstances>
</package3d>
<package3d name="0922/22" urn="urn:adsk.eagle:package:23580/2" type="model" library_version="11">
<description>RESISTOR
type 0922, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="0922/22"/>
</packageinstances>
</package3d>
<package3d name="P0613V" urn="urn:adsk.eagle:package:23582/1" type="box" library_version="11">
<description>RESISTOR
type 0613, grid 5 mm</description>
<packageinstances>
<packageinstance name="P0613V"/>
</packageinstances>
</package3d>
<package3d name="P0613/15" urn="urn:adsk.eagle:package:23581/2" type="model" library_version="11">
<description>RESISTOR
type 0613, grid 15 mm</description>
<packageinstances>
<packageinstance name="P0613/15"/>
</packageinstances>
</package3d>
<package3d name="P0817/22" urn="urn:adsk.eagle:package:23583/1" type="box" library_version="11">
<description>RESISTOR
type 0817, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="P0817/22"/>
</packageinstances>
</package3d>
<package3d name="P0817V" urn="urn:adsk.eagle:package:23608/1" type="box" library_version="11">
<description>RESISTOR
type 0817, grid 6.35 mm</description>
<packageinstances>
<packageinstance name="P0817V"/>
</packageinstances>
</package3d>
<package3d name="V234/12" urn="urn:adsk.eagle:package:23592/1" type="box" library_version="11">
<description>RESISTOR
type V234, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="V234/12"/>
</packageinstances>
</package3d>
<package3d name="V235/17" urn="urn:adsk.eagle:package:23586/2" type="model" library_version="11">
<description>RESISTOR
type V235, grid 17.78 mm</description>
<packageinstances>
<packageinstance name="V235/17"/>
</packageinstances>
</package3d>
<package3d name="V526-0" urn="urn:adsk.eagle:package:23590/1" type="box" library_version="11">
<description>RESISTOR
type V526-0, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="V526-0"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102AX" urn="urn:adsk.eagle:package:23594/1" type="box" library_version="11">
<description>Mini MELF 0102 Axial</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102AX"/>
</packageinstances>
</package3d>
<package3d name="0922V" urn="urn:adsk.eagle:package:23589/1" type="box" library_version="11">
<description>RESISTOR
type 0922, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0922V"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102R" urn="urn:adsk.eagle:package:23591/2" type="model" library_version="11">
<description>CECC Size RC2211 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102W" urn="urn:adsk.eagle:package:23588/2" type="model" library_version="11">
<description>CECC Size RC2211 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102W"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0204R" urn="urn:adsk.eagle:package:26109/2" type="model" library_version="11">
<description>CECC Size RC3715 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0204R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0204W" urn="urn:adsk.eagle:package:26111/2" type="model" library_version="11">
<description>CECC Size RC3715 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0204W"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0207R" urn="urn:adsk.eagle:package:26113/2" type="model" library_version="11">
<description>CECC Size RC6123 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0207R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0207W" urn="urn:adsk.eagle:package:26112/2" type="model" library_version="11">
<description>CECC Size RC6123 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0207W"/>
</packageinstances>
</package3d>
<package3d name="RDH/15" urn="urn:adsk.eagle:package:23595/1" type="box" library_version="11">
<description>RESISTOR
type RDH, grid 15 mm</description>
<packageinstances>
<packageinstance name="RDH/15"/>
</packageinstances>
</package3d>
<package3d name="0204V" urn="urn:adsk.eagle:package:23495/1" type="box" library_version="11">
<description>RESISTOR
type 0204, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0204V"/>
</packageinstances>
</package3d>
<package3d name="0309V" urn="urn:adsk.eagle:package:23572/1" type="box" library_version="11">
<description>RESISTOR
type 0309, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0309V"/>
</packageinstances>
</package3d>
<package3d name="R0201" urn="urn:adsk.eagle:package:26117/2" type="model" library_version="11">
<description>RESISTOR chip
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<packageinstances>
<packageinstance name="R0201"/>
</packageinstances>
</package3d>
<package3d name="VMTA55" urn="urn:adsk.eagle:package:26121/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RNC55
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VMTA55"/>
</packageinstances>
</package3d>
<package3d name="VMTB60" urn="urn:adsk.eagle:package:26122/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RNC60
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VMTB60"/>
</packageinstances>
</package3d>
<package3d name="VTA52" urn="urn:adsk.eagle:package:26116/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR52
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA52"/>
</packageinstances>
</package3d>
<package3d name="VTA53" urn="urn:adsk.eagle:package:26118/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR53
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA53"/>
</packageinstances>
</package3d>
<package3d name="VTA54" urn="urn:adsk.eagle:package:26119/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR54
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA54"/>
</packageinstances>
</package3d>
<package3d name="VTA55" urn="urn:adsk.eagle:package:26120/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR55
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA55"/>
</packageinstances>
</package3d>
<package3d name="VTA56" urn="urn:adsk.eagle:package:26129/3" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR56
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA56"/>
</packageinstances>
</package3d>
<package3d name="R4527" urn="urn:adsk.eagle:package:13310/2" type="model" library_version="11">
<description>Package 4527
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<packageinstances>
<packageinstance name="R4527"/>
</packageinstances>
</package3d>
<package3d name="WSC0001" urn="urn:adsk.eagle:package:26123/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC0001"/>
</packageinstances>
</package3d>
<package3d name="WSC0002" urn="urn:adsk.eagle:package:26125/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC0002"/>
</packageinstances>
</package3d>
<package3d name="WSC01/2" urn="urn:adsk.eagle:package:26127/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC01/2"/>
</packageinstances>
</package3d>
<package3d name="WSC2515" urn="urn:adsk.eagle:package:26134/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC2515"/>
</packageinstances>
</package3d>
<package3d name="WSC4527" urn="urn:adsk.eagle:package:26126/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC4527"/>
</packageinstances>
</package3d>
<package3d name="WSC6927" urn="urn:adsk.eagle:package:26128/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC6927"/>
</packageinstances>
</package3d>
<package3d name="R1218" urn="urn:adsk.eagle:package:26131/2" type="model" library_version="11">
<description>CRCW1218 Thick Film, Rectangular Chip Resistors
Source: http://www.vishay.com .. dcrcw.pdf</description>
<packageinstances>
<packageinstance name="R1218"/>
</packageinstances>
</package3d>
<package3d name="1812X7R" urn="urn:adsk.eagle:package:26130/2" type="model" library_version="11">
<description>Chip Monolithic Ceramic Capacitors Medium Voltage High Capacitance for General Use
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<packageinstances>
<packageinstance name="1812X7R"/>
</packageinstances>
</package3d>
<package3d name="R01005" urn="urn:adsk.eagle:package:26133/2" type="model" library_version="11">
<description>Chip, 0.40 X 0.20 X 0.16 mm body
&lt;p&gt;Chip package with body size 0.40 X 0.20 X 0.16 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="R01005"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="C-US" urn="urn:adsk.eagle:symbol:23201/1" library_version="11">
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-1" x2="2.4892" y2="-1.8542" width="0.254" layer="94" curve="-37.878202"/>
<wire x1="-2.4668" y1="-1.8504" x2="0" y2="-1.0161" width="0.254" layer="94" curve="-37.373024"/>
<text x="1.016" y="0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.016" y="-4.191" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="R-US" urn="urn:adsk.eagle:symbol:23200/1" library_version="11">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C-US" urn="urn:adsk.eagle:component:23794/44" prefix="C" uservalue="yes" library_version="11">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="C-US" x="0" y="0"/>
</gates>
<devices>
<device name="C0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23626/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="16" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0504" package="C0504">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23624/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0603" package="C0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23616/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="37" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0805" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23617/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="63" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1206" package="C1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23618/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="24" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1210" package="C1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23619/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="6" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1310" package="C1310">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23620/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1608" package="C1608">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23621/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1812" package="C1812">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23622/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1825" package="C1825">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23623/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C2012" package="C2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23625/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C3216" package="C3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23628/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C3225" package="C3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23655/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C4532" package="C4532">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23627/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C4564" package="C4564">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23648/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-024X044" package="C025-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23630/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-025X050" package="C025-025X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23629/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-030X050" package="C025-030X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23631/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-040X050" package="C025-040X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23634/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-050X050" package="C025-050X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23633/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-060X050" package="C025-060X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23632/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C025_050-024X070" package="C025_050-024X070">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23639/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-025X075" package="C025_050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23641/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-035X075" package="C025_050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23651/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-045X075" package="C025_050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23635/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-055X075" package="C025_050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23636/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-024X044" package="C050-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23643/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="14" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-025X075" package="C050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23637/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-045X075" package="C050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23638/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-030X075" package="C050-030X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23640/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="5" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-050X075" package="C050-050X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23665/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-055X075" package="C050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23642/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-075X075" package="C050-075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23645/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050H075X075" package="C050H075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23644/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-032X103" package="C075-032X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23646/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-042X103" package="C075-042X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23656/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-052X106" package="C075-052X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23650/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102-043X133" package="C102-043X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23647/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102-054X133" package="C102-054X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23649/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102-064X133" package="C102-064X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23653/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102_152-062X184" package="C102_152-062X184">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23652/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-054X183" package="C150-054X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23669/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-064X183" package="C150-064X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23654/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-072X183" package="C150-072X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23657/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-084X183" package="C150-084X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23658/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-091X182" package="C150-091X182">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23659/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-062X268" package="C225-062X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23661/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-074X268" package="C225-074X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23660/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-087X268" package="C225-087X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23662/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-108X268" package="C225-108X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23663/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-113X268" package="C225-113X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23667/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-093X316" package="C275-093X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23701/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-113X316" package="C275-113X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23673/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-134X316" package="C275-134X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23664/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-205X316" package="C275-205X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23666/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="325-137X374" package="C325-137X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23672/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="325-162X374" package="C325-162X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23670/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="325-182X374" package="C325-182X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23668/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="375-192X418" package="C375-192X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23674/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="375-203X418" package="C375-203X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23671/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-035X075" package="C050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23677/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="375-155X418" package="C375-155X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23675/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-063X106" package="C075-063X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23678/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-154X316" package="C275-154X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23685/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-173X316" package="C275-173X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23676/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0402K" package="C0402K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23679/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="4" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0603K" package="C0603K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23680/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="5" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0805K" package="C0805K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23681/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="19" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1206K" package="C1206K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23682/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1210K" package="C1210K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23683/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1812K" package="C1812K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23686/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1825K" package="C1825K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23684/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C2220K" package="C2220K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23687/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C2225K" package="C2225K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23692/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0201" package="C0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23690/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1808" package="C1808">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23689/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C3640" package="C3640">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23693/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="01005" package="C01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23691/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="C">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
<deviceset name="R-US_" urn="urn:adsk.eagle:component:23792/22" prefix="R" uservalue="yes" library_version="11">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="R-US" x="0" y="0"/>
</gates>
<devices>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23547/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="34" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23555/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="77" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23553/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="85" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0805W" package="R0805W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23537/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23540/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="19" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206W" package="R1206W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23539/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23554/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210W" package="R1210W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23541/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23551/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010W" package="R2010W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23542/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23543/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012W" package="R2012W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23544/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23545/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512W" package="R2512W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23565/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23557/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216W" package="R3216W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23548/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23549/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225W" package="R3225W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23550/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23552/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025W" package="R5025W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23558/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23559/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332W" package="R6332W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26078/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M0805" package="M0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23556/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="45" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M1206" package="M1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23566/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="22" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M1406" package="M1406">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23569/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M2012" package="M2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23561/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M2309" package="M2309">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23562/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M3216" package="M3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23563/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M3516" package="M3516">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23573/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M5923" package="M5923">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23564/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23488/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="18" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23498/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="48" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23491/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="36" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23489/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23492/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23490/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23502/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23493/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="22" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/10" package="0309/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23567/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/12" package="0309/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23571/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="8" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/12" package="0411/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23578/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/15" package="0411/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23568/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/3V" package="0411V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23570/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0414/15" package="0414/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23579/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0414/5V" package="0414V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23574/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/17" package="0617/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23575/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/22" package="0617/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23577/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/5V" package="0617V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23576/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0922/22" package="0922/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23580/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0613/5V" package="P0613V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23582/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0613/15" package="P0613/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23581/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0817/22" package="P0817/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23583/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0817/7V" package="P0817V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23608/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V234/12" package="V234/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23592/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V235/17" package="V235/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23586/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V526-0" package="V526-0">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23590/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102AX" package="MINI_MELF-0102AX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23594/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0922V" package="0922V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23589/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102R" package="MINI_MELF-0102R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23591/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102W" package="MINI_MELF-0102W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23588/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0204R" package="MINI_MELF-0204R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26109/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0204W" package="MINI_MELF-0204W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26111/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0207R" package="MINI_MELF-0207R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26113/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0207W" package="MINI_MELF-0207W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26112/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="RDH/15" package="RDH/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23595/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/2V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23495/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/V" package="0309V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23572/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26117/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VMTA55" package="VMTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26121/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VMTB60" package="VMTB60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26122/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA52" package="VTA52">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26116/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA53" package="VTA53">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26118/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA54" package="VTA54">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26119/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA55" package="VTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26120/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA56" package="VTA56">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26129/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13310/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC0001" package="WSC0001">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26123/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC0002" package="WSC0002">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26125/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC01/2" package="WSC01/2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26127/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC2515" package="WSC2515">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26134/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC4527" package="WSC4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26126/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC6927" package="WSC6927">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26128/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26131/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="1812X7R" package="1812X7R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26130/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="01005" package="R01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26133/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="LI0603G121R-10">
<packages>
<package name="FB_LI0603G121R-10">
<wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.127" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.127" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.127" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.127" layer="51"/>
<wire x1="-1.55" y1="0.65" x2="-1.55" y2="-0.65" width="0.05" layer="39"/>
<wire x1="-1.55" y1="-0.65" x2="1.55" y2="-0.65" width="0.05" layer="39"/>
<wire x1="1.55" y1="-0.65" x2="1.55" y2="0.65" width="0.05" layer="39"/>
<wire x1="1.55" y1="0.65" x2="-1.55" y2="0.65" width="0.05" layer="39"/>
<text x="-1.55" y="0.9" size="0.8128" layer="25">&gt;NAME</text>
<text x="-1.55" y="-0.9" size="0.8128" layer="27" align="top-left">&gt;VALUE</text>
<smd name="1" x="-0.8" y="0" dx="1" dy="0.8" layer="1"/>
<smd name="2" x="0.8" y="0" dx="1" dy="0.8" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="LI0603G121R-10">
<text x="-7.624440625" y="5.08148125" size="2.54148125" layer="95">&gt;NAME</text>
<text x="-7.62996875" y="-7.626640625" size="2.54331875" layer="96">&gt;VALUE</text>
<wire x1="-3.81" y1="-1.27" x2="-1.27" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-3.81" x2="3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="3.81" y1="1.27" x2="1.27" y2="3.81" width="0.254" layer="94"/>
<wire x1="1.27" y1="3.81" x2="-3.81" y2="-1.27" width="0.254" layer="94"/>
<pin name="2" x="7.62" y="0" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="1" x="-7.62" y="0" visible="off" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LI0603G121R-10" prefix="E">
<description> &lt;a href="https://pricing.snapeda.com/parts/LI0603G121R-10/Laird/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="LI0603G121R-10" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FB_LI0603G121R-10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="CHECK_PRICES" value="https://www.snapeda.com/parts/LI0603G121R-10/Laird/view-part/?ref=eda"/>
<attribute name="DESCRIPTION" value="                                                      EMI Ferrite Chip Bead, 0603, 700MA, 120 Ohms @100MHz, DCR Max 0.20Ohm | Laird Performance Materials LI0603G121R-10                                              "/>
<attribute name="MF" value="Laird"/>
<attribute name="MP" value="LI0603G121R-10"/>
<attribute name="PACKAGE" value="0603 Laird"/>
<attribute name="PRICE" value="None"/>
<attribute name="SNAPEDA_LINK" value="https://www.snapeda.com/parts/LI0603G121R-10/Laird/view-part/?ref=snap"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="KC2520Z8.00000C1KX00">
<description>&lt;Standard Clock Oscillators 8 MHz 20 PPM 15 pF&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="KC2520Z800000C1KX00">
<description>&lt;b&gt;KC2520Z8.00000C1KX00-1&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.925" y="-0.725" dx="1.05" dy="0.95" layer="1"/>
<smd name="2" x="0.925" y="-0.725" dx="1.05" dy="0.95" layer="1"/>
<smd name="3" x="0.925" y="0.725" dx="1.05" dy="0.95" layer="1"/>
<smd name="4" x="-0.925" y="0.725" dx="1.05" dy="0.95" layer="1"/>
<text x="0" y="-0.225" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-0.225" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.25" y1="0.8" x2="1.25" y2="0.8" width="0.2" layer="51"/>
<wire x1="1.25" y1="0.8" x2="1.25" y2="-0.8" width="0.2" layer="51"/>
<wire x1="1.25" y1="-0.8" x2="-1.25" y2="-0.8" width="0.2" layer="51"/>
<wire x1="-1.25" y1="-0.8" x2="-1.25" y2="0.8" width="0.2" layer="51"/>
<wire x1="-2.45" y1="2.2" x2="2.45" y2="2.2" width="0.1" layer="51"/>
<wire x1="2.45" y1="2.2" x2="2.45" y2="-2.65" width="0.1" layer="51"/>
<wire x1="2.45" y1="-2.65" x2="-2.45" y2="-2.65" width="0.1" layer="51"/>
<wire x1="-2.45" y1="-2.65" x2="-2.45" y2="2.2" width="0.1" layer="51"/>
<wire x1="-0.2" y1="0.8" x2="0.2" y2="0.8" width="0.1" layer="21"/>
<wire x1="-0.2" y1="-0.8" x2="0.2" y2="-0.8" width="0.1" layer="21"/>
<wire x1="-1.2" y1="-1.6" x2="-1.2" y2="-1.6" width="0.1" layer="21"/>
<wire x1="-1.2" y1="-1.6" x2="-1.1" y2="-1.6" width="0.1" layer="21" curve="180"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-1.6" width="0.1" layer="21"/>
<wire x1="-1.1" y1="-1.6" x2="-1.2" y2="-1.6" width="0.1" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="KC2520Z8.00000C1KX00">
<wire x1="5.08" y1="2.54" x2="40.64" y2="2.54" width="0.254" layer="94"/>
<wire x1="40.64" y1="-5.08" x2="40.64" y2="2.54" width="0.254" layer="94"/>
<wire x1="40.64" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="41.91" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="41.91" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="ENABLE/DISABLE" x="0" y="-2.54" length="middle"/>
<pin name="CASE_GND" x="45.72" y="-2.54" length="middle" rot="R180"/>
<pin name="OUTPUT" x="45.72" y="0" length="middle" rot="R180"/>
<pin name="VCC" x="0" y="0" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="KC2520Z8.00000C1KX00" prefix="Y">
<description>&lt;b&gt;Standard Clock Oscillators 8 MHz 20 PPM 15 pF&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://componentsearchengine.com/Datasheets/1/KC2520Z8.00000C1KX00.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="KC2520Z8.00000C1KX00" x="0" y="0"/>
</gates>
<devices>
<device name="" package="KC2520Z800000C1KX00">
<connects>
<connect gate="G$1" pin="CASE_GND" pad="2"/>
<connect gate="G$1" pin="ENABLE/DISABLE" pad="1"/>
<connect gate="G$1" pin="OUTPUT" pad="3"/>
<connect gate="G$1" pin="VCC" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Standard Clock Oscillators 8 MHz 20 PPM 15 pF" constant="no"/>
<attribute name="HEIGHT" value="0.8mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Kyocera AVX" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="KC2520Z8.00000C1KX00" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="581-KC2520Z800C1KX00" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/KYOCERA-AVX/KC2520Z8.00000C1KX00?qs=rrS6PyfT74cbg89ZqaPNCA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="iss66">
<packages>
<package name="SOIC8_150MIL_N_ISI">
<smd name="1" x="-2.72415" y="1.905" dx="1.4605" dy="0.5588" layer="1"/>
<smd name="2" x="-2.72415" y="0.635" dx="1.4605" dy="0.5588" layer="1"/>
<smd name="3" x="-2.72415" y="-0.635" dx="1.4605" dy="0.5588" layer="1"/>
<smd name="4" x="-2.72415" y="-1.905" dx="1.4605" dy="0.5588" layer="1"/>
<smd name="5" x="2.72415" y="-1.905" dx="1.4605" dy="0.5588" layer="1"/>
<smd name="6" x="2.72415" y="-0.635" dx="1.4605" dy="0.5588" layer="1"/>
<smd name="7" x="2.72415" y="0.635" dx="1.4605" dy="0.5588" layer="1"/>
<smd name="8" x="2.72415" y="1.905" dx="1.4605" dy="0.5588" layer="1"/>
<wire x1="-1.9812" y1="1.651" x2="-1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.159" x2="-3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.159" x2="-3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="1.651" x2="-1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.381" x2="-1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.889" x2="-3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.889" x2="-3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.381" x2="-1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.889" x2="-1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.381" x2="-3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.381" x2="-3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.889" x2="-1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.159" x2="-1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-1.651" x2="-3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-1.651" x2="-3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.159" x2="-1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-1.651" x2="1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.159" x2="3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.159" x2="3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-1.651" x2="1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.381" x2="1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.889" x2="3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.889" x2="3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.381" x2="1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.889" x2="1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.381" x2="3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.381" x2="3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.889" x2="1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.159" x2="1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="1.651" x2="3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="1.651" x2="3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.159" x2="1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.4892" x2="1.9812" y2="-2.4892" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.4892" x2="1.9812" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.4892" x2="-0.3048" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.4892" x2="-1.9812" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.4892" x2="-1.9812" y2="-2.4892" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.5146" x2="-0.3048" y2="2.4892" width="0.1524" layer="51" curve="-180"/>
<text x="-2.1844" y="1.1684" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-3.556" y="2.3368" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-2.0066" y="3.175" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-2.9972" y="-4.445" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="SOIC8_150MIL_N_ISI-M">
<smd name="1" x="-2.82575" y="1.905" dx="1.6637" dy="0.5588" layer="1"/>
<smd name="2" x="-2.82575" y="0.635" dx="1.6637" dy="0.5588" layer="1"/>
<smd name="3" x="-2.82575" y="-0.635" dx="1.6637" dy="0.5588" layer="1"/>
<smd name="4" x="-2.82575" y="-1.905" dx="1.6637" dy="0.5588" layer="1"/>
<smd name="5" x="2.82575" y="-1.905" dx="1.6637" dy="0.5588" layer="1"/>
<smd name="6" x="2.82575" y="-0.635" dx="1.6637" dy="0.5588" layer="1"/>
<smd name="7" x="2.82575" y="0.635" dx="1.6637" dy="0.5588" layer="1"/>
<smd name="8" x="2.82575" y="1.905" dx="1.6637" dy="0.5588" layer="1"/>
<wire x1="-1.9812" y1="1.651" x2="-1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.159" x2="-3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.159" x2="-3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="1.651" x2="-1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.381" x2="-1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.889" x2="-3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.889" x2="-3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.381" x2="-1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.889" x2="-1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.381" x2="-3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.381" x2="-3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.889" x2="-1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.159" x2="-1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-1.651" x2="-3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-1.651" x2="-3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.159" x2="-1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-1.651" x2="1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.159" x2="3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.159" x2="3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-1.651" x2="1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.381" x2="1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.889" x2="3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.889" x2="3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.381" x2="1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.889" x2="1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.381" x2="3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.381" x2="3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.889" x2="1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.159" x2="1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="1.651" x2="3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="1.651" x2="3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.159" x2="1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.4892" x2="1.9812" y2="-2.4892" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.4892" x2="1.9812" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.4892" x2="-0.3048" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.4892" x2="-1.9812" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.4892" x2="-1.9812" y2="-2.4892" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.5146" x2="-0.3048" y2="2.4892" width="0.1524" layer="51" curve="-180"/>
<text x="-2.1844" y="1.1684" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-1.9812" y1="4.4196" x2="-1.9812" y2="4.7752" width="0.1524" layer="48"/>
<wire x1="1.9812" y1="0" x2="1.9812" y2="4.4196" width="0.1524" layer="48"/>
<wire x1="1.9812" y1="4.4196" x2="1.9812" y2="4.7752" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="4.4196" x2="1.9812" y2="4.4196" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="4.4196" x2="-1.7272" y2="4.5212" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="4.4196" x2="-1.7272" y2="4.2672" width="0.1524" layer="48"/>
<wire x1="-1.7272" y1="4.5212" x2="-1.7272" y2="4.2672" width="0.1524" layer="48"/>
<wire x1="1.9812" y1="4.4196" x2="1.7272" y2="4.5212" width="0.1524" layer="48"/>
<wire x1="1.9812" y1="4.4196" x2="1.7272" y2="4.2672" width="0.1524" layer="48"/>
<wire x1="1.7272" y1="4.5212" x2="1.7272" y2="4.2672" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="-4.7752" x2="-3.0988" y2="-4.4196" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="-4.4196" x2="-3.0988" y2="6.2992" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="6.2992" x2="-3.0988" y2="6.7056" width="0.1524" layer="48"/>
<wire x1="3.0988" y1="0" x2="3.0988" y2="6.2992" width="0.1524" layer="48"/>
<wire x1="3.0988" y1="6.2992" x2="3.0988" y2="6.7056" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="6.2992" x2="3.0988" y2="6.2992" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="6.2992" x2="-2.8448" y2="6.4516" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="6.2992" x2="-2.8448" y2="6.1976" width="0.1524" layer="48"/>
<wire x1="-2.8448" y1="6.4516" x2="-2.8448" y2="6.1976" width="0.1524" layer="48"/>
<wire x1="3.0988" y1="6.2992" x2="2.8448" y2="6.4516" width="0.1524" layer="48"/>
<wire x1="3.0988" y1="6.2992" x2="2.8448" y2="6.1976" width="0.1524" layer="48"/>
<wire x1="2.8448" y1="6.4516" x2="2.8448" y2="6.1976" width="0.1524" layer="48"/>
<wire x1="0" y1="2.4892" x2="4.5212" y2="2.4892" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="2.4892" x2="4.9276" y2="2.4892" width="0.1524" layer="48"/>
<wire x1="0" y1="-2.4892" x2="4.5212" y2="-2.4892" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="-2.4892" x2="4.9276" y2="-2.4892" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="2.4892" x2="4.5212" y2="-2.4892" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="2.4892" x2="4.4196" y2="2.2352" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="2.4892" x2="4.6736" y2="2.2352" width="0.1524" layer="48"/>
<wire x1="4.4196" y1="2.2352" x2="4.6736" y2="2.2352" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="-2.4892" x2="4.4196" y2="-2.2352" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="-2.4892" x2="4.6736" y2="-2.2352" width="0.1524" layer="48"/>
<wire x1="4.4196" y1="-2.2352" x2="4.6736" y2="-2.2352" width="0.1524" layer="48"/>
<wire x1="-2.8194" y1="1.905" x2="-5.3594" y2="1.905" width="0.1524" layer="48"/>
<wire x1="-5.3594" y1="1.905" x2="-5.7404" y2="1.905" width="0.1524" layer="48"/>
<wire x1="-2.8194" y1="0.635" x2="-5.3594" y2="0.635" width="0.1524" layer="48"/>
<wire x1="-5.3594" y1="0.635" x2="-5.7404" y2="0.635" width="0.1524" layer="48"/>
<wire x1="-5.3594" y1="1.905" x2="-5.3594" y2="3.175" width="0.1524" layer="48"/>
<wire x1="-5.3594" y1="0.635" x2="-5.3594" y2="-0.635" width="0.1524" layer="48"/>
<wire x1="-5.3594" y1="1.905" x2="-5.4864" y2="2.159" width="0.1524" layer="48"/>
<wire x1="-5.3594" y1="1.905" x2="-5.2324" y2="2.159" width="0.1524" layer="48"/>
<wire x1="-5.4864" y1="2.159" x2="-5.2324" y2="2.159" width="0.1524" layer="48"/>
<wire x1="-5.3594" y1="0.635" x2="-5.4864" y2="0.381" width="0.1524" layer="48"/>
<wire x1="-5.3594" y1="0.635" x2="-5.2324" y2="0.381" width="0.1524" layer="48"/>
<wire x1="-5.4864" y1="0.381" x2="-5.2324" y2="0.381" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="4.4196" x2="-1.9812" y2="-4.4196" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="-4.4196" x2="-1.9812" y2="-4.7752" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="-4.4196" x2="-4.3688" y2="-4.4196" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="-4.4196" x2="-0.7112" y2="-4.4196" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="-4.4196" x2="-3.3528" y2="-4.2672" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="-4.4196" x2="-3.3528" y2="-4.5212" width="0.1524" layer="48"/>
<wire x1="-3.3528" y1="-4.2672" x2="-3.3528" y2="-4.5212" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="-4.4196" x2="-1.7272" y2="-4.2672" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="-4.4196" x2="-1.7272" y2="-4.5212" width="0.1524" layer="48"/>
<wire x1="-1.7272" y1="-4.2672" x2="-1.7272" y2="-4.5212" width="0.1524" layer="48"/>
<text x="-16.3576" y="-7.5692" size="1.27" layer="48" ratio="6" rot="SR0">Default Padstyle: RX65p5Y22D0T</text>
<text x="-16.7386" y="-9.0932" size="1.27" layer="48" ratio="6" rot="SR0">Pin One Padstyle: RX65p5Y22D0T</text>
<text x="-14.8082" y="-13.6652" size="1.27" layer="48" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-15.1892" size="1.27" layer="48" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="-4.0386" y="4.9276" size="0.635" layer="48" ratio="4" rot="SR0">0.157in/3.988mm</text>
<text x="-4.0386" y="6.8072" size="0.635" layer="48" ratio="4" rot="SR0">0.244in/6.198mm</text>
<text x="5.0292" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.197in/5.004mm</text>
<text x="-12.8016" y="0.9652" size="0.635" layer="48" ratio="4" rot="SR0">0.05in/1.27mm</text>
<text x="-6.0198" y="-5.5372" size="0.635" layer="48" ratio="4" rot="SR0">0.05in/1.27mm</text>
<wire x1="-2.1336" y1="-2.6416" x2="2.1336" y2="-2.6416" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="2.6416" x2="-2.1336" y2="2.6416" width="0.1524" layer="21"/>
<text x="-3.6576" y="2.3368" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="SOIC8_150MIL_N_ISI-L">
<smd name="1" x="-2.62255" y="1.905" dx="1.2573" dy="0.508" layer="1"/>
<smd name="2" x="-2.62255" y="0.635" dx="1.2573" dy="0.508" layer="1"/>
<smd name="3" x="-2.62255" y="-0.635" dx="1.2573" dy="0.508" layer="1"/>
<smd name="4" x="-2.62255" y="-1.905" dx="1.2573" dy="0.508" layer="1"/>
<smd name="5" x="2.62255" y="-1.905" dx="1.2573" dy="0.508" layer="1"/>
<smd name="6" x="2.62255" y="-0.635" dx="1.2573" dy="0.508" layer="1"/>
<smd name="7" x="2.62255" y="0.635" dx="1.2573" dy="0.508" layer="1"/>
<smd name="8" x="2.62255" y="1.905" dx="1.2573" dy="0.508" layer="1"/>
<wire x1="-1.9812" y1="1.651" x2="-1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.159" x2="-3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.159" x2="-3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="1.651" x2="-1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.381" x2="-1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.889" x2="-3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.889" x2="-3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.381" x2="-1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.889" x2="-1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.381" x2="-3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.381" x2="-3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.889" x2="-1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.159" x2="-1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-1.651" x2="-3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-1.651" x2="-3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.159" x2="-1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-1.651" x2="1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.159" x2="3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.159" x2="3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-1.651" x2="1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.381" x2="1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.889" x2="3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.889" x2="3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.381" x2="1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.889" x2="1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.381" x2="3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.381" x2="3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.889" x2="1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.159" x2="1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="1.651" x2="3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="1.651" x2="3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.159" x2="1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.4892" x2="1.9812" y2="-2.4892" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.4892" x2="1.9812" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.4892" x2="-0.3048" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.4892" x2="-1.9812" y2="2.4892" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.4892" x2="-1.9812" y2="-2.4892" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.5146" x2="-0.3048" y2="2.4892" width="0.1524" layer="51" curve="-180"/>
<text x="-2.1844" y="1.1684" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-1.9812" y1="4.4196" x2="-1.9812" y2="4.7752" width="0.1524" layer="48"/>
<wire x1="1.9812" y1="0" x2="1.9812" y2="4.4196" width="0.1524" layer="48"/>
<wire x1="1.9812" y1="4.4196" x2="1.9812" y2="4.7752" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="4.4196" x2="1.9812" y2="4.4196" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="4.4196" x2="-1.7272" y2="4.5212" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="4.4196" x2="-1.7272" y2="4.2672" width="0.1524" layer="48"/>
<wire x1="-1.7272" y1="4.5212" x2="-1.7272" y2="4.2672" width="0.1524" layer="48"/>
<wire x1="1.9812" y1="4.4196" x2="1.7272" y2="4.5212" width="0.1524" layer="48"/>
<wire x1="1.9812" y1="4.4196" x2="1.7272" y2="4.2672" width="0.1524" layer="48"/>
<wire x1="1.7272" y1="4.5212" x2="1.7272" y2="4.2672" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="-4.7752" x2="-3.0988" y2="-4.4196" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="-4.4196" x2="-3.0988" y2="6.2992" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="6.2992" x2="-3.0988" y2="6.7056" width="0.1524" layer="48"/>
<wire x1="3.0988" y1="0" x2="3.0988" y2="6.2992" width="0.1524" layer="48"/>
<wire x1="3.0988" y1="6.2992" x2="3.0988" y2="6.7056" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="6.2992" x2="3.0988" y2="6.2992" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="6.2992" x2="-2.8448" y2="6.4516" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="6.2992" x2="-2.8448" y2="6.1976" width="0.1524" layer="48"/>
<wire x1="-2.8448" y1="6.4516" x2="-2.8448" y2="6.1976" width="0.1524" layer="48"/>
<wire x1="3.0988" y1="6.2992" x2="2.8448" y2="6.4516" width="0.1524" layer="48"/>
<wire x1="3.0988" y1="6.2992" x2="2.8448" y2="6.1976" width="0.1524" layer="48"/>
<wire x1="2.8448" y1="6.4516" x2="2.8448" y2="6.1976" width="0.1524" layer="48"/>
<wire x1="0" y1="2.4892" x2="4.5212" y2="2.4892" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="2.4892" x2="4.9276" y2="2.4892" width="0.1524" layer="48"/>
<wire x1="0" y1="-2.4892" x2="4.5212" y2="-2.4892" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="-2.4892" x2="4.9276" y2="-2.4892" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="2.4892" x2="4.5212" y2="-2.4892" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="2.4892" x2="4.4196" y2="2.2352" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="2.4892" x2="4.6736" y2="2.2352" width="0.1524" layer="48"/>
<wire x1="4.4196" y1="2.2352" x2="4.6736" y2="2.2352" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="-2.4892" x2="4.4196" y2="-2.2352" width="0.1524" layer="48"/>
<wire x1="4.5212" y1="-2.4892" x2="4.6736" y2="-2.2352" width="0.1524" layer="48"/>
<wire x1="4.4196" y1="-2.2352" x2="4.6736" y2="-2.2352" width="0.1524" layer="48"/>
<wire x1="-2.6162" y1="1.905" x2="-5.1562" y2="1.905" width="0.1524" layer="48"/>
<wire x1="-5.1562" y1="1.905" x2="-5.5372" y2="1.905" width="0.1524" layer="48"/>
<wire x1="-2.6162" y1="0.635" x2="-5.1562" y2="0.635" width="0.1524" layer="48"/>
<wire x1="-5.1562" y1="0.635" x2="-5.5372" y2="0.635" width="0.1524" layer="48"/>
<wire x1="-5.1562" y1="1.905" x2="-5.1562" y2="3.175" width="0.1524" layer="48"/>
<wire x1="-5.1562" y1="0.635" x2="-5.1562" y2="-0.635" width="0.1524" layer="48"/>
<wire x1="-5.1562" y1="1.905" x2="-5.2832" y2="2.159" width="0.1524" layer="48"/>
<wire x1="-5.1562" y1="1.905" x2="-5.0292" y2="2.159" width="0.1524" layer="48"/>
<wire x1="-5.2832" y1="2.159" x2="-5.0292" y2="2.159" width="0.1524" layer="48"/>
<wire x1="-5.1562" y1="0.635" x2="-5.2832" y2="0.381" width="0.1524" layer="48"/>
<wire x1="-5.1562" y1="0.635" x2="-5.0292" y2="0.381" width="0.1524" layer="48"/>
<wire x1="-5.2832" y1="0.381" x2="-5.0292" y2="0.381" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="4.4196" x2="-1.9812" y2="-4.4196" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="-4.4196" x2="-1.9812" y2="-4.7752" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="-4.4196" x2="-4.3688" y2="-4.4196" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="-4.4196" x2="-0.7112" y2="-4.4196" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="-4.4196" x2="-3.3528" y2="-4.2672" width="0.1524" layer="48"/>
<wire x1="-3.0988" y1="-4.4196" x2="-3.3528" y2="-4.5212" width="0.1524" layer="48"/>
<wire x1="-3.3528" y1="-4.2672" x2="-3.3528" y2="-4.5212" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="-4.4196" x2="-1.7272" y2="-4.2672" width="0.1524" layer="48"/>
<wire x1="-1.9812" y1="-4.4196" x2="-1.7272" y2="-4.5212" width="0.1524" layer="48"/>
<wire x1="-1.7272" y1="-4.2672" x2="-1.7272" y2="-4.5212" width="0.1524" layer="48"/>
<text x="-16.3576" y="-7.5692" size="1.27" layer="48" ratio="6" rot="SR0">Default Padstyle: RX49p5Y20D0T</text>
<text x="-16.7386" y="-9.0932" size="1.27" layer="48" ratio="6" rot="SR0">Pin One Padstyle: RX49p5Y20D0T</text>
<text x="-14.8082" y="-13.6652" size="1.27" layer="48" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-15.1892" size="1.27" layer="48" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="-4.0386" y="4.9276" size="0.635" layer="48" ratio="4" rot="SR0">0.157in/3.988mm</text>
<text x="-4.0386" y="6.8072" size="0.635" layer="48" ratio="4" rot="SR0">0.244in/6.198mm</text>
<text x="5.0292" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.197in/5.004mm</text>
<text x="-12.5984" y="0.9652" size="0.635" layer="48" ratio="4" rot="SR0">0.05in/1.27mm</text>
<text x="-6.0198" y="-5.5372" size="0.635" layer="48" ratio="4" rot="SR0">0.05in/1.27mm</text>
<wire x1="-2.1336" y1="-2.6416" x2="2.1336" y2="-2.6416" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="2.6416" x2="-2.1336" y2="2.6416" width="0.1524" layer="21"/>
<text x="-3.4544" y="2.286" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="IS66/67WVS4M8ALL/BLL-N">
<pin name="CE" x="0" y="0" direction="in"/>
<pin name="SO/SIO1" x="0" y="-2.54"/>
<pin name="SIO2" x="0" y="-5.08"/>
<pin name="VSS" x="0" y="-7.62" direction="pas"/>
<pin name="SI/SIO0" x="50.8" y="-7.62" rot="R180"/>
<pin name="CLK" x="50.8" y="-5.08" direction="in" rot="R180"/>
<pin name="SIO3" x="50.8" y="-2.54" rot="R180"/>
<pin name="VDD" x="50.8" y="0" direction="pwr" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="43.18" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="43.18" y1="-12.7" x2="43.18" y2="5.08" width="0.1524" layer="94"/>
<wire x1="43.18" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="20.6756" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="20.0406" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="IS66WVS4M8BLL-104NLI" prefix="U">
<gates>
<gate name="A" symbol="IS66/67WVS4M8ALL/BLL-N" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC8_150MIL_N_ISI">
<connects>
<connect gate="A" pin="CE" pad="1"/>
<connect gate="A" pin="CLK" pad="6"/>
<connect gate="A" pin="SI/SIO0" pad="5"/>
<connect gate="A" pin="SIO2" pad="3"/>
<connect gate="A" pin="SIO3" pad="7"/>
<connect gate="A" pin="SO/SIO1" pad="2"/>
<connect gate="A" pin="VDD" pad="8"/>
<connect gate="A" pin="VSS" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_NAME" value="ISSI" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="IS66WVS4M8BLL-104NLI" constant="no"/>
<attribute name="TYPE" value="Memory" constant="no"/>
</technology>
</technologies>
</device>
<device name="SOIC8_150MIL_N_ISI-M" package="SOIC8_150MIL_N_ISI-M">
<connects>
<connect gate="A" pin="CE" pad="1"/>
<connect gate="A" pin="CLK" pad="6"/>
<connect gate="A" pin="SI/SIO0" pad="5"/>
<connect gate="A" pin="SIO2" pad="3"/>
<connect gate="A" pin="SIO3" pad="7"/>
<connect gate="A" pin="SO/SIO1" pad="2"/>
<connect gate="A" pin="VDD" pad="8"/>
<connect gate="A" pin="VSS" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_NAME" value="ISSI" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="IS66WVS4M8BLL-104NLI" constant="no"/>
<attribute name="TYPE" value="Memory" constant="no"/>
</technology>
</technologies>
</device>
<device name="SOIC8_150MIL_N_ISI-L" package="SOIC8_150MIL_N_ISI-L">
<connects>
<connect gate="A" pin="CE" pad="1"/>
<connect gate="A" pin="CLK" pad="6"/>
<connect gate="A" pin="SI/SIO0" pad="5"/>
<connect gate="A" pin="SIO2" pad="3"/>
<connect gate="A" pin="SIO3" pad="7"/>
<connect gate="A" pin="SO/SIO1" pad="2"/>
<connect gate="A" pin="VDD" pad="8"/>
<connect gate="A" pin="VSS" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_NAME" value="ISSI" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="IS66WVS4M8BLL-104NLI" constant="no"/>
<attribute name="TYPE" value="Memory" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="NCP1117LPST33T3G">
<description>&lt;Output Current in Excess of 1.0 A&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOT230P700X180-4N">
<description>&lt;b&gt;SOT223 (PbFree)_&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-3.4" y="2.3" dx="1.25" dy="0.95" layer="1"/>
<smd name="2" x="-3.4" y="0" dx="1.25" dy="0.95" layer="1"/>
<smd name="3" x="-3.4" y="-2.3" dx="1.25" dy="0.95" layer="1"/>
<smd name="4" x="3.4" y="0" dx="3.2" dy="1.25" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-4.275" y1="3.6" x2="4.275" y2="3.6" width="0.05" layer="51"/>
<wire x1="4.275" y1="3.6" x2="4.275" y2="-3.6" width="0.05" layer="51"/>
<wire x1="4.275" y1="-3.6" x2="-4.275" y2="-3.6" width="0.05" layer="51"/>
<wire x1="-4.275" y1="-3.6" x2="-4.275" y2="3.6" width="0.05" layer="51"/>
<wire x1="-1.75" y1="3.25" x2="1.75" y2="3.25" width="0.1" layer="51"/>
<wire x1="1.75" y1="3.25" x2="1.75" y2="-3.25" width="0.1" layer="51"/>
<wire x1="1.75" y1="-3.25" x2="-1.75" y2="-3.25" width="0.1" layer="51"/>
<wire x1="-1.75" y1="-3.25" x2="-1.75" y2="3.25" width="0.1" layer="51"/>
<wire x1="-1.75" y1="0.95" x2="0.55" y2="3.25" width="0.1" layer="51"/>
<wire x1="-1.75" y1="3.25" x2="1.75" y2="3.25" width="0.2" layer="21"/>
<wire x1="1.75" y1="3.25" x2="1.75" y2="-3.25" width="0.2" layer="21"/>
<wire x1="1.75" y1="-3.25" x2="-1.75" y2="-3.25" width="0.2" layer="21"/>
<wire x1="-1.75" y1="-3.25" x2="-1.75" y2="3.25" width="0.2" layer="21"/>
<wire x1="-4.025" y1="3.125" x2="-2.775" y2="3.125" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="NCP1117LPST33T3G">
<wire x1="5.08" y1="2.54" x2="40.64" y2="2.54" width="0.254" layer="94"/>
<wire x1="40.64" y1="-7.62" x2="40.64" y2="2.54" width="0.254" layer="94"/>
<wire x1="40.64" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="41.91" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="41.91" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="ADJUST/GROUND" x="0" y="0" length="middle"/>
<pin name="OUTPUT_1" x="0" y="-2.54" length="middle"/>
<pin name="INPUT" x="0" y="-5.08" length="middle"/>
<pin name="OUTPUT_2" x="45.72" y="0" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NCP1117LPST33T3G" prefix="IC">
<description>&lt;b&gt;Output Current in Excess of 1.0 A&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.onsemi.com/pub/Collateral/NCP1117LP-D.PDF"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="NCP1117LPST33T3G" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT230P700X180-4N">
<connects>
<connect gate="G$1" pin="ADJUST/GROUND" pad="1"/>
<connect gate="G$1" pin="INPUT" pad="3"/>
<connect gate="G$1" pin="OUTPUT_1" pad="2"/>
<connect gate="G$1" pin="OUTPUT_2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Output Current in Excess of 1.0 A" constant="no"/>
<attribute name="HEIGHT" value="1.8mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="onsemi" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="NCP1117LPST33T3G" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="863-NCP1117LPST33T3G" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/onsemi/NCP1117LPST33T3G?qs=kbSN2QblFfKG9A4Foh4YYg%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X06" urn="urn:adsk.eagle:footprint:22361/1" library_version="5">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-7.6962" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.62" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
</package>
<package name="1X06/90" urn="urn:adsk.eagle:footprint:22362/1" library_version="5">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-8.255" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="9.525" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X06" urn="urn:adsk.eagle:package:22472/2" type="model" library_version="5">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X06"/>
</packageinstances>
</package3d>
<package3d name="1X06/90" urn="urn:adsk.eagle:package:22475/2" type="model" library_version="5">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X06/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD6" urn="urn:adsk.eagle:symbol:22360/1" library_version="5">
<wire x1="-6.35" y1="-7.62" x2="1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="10.16" x2="-6.35" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="10.16" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X6" urn="urn:adsk.eagle:component:22533/4" prefix="JP" uservalue="yes" library_version="5">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD6" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="1X06">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22472/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="79" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X06/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22475/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="10" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led" urn="urn:adsk.eagle:library:259">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="1206" urn="urn:adsk.eagle:footprint:15651/1" library_version="5">
<description>&lt;b&gt;CHICAGO MINIATURE LAMP, INC.&lt;/b&gt;&lt;p&gt;
7022X Series SMT LEDs 1206 Package Size</description>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.5" x2="0.55" y2="-0.5" width="0.1016" layer="21" curve="95.452622"/>
<wire x1="-0.55" y1="-0.5" x2="-0.55" y2="0.5" width="0.1016" layer="51" curve="-84.547378"/>
<wire x1="-0.55" y1="0.5" x2="0.55" y2="0.5" width="0.1016" layer="21" curve="-95.452622"/>
<wire x1="0.55" y1="0.5" x2="0.55" y2="-0.5" width="0.1016" layer="51" curve="-84.547378"/>
<smd name="A" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="C" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
<rectangle x1="0.45" y1="-0.7" x2="0.8" y2="-0.45" layer="51"/>
<rectangle x1="0.8" y1="-0.7" x2="0.9" y2="0.5" layer="51"/>
<rectangle x1="0.8" y1="0.55" x2="0.9" y2="0.7" layer="51"/>
<rectangle x1="-0.9" y1="-0.7" x2="-0.8" y2="0.5" layer="51"/>
<rectangle x1="-0.9" y1="0.55" x2="-0.8" y2="0.7" layer="51"/>
<rectangle x1="0.45" y1="-0.7" x2="0.6" y2="-0.45" layer="21"/>
</package>
<package name="LD260" urn="urn:adsk.eagle:footprint:15652/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, square, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0" y1="1.27" x2="0.9917" y2="0.7934" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="-0.9917" y1="0.7934" x2="0" y2="1.27" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="0" y1="-1.27" x2="0.9917" y2="-0.7934" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="-0.9917" y1="-0.7934" x2="0" y2="-1.27" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="0.9558" y1="-0.8363" x2="1.27" y2="0" width="0.1524" layer="51" curve="41.185419"/>
<wire x1="0.9756" y1="0.813" x2="1.2699" y2="0" width="0.1524" layer="51" curve="-39.806332"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="-0.8265" width="0.1524" layer="51" curve="40.600331"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="0.8265" width="0.1524" layer="51" curve="-40.600331"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.635" x2="2.032" y2="0.635" layer="51"/>
<rectangle x1="1.905" y1="-0.635" x2="2.032" y2="0.635" layer="21"/>
</package>
<package name="LED2X5" urn="urn:adsk.eagle:footprint:15653/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
2 x 5 mm, rectangle</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-0.254" x2="1.143" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="0.9398" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="-0.6096" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.651" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.4478" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="-0.6096" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.413" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-1.27" x2="2.413" y2="1.27" layer="21"/>
</package>
<package name="LED3MM" urn="urn:adsk.eagle:footprint:15654/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
3 mm, round</description>
<wire x1="1.5748" y1="-1.27" x2="1.5748" y2="1.27" width="0.254" layer="51"/>
<wire x1="-1.524" y1="0" x2="-1.1708" y2="0.9756" width="0.1524" layer="51" curve="-39.80361"/>
<wire x1="-1.524" y1="0" x2="-1.1391" y2="-1.0125" width="0.1524" layer="51" curve="41.633208"/>
<wire x1="1.1571" y1="0.9918" x2="1.524" y2="0" width="0.1524" layer="51" curve="-40.601165"/>
<wire x1="1.1708" y1="-0.9756" x2="1.524" y2="0" width="0.1524" layer="51" curve="39.80361"/>
<wire x1="0" y1="1.524" x2="1.2401" y2="0.8858" width="0.1524" layer="21" curve="-54.461337"/>
<wire x1="-1.2192" y1="0.9144" x2="0" y2="1.524" width="0.1524" layer="21" curve="-53.130102"/>
<wire x1="0" y1="-1.524" x2="1.203" y2="-0.9356" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-1.203" y1="-0.9356" x2="0" y2="-1.524" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="-1.016" x2="1.016" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="2.032" x2="1.561" y2="1.3009" width="0.254" layer="21" curve="-50.193108"/>
<wire x1="-1.7929" y1="0.9562" x2="0" y2="2.032" width="0.254" layer="21" curve="-61.926949"/>
<wire x1="0" y1="-2.032" x2="1.5512" y2="-1.3126" width="0.254" layer="21" curve="49.763022"/>
<wire x1="-1.7643" y1="-1.0082" x2="0" y2="-2.032" width="0.254" layer="21" curve="60.255215"/>
<wire x1="-2.032" y1="0" x2="-1.7891" y2="0.9634" width="0.254" layer="51" curve="-28.301701"/>
<wire x1="-2.032" y1="0" x2="-1.7306" y2="-1.065" width="0.254" layer="51" curve="31.60822"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="1.905" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.905" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LED5MM" urn="urn:adsk.eagle:footprint:15655/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, round</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.254" layer="21" curve="-286.260205"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="3.175" y="0.5334" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.2004" y="-1.8034" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LSU260" urn="urn:adsk.eagle:footprint:15656/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
1 mm, round, Siemens</description>
<wire x1="0" y1="-0.508" x2="-1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.508" x2="-1.143" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.508" x2="0" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-0.254" x2="-1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.254" x2="-1.143" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.254" x2="1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="0.254" x2="0.508" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-0.381" x2="0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.508" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-0.381" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.381" x2="0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.508" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0.381" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.254" x2="0.254" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.254" y1="0" x2="0" y2="0.254" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-0.381" x2="0.381" y2="0.381" width="0.1524" layer="21" curve="90"/>
<circle x="0" y="0" radius="0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="0.8382" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-1.8542" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.397" y1="-0.254" x2="-1.143" y2="0.254" layer="51"/>
<rectangle x1="0.508" y1="-0.254" x2="1.397" y2="0.254" layer="51"/>
</package>
<package name="LZR181" urn="urn:adsk.eagle:footprint:15657/1" library_version="5">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
1 LED, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="0.7439" x2="0" y2="1.143" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="1.143" x2="0.8678" y2="0.7439" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-0.7439" x2="0" y2="-1.143" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-1.143" x2="0.8678" y2="-0.7439" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="0.8678" y1="-0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="0.7439" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="-0.7439" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.889" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.27" y2="0.254" layer="51"/>
</package>
<package name="Q62902-B152" urn="urn:adsk.eagle:footprint:15658/1" library_version="5">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-2.9718" y1="-1.8542" x2="-2.9718" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-0.254" x2="-2.9718" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="-1.8542" x2="-2.54" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.1082" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="1.8542" x2="2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.54" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-1.1486" y1="0.8814" x2="0" y2="1.4478" width="0.1524" layer="21" curve="-52.498642"/>
<wire x1="0" y1="1.4478" x2="1.1476" y2="0.8827" width="0.1524" layer="21" curve="-52.433716"/>
<wire x1="-1.1351" y1="-0.8987" x2="0" y2="-1.4478" width="0.1524" layer="21" curve="51.629985"/>
<wire x1="0" y1="-1.4478" x2="1.1305" y2="-0.9044" width="0.1524" layer="21" curve="51.339172"/>
<wire x1="1.1281" y1="-0.9074" x2="1.4478" y2="0" width="0.1524" layer="51" curve="38.811177"/>
<wire x1="1.1401" y1="0.8923" x2="1.4478" y2="0" width="0.1524" layer="51" curve="-38.048073"/>
<wire x1="-1.4478" y1="0" x2="-1.1305" y2="-0.9044" width="0.1524" layer="51" curve="38.659064"/>
<wire x1="-1.4478" y1="0" x2="-1.1456" y2="0.8853" width="0.1524" layer="51" curve="-37.696376"/>
<wire x1="0" y1="1.7018" x2="1.4674" y2="0.8618" width="0.1524" layer="21" curve="-59.573488"/>
<wire x1="-1.4618" y1="0.8714" x2="0" y2="1.7018" width="0.1524" layer="21" curve="-59.200638"/>
<wire x1="0" y1="-1.7018" x2="1.4571" y2="-0.8793" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.4571" y1="-0.8793" x2="0" y2="-1.7018" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.7018" y1="0" x2="-1.4447" y2="0.8995" width="0.1524" layer="51" curve="-31.907626"/>
<wire x1="-1.7018" y1="0" x2="-1.4502" y2="-0.8905" width="0.1524" layer="51" curve="31.551992"/>
<wire x1="1.4521" y1="0.8874" x2="1.7018" y2="0" width="0.1524" layer="51" curve="-31.429586"/>
<wire x1="1.4459" y1="-0.8975" x2="1.7018" y2="0" width="0.1524" layer="51" curve="31.828757"/>
<wire x1="-2.1082" y1="1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<wire x1="2.9718" y1="1.8542" x2="2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="-3.556" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B153" urn="urn:adsk.eagle:footprint:15659/1" library_version="5">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-5.5118" y1="-3.5052" x2="-5.5118" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="-0.254" x2="-5.5118" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="-3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="-3.5052" x2="-5.08" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-4.6482" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="3.5052" x2="5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.08" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-4.6482" y1="3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="3.5052" x2="5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.2129" y1="0.0539" x2="-0.0539" y2="2.2129" width="0.1524" layer="51" curve="-90.010616"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-4.191" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B155" urn="urn:adsk.eagle:footprint:15660/1" library_version="5">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-1.27" y1="-3.048" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="2.921" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-5.207" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.54" x2="-5.207" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="-6.985" y1="0.635" x2="-6.985" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.397" x2="-6.096" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="1.905" x2="-5.207" y2="-1.905" width="0.1524" layer="21"/>
<pad name="K" x="7.62" y="1.27" drill="0.8128" shape="long"/>
<pad name="A" x="7.62" y="-1.27" drill="0.8128" shape="long"/>
<text x="3.302" y="-2.794" size="1.016" layer="21" ratio="14">A+</text>
<text x="3.302" y="1.778" size="1.016" layer="21" ratio="14">K-</text>
<text x="11.684" y="-2.794" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="0.635" y="-4.445" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.921" y1="1.016" x2="6.731" y2="1.524" layer="21"/>
<rectangle x1="2.921" y1="-1.524" x2="6.731" y2="-1.016" layer="21"/>
<hole x="0" y="0" drill="0.8128"/>
</package>
<package name="Q62902-B156" urn="urn:adsk.eagle:footprint:15661/1" library_version="5">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0.0539" y1="-2.2129" x2="2.2129" y2="-0.0539" width="0.1524" layer="51" curve="90.005308"/>
<wire x1="2.54" y1="3.81" x2="3.81" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.302" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-3.81" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="-2.54" y2="-3.302" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="4.0894" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.7846" y="-5.3594" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.556" y="-3.302" size="1.016" layer="21" ratio="14">+</text>
<text x="2.794" y="-3.302" size="1.016" layer="21" ratio="14">-</text>
</package>
<package name="SFH480" urn="urn:adsk.eagle:footprint:15662/1" library_version="5">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SFH482" urn="urn:adsk.eagle:footprint:15650/1" library_version="5">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="U57X32" urn="urn:adsk.eagle:footprint:15640/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
rectangle, 5.7 x 3.2 mm</description>
<wire x1="-3.175" y1="1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="2.54" y2="1.016" width="0.1524" layer="51"/>
<wire x1="2.286" y1="1.27" x2="2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="2.54" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="2.54" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-1.016" x2="2.54" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="1.27" x2="-1.778" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.27" x2="0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.762" y1="1.27" x2="0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.27" x2="1.778" y2="-1.27" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="3.683" y="0.254" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.683" y="-1.524" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="IRL80A" urn="urn:adsk.eagle:footprint:15663/1" library_version="5">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
IR transmitter Siemens</description>
<wire x1="0.889" y1="2.286" x2="0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.778" x2="0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="0.889" y1="0.762" x2="0.889" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-0.635" x2="0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-1.778" x2="0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.286" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="-0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.778" x2="-0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0.762" x2="-0.889" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-1.778" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="0.889" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="0.762" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.397" y1="0.254" x2="-1.397" y2="-0.254" width="0.0508" layer="21"/>
<wire x1="-1.143" y1="0.508" x2="-1.143" y2="-0.508" width="0.0508" layer="21"/>
<pad name="K" x="0" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="A" x="0" y="-1.27" drill="0.8128" shape="octagon"/>
<text x="1.27" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.27" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="P-LCC-2" urn="urn:adsk.eagle:footprint:15664/1" library_version="5">
<description>&lt;b&gt;TOPLED® High-optical Power LED (HOP)&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... ls_t675.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.8" x2="1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-1.8" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="C" x="0" y="-2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="2.54" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-2.25" x2="1.3" y2="-0.75" layer="31"/>
<rectangle x1="-1.3" y1="0.75" x2="1.3" y2="2.25" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.4" y1="0.65" x2="1.4" y2="2.35" layer="29"/>
<rectangle x1="-1.4" y1="-2.35" x2="1.4" y2="-0.65" layer="29"/>
</package>
<package name="OSRAM-MINI-TOP-LED" urn="urn:adsk.eagle:footprint:15665/1" library_version="5">
<description>&lt;b&gt;BLUE LINETM Hyper Mini TOPLED® Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LB M676.pdf</description>
<wire x1="-0.6" y1="0.9" x2="-0.6" y2="-0.7" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="-0.9" x2="0.6" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="-0.9" x2="0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="0.9" x2="-0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.95" x2="-0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="1.1" x2="0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="1.1" x2="0.45" y2="0.95" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="-0.7" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-1.1" x2="0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="-1.1" x2="0.45" y2="-0.95" width="0.1016" layer="51"/>
<smd name="A" x="0" y="2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="1.905" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.175" size="1.27" layer="21">C</text>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.5" y1="0.6" x2="0.5" y2="1.4" layer="29"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-0.6" layer="29"/>
<rectangle x1="-0.15" y1="-0.6" x2="0.15" y2="-0.3" layer="51"/>
<rectangle x1="-0.45" y1="0.65" x2="0.45" y2="1.35" layer="31"/>
<rectangle x1="-0.45" y1="-1.35" x2="0.45" y2="-0.65" layer="31"/>
</package>
<package name="OSRAM-SIDELED" urn="urn:adsk.eagle:footprint:15666/1" library_version="5">
<description>&lt;b&gt;Super SIDELED® High-Current LED&lt;/b&gt;&lt;p&gt;
LG A672, LP A672 &lt;br&gt;
Source: http://www.osram.convergy.de/ ... LG_LP_A672.pdf (2004.05.13)</description>
<wire x1="-1.85" y1="-2.05" x2="-1.85" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="-0.75" x2="-1.7" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="-0.75" x2="-1.7" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="0.75" x2="-1.85" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="0.75" x2="-1.85" y2="2.05" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="2.05" x2="0.9" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="-1.85" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="-2.05" x2="1.85" y2="-1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="-1.85" x2="1.85" y2="1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="1.85" x2="1.05" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.9" x2="-0.55" y2="0.9" width="0.1016" layer="51" curve="-167.319617"/>
<wire x1="-0.55" y1="-0.9" x2="0.85" y2="-1.2" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.55" y1="0.9" x2="0.85" y2="1.2" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="-2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="0.635" y="-3.175" size="1.27" layer="21" rot="R90">C</text>
<text x="0.635" y="2.54" size="1.27" layer="21" rot="R90">A</text>
<text x="-2.54" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1" y1="-2.2" x2="2.1" y2="-0.4" layer="29"/>
<rectangle x1="-2.1" y1="0.4" x2="2.1" y2="2.2" layer="29"/>
<rectangle x1="-1.9" y1="-2.1" x2="1.9" y2="-0.6" layer="31"/>
<rectangle x1="-1.9" y1="0.6" x2="1.9" y2="2.1" layer="31"/>
<rectangle x1="-1.85" y1="-2.05" x2="-0.7" y2="-1" layer="51"/>
</package>
<package name="SMART-LED" urn="urn:adsk.eagle:footprint:15667/1" library_version="5">
<description>&lt;b&gt;SmartLEDTM Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY L896.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="A" x="0" y="0.725" dx="0.35" dy="0.35" layer="1"/>
<smd name="B" x="0" y="-0.725" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-0.635" size="1.016" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.016" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
</package>
<package name="P-LCC-2-TOPLED-RG" urn="urn:adsk.eagle:footprint:15668/1" library_version="5">
<description>&lt;b&gt;Hyper TOPLED® RG Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY T776.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="2.45" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-2.45" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="21"/>
<smd name="C" x="0" y="-3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="3.29" size="1.27" layer="21">A</text>
<text x="-0.635" y="-4.56" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-3" x2="1.3" y2="-1.5" layer="31"/>
<rectangle x1="-1.3" y1="1.5" x2="1.3" y2="3" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.15" y1="2.4" x2="1.15" y2="2.7" layer="51"/>
<rectangle x1="-1.15" y1="-2.7" x2="1.15" y2="-2.4" layer="51"/>
<rectangle x1="-1.5" y1="1.5" x2="1.5" y2="3.2" layer="29"/>
<rectangle x1="-1.5" y1="-3.2" x2="1.5" y2="-1.5" layer="29"/>
<hole x="0" y="0" drill="2.8"/>
</package>
<package name="MICRO-SIDELED" urn="urn:adsk.eagle:footprint:15669/1" library_version="5">
<description>&lt;b&gt;Hyper Micro SIDELED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY Y876.pdf</description>
<wire x1="0.65" y1="1.1" x2="-0.1" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="1.1" x2="-0.35" y2="1" width="0.1016" layer="51"/>
<wire x1="-0.35" y1="1" x2="-0.35" y2="-0.9" width="0.1016" layer="21"/>
<wire x1="-0.35" y1="-0.9" x2="-0.1" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="-1.1" x2="0.65" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.65" y1="-1.1" x2="0.65" y2="1.1" width="0.1016" layer="21"/>
<wire x1="0.6" y1="0.9" x2="0.25" y2="0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="0.7" x2="0.25" y2="-0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="-0.7" x2="0.6" y2="-0.9" width="0.0508" layer="21"/>
<smd name="A" x="0" y="1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.4" y1="1.1" x2="0.4" y2="1.8" layer="29"/>
<rectangle x1="-0.4" y1="-1.8" x2="0.4" y2="-1.1" layer="29"/>
<rectangle x1="-0.35" y1="-1.75" x2="0.35" y2="-1.15" layer="31"/>
<rectangle x1="-0.35" y1="1.15" x2="0.35" y2="1.75" layer="31"/>
<rectangle x1="-0.125" y1="1.125" x2="0.125" y2="1.75" layer="51"/>
<rectangle x1="-0.125" y1="-1.75" x2="0.125" y2="-1.125" layer="51"/>
</package>
<package name="P-LCC-4" urn="urn:adsk.eagle:footprint:15670/1" library_version="5">
<description>&lt;b&gt;Power TOPLED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LA_LY E67B.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="1.8" x2="-0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="1.8" x2="-0.5" y2="1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.65" x2="0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.8" x2="-0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="-1.8" x2="-0.5" y2="-1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.65" x2="0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.8" x2="1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1" y1="-1.8" x2="1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="A" x="-2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@3" x="2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@4" x="2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="-2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<text x="-3.81" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-1.905" y="-3.81" size="1.27" layer="21">C</text>
<text x="-1.905" y="2.54" size="1.27" layer="21">A</text>
<text x="1.27" y="2.54" size="1.27" layer="21">C</text>
<text x="1.27" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.15" y1="0.75" x2="-0.35" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="0.75" x2="1.15" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="-1.85" x2="1.15" y2="-0.75" layer="29"/>
<rectangle x1="-1.15" y1="-1.85" x2="-0.35" y2="-0.75" layer="29"/>
<rectangle x1="-1.1" y1="-1.8" x2="-0.4" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="-1.8" x2="1.1" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="0.8" x2="1.1" y2="1.8" layer="31"/>
<rectangle x1="-1.1" y1="0.8" x2="-0.4" y2="1.8" layer="31"/>
<rectangle x1="-0.2" y1="-0.2" x2="0.2" y2="0.2" layer="21"/>
</package>
<package name="CHIP-LED0603" urn="urn:adsk.eagle:footprint:15671/1" library_version="5">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB Q993&lt;br&gt;
Source: http://www.osram.convergy.de/ ... Lb_q993.pdf</description>
<wire x1="-0.4" y1="0.45" x2="-0.4" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.45" x2="0.4" y2="-0.45" width="0.1016" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-0.635" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.45" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="0.45" y2="-0.45" layer="51"/>
<rectangle x1="-0.45" y1="0" x2="-0.3" y2="0.3" layer="21"/>
<rectangle x1="0.3" y1="0" x2="0.45" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
</package>
<package name="CHIP-LED0805" urn="urn:adsk.eagle:footprint:15672/1" library_version="5">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB R99A&lt;br&gt;
Source: http://www.osram.convergy.de/ ... lb_r99a.pdf</description>
<wire x1="-0.625" y1="0.45" x2="-0.625" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.625" y1="0.45" x2="0.625" y2="-0.475" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.675" y1="0" x2="-0.525" y2="0.3" layer="21"/>
<rectangle x1="0.525" y1="0" x2="0.675" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
<rectangle x1="-0.675" y1="0.45" x2="0.675" y2="1.05" layer="51"/>
<rectangle x1="-0.675" y1="-1.05" x2="0.675" y2="-0.45" layer="51"/>
</package>
<package name="MINI-TOPLED-SANTANA" urn="urn:adsk.eagle:footprint:15673/1" library_version="5">
<description>&lt;b&gt;Mini TOPLED Santana®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG M470.pdf</description>
<wire x1="0.7" y1="-1" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.35" y1="-1" x2="-0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="-1" x2="-0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="1" x2="0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="0.7" y1="1" x2="0.7" y2="-0.65" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.45" y1="-0.7" x2="-0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="-0.7" x2="-0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="0.7" x2="0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="0.45" y1="0.7" x2="0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<smd name="C" x="0" y="-2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.55" y1="1.5" x2="0.55" y2="2.1" layer="29"/>
<rectangle x1="-0.55" y1="-2.1" x2="0.55" y2="-1.5" layer="29"/>
<rectangle x1="-0.5" y1="-2.05" x2="0.5" y2="-1.55" layer="31"/>
<rectangle x1="-0.5" y1="1.55" x2="0.5" y2="2.05" layer="31"/>
<rectangle x1="-0.2" y1="-0.4" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.5" y1="-2.1" x2="0.5" y2="-1.4" layer="51"/>
<rectangle x1="-0.5" y1="1.4" x2="0.5" y2="2.05" layer="51"/>
<rectangle x1="-0.5" y1="1" x2="0.5" y2="1.4" layer="21"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-1.05" layer="21"/>
<hole x="0" y="0" drill="2.7"/>
</package>
<package name="CHIPLED_0805" urn="urn:adsk.eagle:footprint:15674/1" library_version="5">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_R971.pdf</description>
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.1" y1="0" x2="0.1" y2="0.2" layer="21"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.8" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
</package>
<package name="CHIPLED_1206" urn="urn:adsk.eagle:footprint:15675/1" library_version="5">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY N971.pdf</description>
<wire x1="-0.4" y1="1.6" x2="0.4" y2="1.6" width="0.1016" layer="51" curve="172.619069"/>
<wire x1="-0.8" y1="-0.95" x2="-0.8" y2="0.95" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.95" x2="0.8" y2="-0.95" width="0.1016" layer="51"/>
<circle x="-0.55" y="1.425" radius="0.1" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.75" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="0" y="-1.75" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.85" y1="1.525" x2="-0.35" y2="1.65" layer="51"/>
<rectangle x1="-0.85" y1="1.225" x2="-0.625" y2="1.55" layer="51"/>
<rectangle x1="-0.45" y1="1.225" x2="-0.325" y2="1.45" layer="51"/>
<rectangle x1="-0.65" y1="1.225" x2="-0.225" y2="1.35" layer="51"/>
<rectangle x1="0.35" y1="1.3" x2="0.85" y2="1.65" layer="51"/>
<rectangle x1="0.25" y1="1.225" x2="0.85" y2="1.35" layer="51"/>
<rectangle x1="-0.85" y1="0.95" x2="0.85" y2="1.25" layer="51"/>
<rectangle x1="-0.85" y1="-1.65" x2="0.85" y2="-0.95" layer="51"/>
<rectangle x1="-0.85" y1="0.35" x2="-0.525" y2="0.775" layer="21"/>
<rectangle x1="0.525" y1="0.35" x2="0.85" y2="0.775" layer="21"/>
<rectangle x1="-0.175" y1="0" x2="0.175" y2="0.35" layer="21"/>
</package>
<package name="CHIPLED_0603" urn="urn:adsk.eagle:footprint:15676/1" library_version="5">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY Q971.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
</package>
<package name="CHIPLED-0603-TTW" urn="urn:adsk.eagle:footprint:15677/1" library_version="5">
<description>&lt;b&gt;CHIPLED-0603&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.4" y1="0.625" x2="0.4" y2="1.125" layer="29"/>
<rectangle x1="-0.4" y1="-1.125" x2="0.4" y2="-0.625" layer="29"/>
<rectangle x1="-0.175" y1="-0.675" x2="0.175" y2="-0.325" layer="29"/>
</package>
<package name="SMARTLED-TTW" urn="urn:adsk.eagle:footprint:15678/1" library_version="5">
<description>&lt;b&gt;SmartLED TTW&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
<rectangle x1="-0.225" y1="0.3" x2="0.225" y2="0.975" layer="31"/>
<rectangle x1="-0.175" y1="-0.7" x2="0.175" y2="-0.325" layer="29" rot="R180"/>
<rectangle x1="-0.225" y1="-0.975" x2="0.225" y2="-0.3" layer="31" rot="R180"/>
</package>
<package name="LUMILED+" urn="urn:adsk.eagle:footprint:15679/1" library_version="5">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; with cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="1">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LUMILED" urn="urn:adsk.eagle:footprint:15680/1" library_version="5">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; without cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LED10MM" urn="urn:adsk.eagle:footprint:15681/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
10 mm, round</description>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.254" layer="21" curve="-306.869898"/>
<wire x1="4.445" y1="0" x2="0" y2="-4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="3.81" y1="0" x2="0" y2="-3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="3.175" y1="0" x2="0" y2="-3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="-4.445" y1="0" x2="0" y2="4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.81" y1="0" x2="0" y2="3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.175" y1="0" x2="0" y2="3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="0" y2="2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="21"/>
<circle x="0" y="0" radius="5.08" width="0.127" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.6764" shape="square"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.6764" shape="octagon"/>
<text x="6.35" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="6.35" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="KA-3528ASYC" urn="urn:adsk.eagle:footprint:15682/1" library_version="5">
<description>&lt;b&gt;SURFACE MOUNT LED LAMP&lt;/b&gt; 3.5x2.8mm&lt;p&gt;
Source: http://www.kingbright.com/manager/upload/pdf/KA-3528ASYC(Ver1189474662.1)</description>
<wire x1="-1.55" y1="1.35" x2="1.55" y2="1.35" width="0.1016" layer="21"/>
<wire x1="1.55" y1="1.35" x2="1.55" y2="-1.35" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-1.35" x2="-1.55" y2="-1.35" width="0.1016" layer="21"/>
<wire x1="-1.55" y1="-1.35" x2="-1.55" y2="1.35" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="0.95" x2="0.65" y2="0.95" width="0.1016" layer="21" curve="-68.40813"/>
<wire x1="0.65" y1="-0.95" x2="-0.65" y2="-0.95" width="0.1016" layer="21" curve="-68.40813"/>
<circle x="0" y="0" radius="1.15" width="0.1016" layer="51"/>
<smd name="A" x="-1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<smd name="C" x="1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.75" y1="0.6" x2="-1.6" y2="1.1" layer="51"/>
<rectangle x1="-1.75" y1="-1.1" x2="-1.6" y2="-0.6" layer="51"/>
<rectangle x1="1.6" y1="-1.1" x2="1.75" y2="-0.6" layer="51" rot="R180"/>
<rectangle x1="1.6" y1="0.6" x2="1.75" y2="1.1" layer="51" rot="R180"/>
<polygon width="0.1016" layer="51">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-0.625"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
<polygon width="0.1016" layer="21">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-1.175"/>
<vertex x="1" y="-1.175"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
</package>
<package name="SML0805" urn="urn:adsk.eagle:footprint:15683/1" library_version="5">
<description>&lt;b&gt;SML0805-2CW-TR (0805 PROFILE)&lt;/b&gt; COOL WHITE&lt;p&gt;
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0093.pdf</description>
<wire x1="-0.95" y1="-0.55" x2="0.95" y2="-0.55" width="0.1016" layer="51"/>
<wire x1="0.95" y1="-0.55" x2="0.95" y2="0.55" width="0.1016" layer="51"/>
<wire x1="0.95" y1="0.55" x2="-0.95" y2="0.55" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="0.55" x2="-0.95" y2="-0.55" width="0.1016" layer="51"/>
<wire x1="-0.175" y1="-0.025" x2="0" y2="0.15" width="0.0634" layer="21"/>
<wire x1="0" y1="0.15" x2="0.15" y2="0" width="0.0634" layer="21"/>
<wire x1="0.15" y1="0" x2="-0.025" y2="-0.175" width="0.0634" layer="21"/>
<wire x1="-0.025" y1="-0.175" x2="-0.175" y2="-0.025" width="0.0634" layer="21"/>
<circle x="-0.275" y="0.4" radius="0.125" width="0" layer="21"/>
<smd name="C" x="-1.05" y="0" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="1.05" y="0" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.5" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SML1206" urn="urn:adsk.eagle:footprint:15684/1" library_version="5">
<description>&lt;b&gt;SML10XXKH-TR (HIGH INTENSITY) LED&lt;/b&gt;&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;SML10R3KH-TR&lt;/td&gt;&lt;td&gt;ULTRA RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10E3KH-TR&lt;/td&gt;&lt;td&gt;SUPER REDSUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10O3KH-TR&lt;/td&gt;&lt;td&gt;SUPER ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10PY3KH-TR&lt;/td&gt;&lt;td&gt;PURE YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10OY3KH-TR&lt;/td&gt;&lt;td&gt;ULTRA YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10AG3KH-TR&lt;/td&gt;&lt;td&gt;AQUA GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10BG3KH-TR&lt;/td&gt;&lt;td&gt;BLUE GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10PB1KH-TR&lt;/td&gt;&lt;td&gt;SUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10CW1KH-TR&lt;/td&gt;&lt;td&gt;WHITE&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;

Source: http://www.ledtronics.com/ds/smd-1206/dstr0094.PDF</description>
<wire x1="-1.5" y1="0.5" x2="-1.5" y2="-0.5" width="0.2032" layer="51" curve="-180"/>
<wire x1="1.5" y1="-0.5" x2="1.5" y2="0.5" width="0.2032" layer="51" curve="-180"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<circle x="-0.725" y="0.525" radius="0.125" width="0" layer="21"/>
<smd name="C" x="-1.75" y="0" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="1.75" y="0" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.5" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2.5" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="0.4" x2="-1.15" y2="0.8" layer="51"/>
<rectangle x1="-1.6" y1="-0.8" x2="-1.15" y2="-0.4" layer="51"/>
<rectangle x1="-1.175" y1="-0.6" x2="-1" y2="-0.275" layer="51"/>
<rectangle x1="1.15" y1="-0.8" x2="1.6" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="1.15" y1="0.4" x2="1.6" y2="0.8" layer="51" rot="R180"/>
<rectangle x1="1" y1="0.275" x2="1.175" y2="0.6" layer="51" rot="R180"/>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
</package>
<package name="SML0603" urn="urn:adsk.eagle:footprint:15685/1" library_version="5">
<description>&lt;b&gt;SML0603-XXX (HIGH INTENSITY) LED&lt;/b&gt;&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;AG3K&lt;/td&gt;&lt;td&gt;AQUA GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;B1K&lt;/td&gt;&lt;td&gt;SUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R1K&lt;/td&gt;&lt;td&gt;SUPER RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R3K&lt;/td&gt;&lt;td&gt;ULTRA RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3K&lt;/td&gt;&lt;td&gt;SUPER ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3KH&lt;/td&gt;&lt;td&gt;SOFT ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3KH&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3K&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;2CW&lt;/td&gt;&lt;td&gt;WHITE&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0092.pdf</description>
<wire x1="-0.75" y1="0.35" x2="0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="0.35" x2="0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="-0.35" x2="-0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.75" y1="-0.35" x2="-0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.3" x2="-0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="0.45" y1="0.3" x2="0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="-0.2" y1="0.35" x2="0.2" y2="0.35" width="0.1016" layer="21"/>
<wire x1="-0.2" y1="-0.35" x2="0.2" y2="-0.35" width="0.1016" layer="21"/>
<smd name="C" x="-0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<text x="-1" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1" y="-2" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.4" y1="0.175" x2="0" y2="0.4" layer="51"/>
<rectangle x1="-0.25" y1="0.175" x2="0" y2="0.4" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1206" urn="urn:adsk.eagle:package:15796/2" type="model" library_version="5">
<description>CHICAGO MINIATURE LAMP, INC.
7022X Series SMT LEDs 1206 Package Size</description>
<packageinstances>
<packageinstance name="1206"/>
</packageinstances>
</package3d>
<package3d name="LD260" urn="urn:adsk.eagle:package:15794/1" type="box" library_version="5">
<description>LED
5 mm, square, Siemens</description>
<packageinstances>
<packageinstance name="LD260"/>
</packageinstances>
</package3d>
<package3d name="LED2X5" urn="urn:adsk.eagle:package:15800/1" type="box" library_version="5">
<description>LED
2 x 5 mm, rectangle</description>
<packageinstances>
<packageinstance name="LED2X5"/>
</packageinstances>
</package3d>
<package3d name="LED3MM" urn="urn:adsk.eagle:package:15797/1" type="box" library_version="5">
<description>LED
3 mm, round</description>
<packageinstances>
<packageinstance name="LED3MM"/>
</packageinstances>
</package3d>
<package3d name="LED5MM" urn="urn:adsk.eagle:package:15799/2" type="model" library_version="5">
<description>LED
5 mm, round</description>
<packageinstances>
<packageinstance name="LED5MM"/>
</packageinstances>
</package3d>
<package3d name="LSU260" urn="urn:adsk.eagle:package:15805/1" type="box" library_version="5">
<description>LED
1 mm, round, Siemens</description>
<packageinstances>
<packageinstance name="LSU260"/>
</packageinstances>
</package3d>
<package3d name="LZR181" urn="urn:adsk.eagle:package:15808/1" type="box" library_version="5">
<description>LED BLOCK
1 LED, Siemens</description>
<packageinstances>
<packageinstance name="LZR181"/>
</packageinstances>
</package3d>
<package3d name="Q62902-B152" urn="urn:adsk.eagle:package:15803/1" type="box" library_version="5">
<description>LED HOLDER
Siemens</description>
<packageinstances>
<packageinstance name="Q62902-B152"/>
</packageinstances>
</package3d>
<package3d name="Q62902-B153" urn="urn:adsk.eagle:package:15804/1" type="box" library_version="5">
<description>LED HOLDER
Siemens</description>
<packageinstances>
<packageinstance name="Q62902-B153"/>
</packageinstances>
</package3d>
<package3d name="Q62902-B155" urn="urn:adsk.eagle:package:15807/1" type="box" library_version="5">
<description>LED HOLDER
Siemens</description>
<packageinstances>
<packageinstance name="Q62902-B155"/>
</packageinstances>
</package3d>
<package3d name="Q62902-B156" urn="urn:adsk.eagle:package:15806/1" type="box" library_version="5">
<description>LED HOLDER
Siemens</description>
<packageinstances>
<packageinstance name="Q62902-B156"/>
</packageinstances>
</package3d>
<package3d name="SFH480" urn="urn:adsk.eagle:package:15809/1" type="box" library_version="5">
<description>IR LED
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking
Inifineon</description>
<packageinstances>
<packageinstance name="SFH480"/>
</packageinstances>
</package3d>
<package3d name="SFH482" urn="urn:adsk.eagle:package:15795/1" type="box" library_version="5">
<description>IR LED
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking
Inifineon</description>
<packageinstances>
<packageinstance name="SFH482"/>
</packageinstances>
</package3d>
<package3d name="U57X32" urn="urn:adsk.eagle:package:15789/1" type="box" library_version="5">
<description>LED
rectangle, 5.7 x 3.2 mm</description>
<packageinstances>
<packageinstance name="U57X32"/>
</packageinstances>
</package3d>
<package3d name="IRL80A" urn="urn:adsk.eagle:package:15810/1" type="box" library_version="5">
<description>IR LED
IR transmitter Siemens</description>
<packageinstances>
<packageinstance name="IRL80A"/>
</packageinstances>
</package3d>
<package3d name="P-LCC-2" urn="urn:adsk.eagle:package:15817/1" type="box" library_version="5">
<description>TOPLED® High-optical Power LED (HOP)
Source: http://www.osram.convergy.de/ ... ls_t675.pdf</description>
<packageinstances>
<packageinstance name="P-LCC-2"/>
</packageinstances>
</package3d>
<package3d name="OSRAM-MINI-TOP-LED" urn="urn:adsk.eagle:package:15811/1" type="box" library_version="5">
<description>BLUE LINETM Hyper Mini TOPLED® Hyper-Bright LED
Source: http://www.osram.convergy.de/ ... LB M676.pdf</description>
<packageinstances>
<packageinstance name="OSRAM-MINI-TOP-LED"/>
</packageinstances>
</package3d>
<package3d name="OSRAM-SIDELED" urn="urn:adsk.eagle:package:15812/1" type="box" library_version="5">
<description>Super SIDELED® High-Current LED
LG A672, LP A672 
Source: http://www.osram.convergy.de/ ... LG_LP_A672.pdf (2004.05.13)</description>
<packageinstances>
<packageinstance name="OSRAM-SIDELED"/>
</packageinstances>
</package3d>
<package3d name="SMART-LED" urn="urn:adsk.eagle:package:15814/1" type="box" library_version="5">
<description>SmartLEDTM Hyper-Bright LED
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY L896.pdf</description>
<packageinstances>
<packageinstance name="SMART-LED"/>
</packageinstances>
</package3d>
<package3d name="P-LCC-2-TOPLED-RG" urn="urn:adsk.eagle:package:15813/1" type="box" library_version="5">
<description>Hyper TOPLED® RG Hyper-Bright LED
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY T776.pdf</description>
<packageinstances>
<packageinstance name="P-LCC-2-TOPLED-RG"/>
</packageinstances>
</package3d>
<package3d name="MICRO-SIDELED" urn="urn:adsk.eagle:package:15815/1" type="box" library_version="5">
<description>Hyper Micro SIDELED®
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY Y876.pdf</description>
<packageinstances>
<packageinstance name="MICRO-SIDELED"/>
</packageinstances>
</package3d>
<package3d name="P-LCC-4" urn="urn:adsk.eagle:package:15816/1" type="box" library_version="5">
<description>Power TOPLED®
Source: http://www.osram.convergy.de/ ... LA_LO_LA_LY E67B.pdf</description>
<packageinstances>
<packageinstance name="P-LCC-4"/>
</packageinstances>
</package3d>
<package3d name="CHIP-LED0603" urn="urn:adsk.eagle:package:15819/3" type="model" library_version="5">
<description>Hyper CHIPLED Hyper-Bright LED
LB Q993
Source: http://www.osram.convergy.de/ ... Lb_q993.pdf</description>
<packageinstances>
<packageinstance name="CHIP-LED0603"/>
</packageinstances>
</package3d>
<package3d name="CHIP-LED0805" urn="urn:adsk.eagle:package:15818/2" type="model" library_version="5">
<description>Hyper CHIPLED Hyper-Bright LED
LB R99A
Source: http://www.osram.convergy.de/ ... lb_r99a.pdf</description>
<packageinstances>
<packageinstance name="CHIP-LED0805"/>
</packageinstances>
</package3d>
<package3d name="MINI-TOPLED-SANTANA" urn="urn:adsk.eagle:package:15820/1" type="box" library_version="5">
<description>Mini TOPLED Santana®
Source: http://www.osram.convergy.de/ ... LG M470.pdf</description>
<packageinstances>
<packageinstance name="MINI-TOPLED-SANTANA"/>
</packageinstances>
</package3d>
<package3d name="CHIPLED_0805" urn="urn:adsk.eagle:package:15821/2" type="model" library_version="5">
<description>CHIPLED
Source: http://www.osram.convergy.de/ ... LG_R971.pdf</description>
<packageinstances>
<packageinstance name="CHIPLED_0805"/>
</packageinstances>
</package3d>
<package3d name="CHIPLED_1206" urn="urn:adsk.eagle:package:15823/2" type="model" library_version="5">
<description>CHIPLED
Source: http://www.osram.convergy.de/ ... LG_LY N971.pdf</description>
<packageinstances>
<packageinstance name="CHIPLED_1206"/>
</packageinstances>
</package3d>
<package3d name="CHIPLED_0603" urn="urn:adsk.eagle:package:15822/2" type="model" library_version="5">
<description>CHIPLED
Source: http://www.osram.convergy.de/ ... LG_LY Q971.pdf</description>
<packageinstances>
<packageinstance name="CHIPLED_0603"/>
</packageinstances>
</package3d>
<package3d name="CHIPLED-0603-TTW" urn="urn:adsk.eagle:package:15824/1" type="box" library_version="5">
<description>CHIPLED-0603
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603
Package able to withstand TTW-soldering heat
Package suitable for TTW-soldering
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<packageinstances>
<packageinstance name="CHIPLED-0603-TTW"/>
</packageinstances>
</package3d>
<package3d name="SMARTLED-TTW" urn="urn:adsk.eagle:package:15825/1" type="box" library_version="5">
<description>SmartLED TTW
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603
Package able to withstand TTW-soldering heat
Package suitable for TTW-soldering
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<packageinstances>
<packageinstance name="SMARTLED-TTW"/>
</packageinstances>
</package3d>
<package3d name="LUMILED+" urn="urn:adsk.eagle:package:15826/1" type="box" library_version="5">
<description>Lumileds Lighting. LUXEON® with cool pad
Source: K2.pdf</description>
<packageinstances>
<packageinstance name="LUMILED+"/>
</packageinstances>
</package3d>
<package3d name="LUMILED" urn="urn:adsk.eagle:package:15827/1" type="box" library_version="5">
<description>Lumileds Lighting. LUXEON® without cool pad
Source: K2.pdf</description>
<packageinstances>
<packageinstance name="LUMILED"/>
</packageinstances>
</package3d>
<package3d name="LED10MM" urn="urn:adsk.eagle:package:15828/1" type="box" library_version="5">
<description>LED
10 mm, round</description>
<packageinstances>
<packageinstance name="LED10MM"/>
</packageinstances>
</package3d>
<package3d name="KA-3528ASYC" urn="urn:adsk.eagle:package:15831/1" type="box" library_version="5">
<description>SURFACE MOUNT LED LAMP 3.5x2.8mm
Source: http://www.kingbright.com/manager/upload/pdf/KA-3528ASYC(Ver1189474662.1)</description>
<packageinstances>
<packageinstance name="KA-3528ASYC"/>
</packageinstances>
</package3d>
<package3d name="SML0805" urn="urn:adsk.eagle:package:15830/1" type="box" library_version="5">
<description>SML0805-2CW-TR (0805 PROFILE) COOL WHITE
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0093.pdf</description>
<packageinstances>
<packageinstance name="SML0805"/>
</packageinstances>
</package3d>
<package3d name="SML1206" urn="urn:adsk.eagle:package:15829/1" type="box" library_version="5">
<description>SML10XXKH-TR (HIGH INTENSITY) LED

SML10R3KH-TRULTRA RED
SML10E3KH-TRSUPER REDSUPER BLUE
SML10O3KH-TRSUPER ORANGE
SML10PY3KH-TRPURE YELLOW
SML10OY3KH-TRULTRA YELLOW
SML10AG3KH-TRAQUA GREEN
SML10BG3KH-TRBLUE GREEN
SML10PB1KH-TRSUPER BLUE
SML10CW1KH-TRWHITE


Source: http://www.ledtronics.com/ds/smd-1206/dstr0094.PDF</description>
<packageinstances>
<packageinstance name="SML1206"/>
</packageinstances>
</package3d>
<package3d name="SML0603" urn="urn:adsk.eagle:package:15832/1" type="box" library_version="5">
<description>SML0603-XXX (HIGH INTENSITY) LED

AG3KAQUA GREEN
B1KSUPER BLUE
R1KSUPER RED
R3KULTRA RED
O3KSUPER ORANGE
O3KHSOFT ORANGE
Y3KHSUPER YELLOW
Y3KSUPER YELLOW
2CWWHITE

Source: http://www.ledtronics.com/ds/smd-0603/Dstr0092.pdf</description>
<packageinstances>
<packageinstance name="SML0603"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LED" urn="urn:adsk.eagle:symbol:15639/2" library_version="5">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED" urn="urn:adsk.eagle:component:15916/10" prefix="LED" uservalue="yes" library_version="5">
<description>&lt;b&gt;LED&lt;/b&gt;&lt;p&gt;
&lt;u&gt;OSRAM&lt;/u&gt;:&lt;br&gt;

- &lt;u&gt;CHIPLED&lt;/u&gt;&lt;br&gt;
LG R971, LG N971, LY N971, LG Q971, LY Q971, LO R971, LY R971
LH N974, LH R974&lt;br&gt;
LS Q976, LO Q976, LY Q976&lt;br&gt;
LO Q996&lt;br&gt;

- &lt;u&gt;Hyper CHIPLED&lt;/u&gt;&lt;br&gt;
LW Q18S&lt;br&gt;
LB Q993, LB Q99A, LB R99A&lt;br&gt;

- &lt;u&gt;SideLED&lt;/u&gt;&lt;br&gt;
LS A670, LO A670, LY A670, LG A670, LP A670&lt;br&gt;
LB A673, LV A673, LT A673, LW A673&lt;br&gt;
LH A674&lt;br&gt;
LY A675&lt;br&gt;
LS A676, LA A676, LO A676, LY A676, LW A676&lt;br&gt;
LS A679, LY A679, LG A679&lt;br&gt;

-  &lt;u&gt;Hyper Micro SIDELED®&lt;/u&gt;&lt;br&gt;
LS Y876, LA Y876, LO Y876, LY Y876&lt;br&gt;
LT Y87S&lt;br&gt;

- &lt;u&gt;SmartLED&lt;/u&gt;&lt;br&gt;
LW L88C, LW L88S&lt;br&gt;
LB L89C, LB L89S, LG L890&lt;br&gt;
LS L89K, LO L89K, LY L89K&lt;br&gt;
LS L896, LA L896, LO L896, LY L896&lt;br&gt;

- &lt;u&gt;TOPLED&lt;/u&gt;&lt;br&gt;
LS T670, LO T670, LY T670, LG T670, LP T670&lt;br&gt;
LSG T670, LSP T670, LSY T670, LOP T670, LYG T670&lt;br&gt;
LG T671, LOG T671, LSG T671&lt;br&gt;
LB T673, LV T673, LT T673, LW T673&lt;br&gt;
LH T674&lt;br&gt;
LS T676, LA T676, LO T676, LY T676, LB T676, LH T676, LSB T676, LW T676&lt;br&gt;
LB T67C, LV T67C, LT T67C, LS T67K, LO T67K, LY T67K, LW E67C&lt;br&gt;
LS E67B, LA E67B, LO E67B, LY E67B, LB E67C, LV E67C, LT E67C&lt;br&gt;
LW T67C&lt;br&gt;
LS T679, LY T679, LG T679&lt;br&gt;
LS T770, LO T770, LY T770, LG T770, LP T770&lt;br&gt;
LB T773, LV T773, LT T773, LW T773&lt;br&gt;
LH T774&lt;br&gt;
LS E675, LA E675, LY E675, LS T675&lt;br&gt;
LS T776, LA T776, LO T776, LY T776, LB T776&lt;br&gt;
LHGB T686&lt;br&gt;
LT T68C, LB T68C&lt;br&gt;

- &lt;u&gt;Hyper Mini TOPLED®&lt;/u&gt;&lt;br&gt;
LB M676&lt;br&gt;

- &lt;u&gt;Mini TOPLED Santana®&lt;/u&gt;&lt;br&gt;
LG M470&lt;br&gt;
LS M47K, LO M47K, LY M47K
&lt;p&gt;
Source: http://www.osram.convergy.de&lt;p&gt;

&lt;u&gt;LUXEON:&lt;/u&gt;&lt;br&gt;
- &lt;u&gt;LUMILED®&lt;/u&gt;&lt;br&gt;
LXK2-PW12-R00, LXK2-PW12-S00, LXK2-PW14-U00, LXK2-PW14-V00&lt;br&gt;
LXK2-PM12-R00, LXK2-PM12-S00, LXK2-PM14-U00&lt;br&gt;
LXK2-PE12-Q00, LXK2-PE12-R00, LXK2-PE12-S00, LXK2-PE14-T00, LXK2-PE14-U00&lt;br&gt;
LXK2-PB12-K00, LXK2-PB12-L00, LXK2-PB12-M00, LXK2-PB14-N00, LXK2-PB14-P00, LXK2-PB14-Q00&lt;br&gt;
LXK2-PR12-L00, LXK2-PR12-M00, LXK2-PR14-Q00, LXK2-PR14-R00&lt;br&gt;
LXK2-PD12-Q00, LXK2-PD12-R00, LXK2-PD12-S00&lt;br&gt;
LXK2-PH12-R00, LXK2-PH12-S00&lt;br&gt;
LXK2-PL12-P00, LXK2-PL12-Q00, LXK2-PL12-R00
&lt;p&gt;
Source: www.luxeon.com&lt;p&gt;

&lt;u&gt;KINGBRIGHT:&lt;/U&gt;&lt;p&gt;
KA-3528ASYC&lt;br&gt;
Source: www.kingbright.com</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="SMT1206" package="1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15796/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="20" constant="no"/>
</technology>
</technologies>
</device>
<device name="LD260" package="LD260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15794/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SQR2X5" package="LED2X5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15800/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="3MM" package="LED3MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15797/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="97" constant="no"/>
</technology>
</technologies>
</device>
<device name="5MM" package="LED5MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15799/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="93" constant="no"/>
</technology>
</technologies>
</device>
<device name="LSU260" package="LSU260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15805/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="LZR181" package="LZR181">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15808/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="B152" package="Q62902-B152">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15803/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="B153" package="Q62902-B153">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15804/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="B155" package="Q62902-B155">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15807/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="B156" package="Q62902-B156">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15806/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SFH480" package="SFH480">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15809/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="SFH482" package="SFH482">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15795/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SQR5.7X3.2" package="U57X32">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15789/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="IRL80A" package="IRL80A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15810/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="P-LCC-2" package="P-LCC-2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15817/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="MINI-TOP" package="OSRAM-MINI-TOP-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15811/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SIDELED" package="OSRAM-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15812/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMART-LED" package="SMART-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="B"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15814/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="P-LCC-2-BACK" package="P-LCC-2-TOPLED-RG">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15813/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="MICRO-SIDELED" package="MICRO-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15815/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="P-LCC-4" package="P-LCC-4">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C@4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15816/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-LED0603" package="CHIP-LED0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15819/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="26" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-LED0805" package="CHIP-LED0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15818/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="68" constant="no"/>
</technology>
</technologies>
</device>
<device name="TOPLED-SANTANA" package="MINI-TOPLED-SANTANA">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15820/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIPLED_0805" package="CHIPLED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15821/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="52" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIPLED_1206" package="CHIPLED_1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15823/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="28" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIPLED_0603" package="CHIPLED_0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15822/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="28" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIPLED-0603-TTW" package="CHIPLED-0603-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15824/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="" package="SMARTLED-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15825/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
<device name="-LUMILED+" package="LUMILED+">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15826/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-LUMILED" package="LUMILED">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15827/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="10MM" package="LED10MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15828/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="KA-3528ASYC" package="KA-3528ASYC">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15831/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SML0805" package="SML0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15830/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
</technology>
</technologies>
</device>
<device name="SML1206" package="SML1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15829/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="6" constant="no"/>
</technology>
</technologies>
</device>
<device name="SML0603" package="SML0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15832/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex" urn="urn:adsk.eagle:library:165">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="22-23-2021" urn="urn:adsk.eagle:footprint:8078259/1" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 2 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232021_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<wire x1="-2.54" y1="3.175" x2="2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="3.175" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="-2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<text x="-2.54" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="7395-02" urn="urn:adsk.eagle:footprint:8078270/1" library_version="5">
<description>&lt;b&gt;KK® 254 Wire-to-Board Header, Right Angle, with Friction Lock, 2 Circuits&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022057028_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-1.905" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-2.54" width="0.254" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.254" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="0.635" y2="-1.905" width="0.254" layer="21"/>
<wire x1="0.635" y1="-1.905" x2="-0.635" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-1.905" x2="-0.635" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-1.905" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-5.08" x2="-1.651" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-1.651" y1="-5.08" x2="1.27" y2="-5.08" width="0.254" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="-13.081" width="0.254" layer="21"/>
<wire x1="1.27" y1="-13.081" x2="1.016" y2="-13.589" width="0.254" layer="21"/>
<wire x1="1.016" y1="-13.589" x2="-0.0508" y2="-13.589" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="-13.081" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-13.081" x2="-1.016" y2="-13.589" width="0.254" layer="21"/>
<wire x1="-1.016" y1="-13.589" x2="-0.0508" y2="-13.589" width="0.254" layer="21"/>
<wire x1="-0.0508" y1="-13.589" x2="0.0508" y2="-13.589" width="0.254" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="0.889" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-1.651" y1="-5.08" x2="-1.651" y2="-11.303" width="0.254" layer="21"/>
<wire x1="-1.651" y1="-11.303" x2="-1.3208" y2="-11.6586" width="0.254" layer="21"/>
<wire x1="1.651" y1="-5.08" x2="1.651" y2="-11.303" width="0.254" layer="21"/>
<wire x1="1.651" y1="-11.303" x2="1.3208" y2="-11.6586" width="0.254" layer="21"/>
<pad name="1" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="2.6401" y="2.9479" size="1.016" layer="25" ratio="10" rot="R180">&gt;NAME</text>
<text x="0.7859" y="-3.4021" size="1.27" layer="21" ratio="14" rot="R270">1</text>
<text x="-1.7033" y="-3.2751" size="1.27" layer="21" ratio="14" rot="R270">2</text>
<text x="3.4021" y="-2.4399" size="0.8128" layer="27" ratio="10" rot="R270">&gt;VALUE</text>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-2.5146" x2="1.524" y2="-0.2794" layer="51"/>
<rectangle x1="-1.524" y1="-2.5146" x2="-1.016" y2="-0.2794" layer="51"/>
</package>
<package name="6410-02" urn="urn:adsk.eagle:footprint:8078271/1" library_version="5">
<description>&lt;b&gt;KK® 254 Wire-to-Board Header, Vertical, with Friction Lock, 2 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022272021_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="2.921" width="0.127" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="2.921" width="0.254" layer="21"/>
<wire x1="-2.54" y1="2.921" x2="-1.27" y2="2.921" width="0.254" layer="21"/>
<wire x1="-1.016" y1="2.921" x2="-1.27" y2="2.921" width="0.127" layer="21"/>
<wire x1="-1.27" y1="2.921" x2="0" y2="2.921" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="2.921" width="0.254" layer="21"/>
<wire x1="2.54" y1="2.921" x2="0" y2="2.921" width="0.127" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-2.921" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-2.921" x2="0" y2="-2.921" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.921" width="0.254" layer="21"/>
<wire x1="2.54" y1="-2.921" x2="1.905" y2="-2.921" width="0.127" layer="21"/>
<wire x1="1.905" y1="-2.921" x2="0.635" y2="-2.921" width="0.254" layer="21"/>
<wire x1="0.635" y1="-2.921" x2="0" y2="-2.921" width="0.127" layer="21"/>
<wire x1="-2.286" y1="-2.921" x2="-1.905" y2="-2.921" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-2.921" x2="-1.905" y2="-2.921" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-2.921" x2="-1.905" y2="-2.286" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-2.286" x2="-0.635" y2="-2.286" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-2.286" x2="-0.635" y2="-2.921" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-2.921" x2="0.635" y2="-2.921" width="0.254" layer="21"/>
<wire x1="0.635" y1="-2.921" x2="0.635" y2="-2.286" width="0.254" layer="21"/>
<wire x1="0.635" y1="-2.286" x2="1.905" y2="-2.286" width="0.254" layer="21"/>
<wire x1="1.905" y1="-2.286" x2="1.905" y2="-2.921" width="0.254" layer="21"/>
<wire x1="1.905" y1="-2.921" x2="2.54" y2="-2.921" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="2.921" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.016" y2="1.905" width="0.254" layer="21"/>
<wire x1="-1.016" y1="1.905" x2="1.016" y2="1.905" width="0.254" layer="21"/>
<wire x1="1.016" y1="1.905" x2="1.27" y2="1.905" width="0.254" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.27" y2="2.921" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.016" y2="1.397" width="0.254" layer="21"/>
<wire x1="-1.016" y1="2.921" x2="-1.016" y2="1.905" width="0.254" layer="21"/>
<wire x1="-1.016" y1="1.397" x2="1.016" y2="1.397" width="0.254" layer="21"/>
<wire x1="1.016" y1="1.397" x2="1.27" y2="1.905" width="0.254" layer="21"/>
<wire x1="1.016" y1="2.921" x2="1.016" y2="1.905" width="0.254" layer="21"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.5131" y="3.2751" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="3.2751" y="-0.6111" size="1.27" layer="21" ratio="14">1</text>
<text x="-3.7099" y="-0.6873" size="1.27" layer="21" ratio="14">2</text>
<text x="-2.5131" y="-4.5989" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="22-23-2021" urn="urn:adsk.eagle:package:8078633/1" type="box" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 2 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232021_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<packageinstances>
<packageinstance name="22-23-2021"/>
</packageinstances>
</package3d>
<package3d name="7395-02" urn="urn:adsk.eagle:package:8078644/1" type="box" library_version="5">
<description>&lt;b&gt;KK® 254 Wire-to-Board Header, Right Angle, with Friction Lock, 2 Circuits&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022057028_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<packageinstances>
<packageinstance name="7395-02"/>
</packageinstances>
</package3d>
<package3d name="6410-02" urn="urn:adsk.eagle:package:8078645/1" type="box" library_version="5">
<description>&lt;b&gt;KK® 254 Wire-to-Board Header, Vertical, with Friction Lock, 2 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022272021_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<packageinstances>
<packageinstance name="6410-02"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MV" urn="urn:adsk.eagle:symbol:6783/2" library_version="5">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M" urn="urn:adsk.eagle:symbol:6785/2" library_version="5">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2021" urn="urn:adsk.eagle:component:8078938/3" prefix="X" library_version="5">
<description>.100" (2.54mm) Center Header - 2 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2021">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8078633/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2021" constant="no"/>
<attribute name="OC_FARNELL" value="1462926" constant="no"/>
<attribute name="OC_NEWARK" value="25C3832" constant="no"/>
<attribute name="POPULARITY" value="40" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-?-02" urn="urn:adsk.eagle:component:8078969/3" prefix="J" library_version="5">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 2.54 mm (.1 inch) pitch header</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="05-7028" package="7395-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8078644/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="9731601" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="27-2021" package="6410-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8078645/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CONBNC001">
<description>&lt;Body Features: Body Material Brass | Body Plating Material Nickel | Configuration Features: Number of Coaxial Contacts 1 | Number of Positions 1 | Electrical Characteristics: Impedance 50 OHM | Mechanical Attachment: Connector Mounting Type Board Mount | RF Connector Coupling Mechanism Bayonet | Operation/Application: Operating Frequency 3 GHZ | Circuit Application Signal | Other: Dielectric Material Polytetrafluoroethylene (PTFE) | Product Type Features: RF Connector Style Jack | Connector &amp; Contact Termin&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CONBNC001">
<description>&lt;b&gt;CONBNC001-2&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.2" diameter="1.8" shape="square"/>
<pad name="2" x="-3.15" y="3.15" drill="1.6" diameter="2.4"/>
<pad name="3" x="-3.15" y="-3.15" drill="1.6" diameter="2.4"/>
<pad name="4" x="3.15" y="-3.15" drill="1.6" diameter="2.4"/>
<pad name="5" x="3.15" y="3.15" drill="1.6" diameter="2.4"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-6.5" y1="6.5" x2="6.5" y2="6.5" width="0.1" layer="51"/>
<wire x1="6.5" y1="6.5" x2="6.5" y2="-6.5" width="0.1" layer="51"/>
<wire x1="6.5" y1="-6.5" x2="-6.5" y2="-6.5" width="0.1" layer="51"/>
<wire x1="-6.5" y1="-6.5" x2="-6.5" y2="6.5" width="0.1" layer="51"/>
<wire x1="-5.5" y1="0" x2="-5.5" y2="0" width="0.1" layer="51"/>
<wire x1="-5.5" y1="0" x2="5.5" y2="0" width="0.1" layer="51" curve="180"/>
<wire x1="5.5" y1="0" x2="5.5" y2="0" width="0.1" layer="51"/>
<wire x1="5.5" y1="0" x2="-5.5" y2="0" width="0.1" layer="51" curve="180"/>
<wire x1="-6" y1="0" x2="-6" y2="0" width="0.1" layer="21"/>
<wire x1="-6" y1="0" x2="-6.1" y2="0" width="0.1" layer="21" curve="180"/>
<wire x1="-6.1" y1="0" x2="-6.1" y2="0" width="0.1" layer="21"/>
<wire x1="-6.1" y1="0" x2="-6" y2="0" width="0.1" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="CONBNC001">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="2" x="0" y="-2.54" length="middle"/>
<pin name="3" x="0" y="-5.08" length="middle"/>
<pin name="4" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="5" x="20.32" y="-2.54" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CONBNC001" prefix="J">
<description>&lt;b&gt;Body Features: Body Material Brass | Body Plating Material Nickel | Configuration Features: Number of Coaxial Contacts 1 | Number of Positions 1 | Electrical Characteristics: Impedance 50 OHM | Mechanical Attachment: Connector Mounting Type Board Mount | RF Connector Coupling Mechanism Bayonet | Operation/Application: Operating Frequency 3 GHZ | Circuit Application Signal | Other: Dielectric Material Polytetrafluoroethylene (PTFE) | Product Type Features: RF Connector Style Jack | Connector &amp; Contact Termin&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&amp;DocNm=CONBNC001&amp;DocType=Data Sheet&amp;DocLang=English&amp;PartCntxt=CONBNC001&amp;DocFormat=pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CONBNC001" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CONBNC001">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Body Features: Body Material Brass | Body Plating Material Nickel | Configuration Features: Number of Coaxial Contacts 1 | Number of Positions 1 | Electrical Characteristics: Impedance 50 OHM | Mechanical Attachment: Connector Mounting Type Board Mount | RF Connector Coupling Mechanism Bayonet | Operation/Application: Operating Frequency 3 GHZ | Circuit Application Signal | Other: Dielectric Material Polytetrafluoroethylene (PTFE) | Product Type Features: RF Connector Style Jack | Connector &amp; Contact Termin" constant="no"/>
<attribute name="HEIGHT" value="14.9mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TE Connectivity" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CONBNC001" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="712-CONBNC001" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/TE-Connectivity-Linx-Technologies/CONBNC001?qs=doiCPypUmgHczHAGaJs8Lg%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="PTS635SL50LFS">
<description>&lt;Tactile Switches TACT&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="PTS635SL50LFS">
<description>&lt;b&gt;PTS635SL50LFS-2&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.3" diameter="1.95"/>
<pad name="2" x="6.5" y="0" drill="1.3" diameter="1.95"/>
<text x="3.25" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="3.25" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="0.25" y1="1.75" x2="6.25" y2="1.75" width="0.1" layer="51"/>
<wire x1="6.25" y1="1.75" x2="6.25" y2="-1.75" width="0.1" layer="51"/>
<wire x1="6.25" y1="-1.75" x2="0.25" y2="-1.75" width="0.1" layer="51"/>
<wire x1="0.25" y1="-1.75" x2="0.25" y2="1.75" width="0.1" layer="51"/>
<wire x1="-1.975" y1="2.75" x2="8.475" y2="2.75" width="0.1" layer="51"/>
<wire x1="8.475" y1="2.75" x2="8.475" y2="-2.75" width="0.1" layer="51"/>
<wire x1="8.475" y1="-2.75" x2="-1.975" y2="-2.75" width="0.1" layer="51"/>
<wire x1="-1.975" y1="-2.75" x2="-1.975" y2="2.75" width="0.1" layer="51"/>
<wire x1="0.25" y1="1.75" x2="6.25" y2="1.75" width="0.2" layer="21"/>
<wire x1="0.25" y1="-1.75" x2="6.25" y2="-1.75" width="0.2" layer="21"/>
<wire x1="-0.2" y1="-2.2" x2="-0.2" y2="-2.2" width="0.2" layer="21"/>
<wire x1="-0.2" y1="-2.2" x2="-0.4" y2="-2.2" width="0.2" layer="21" curve="180"/>
<wire x1="-0.4" y1="-2.2" x2="-0.4" y2="-2.2" width="0.2" layer="21"/>
<wire x1="-0.4" y1="-2.2" x2="-0.2" y2="-2.2" width="0.2" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="PTS635SL50LFS">
<wire x1="5.08" y1="2.54" x2="17.78" y2="2.54" width="0.254" layer="94"/>
<wire x1="17.78" y1="-5.08" x2="17.78" y2="2.54" width="0.254" layer="94"/>
<wire x1="17.78" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="19.05" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="19.05" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="COM" x="0" y="0" length="middle"/>
<pin name="NO" x="0" y="-2.54" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PTS635SL50LFS" prefix="S">
<description>&lt;b&gt;Tactile Switches TACT&lt;/b&gt;&lt;p&gt;
Source: &lt;a href=""&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="PTS635SL50LFS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PTS635SL50LFS">
<connects>
<connect gate="G$1" pin="COM" pad="1"/>
<connect gate="G$1" pin="NO" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Tactile Switches TACT" constant="no"/>
<attribute name="HEIGHT" value="5mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="C &amp; K COMPONENTS" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="PTS635SL50LFS" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="611-PTS635SL50LFS" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/CK/PTS635SL50LFS?qs=u2NJ%252B70r0gpkXWlfBVOo5A%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="testpad" urn="urn:adsk.eagle:library:385">
<description>&lt;b&gt;Test Pins/Pads&lt;/b&gt;&lt;p&gt;
Cream on SMD OFF.&lt;br&gt;
new: Attribute TP_SIGNAL_NAME&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="B1,27" urn="urn:adsk.eagle:footprint:27900/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.0024" layer="37"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.0024" layer="37"/>
<smd name="TP" x="0" y="0" dx="1.27" dy="1.27" layer="1" roundness="100" cream="no"/>
<text x="-0.635" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-0.635" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="B2,54" urn="urn:adsk.eagle:footprint:27901/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.0024" layer="37"/>
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0.0024" layer="37"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="37"/>
<smd name="TP" x="0" y="0" dx="2.54" dy="2.54" layer="1" roundness="100" cream="no"/>
<text x="-1.27" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-1.397" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.175" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="P1-13" urn="urn:adsk.eagle:footprint:27902/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.3208" diameter="2.159" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-13Y" urn="urn:adsk.eagle:footprint:27903/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.3208" diameter="1.905" shape="long" rot="R90"/>
<text x="-0.889" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.81" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-17" urn="urn:adsk.eagle:footprint:27904/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.8128" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.7018" diameter="2.54" shape="octagon"/>
<text x="-1.143" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.175" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-17Y" urn="urn:adsk.eagle:footprint:27905/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.8128" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.7018" diameter="2.1208" shape="long" rot="R90"/>
<text x="-1.143" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.81" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-20" urn="urn:adsk.eagle:footprint:27906/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="2.0066" diameter="3.1496" shape="octagon"/>
<text x="-1.524" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.175" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-20Y" urn="urn:adsk.eagle:footprint:27907/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="2.0066" diameter="2.54" shape="long" rot="R90"/>
<text x="-1.27" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-4.445" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="TP06R" urn="urn:adsk.eagle:footprint:27908/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.6" dy="0.6" layer="1" roundness="100" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.254" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP06SQ" urn="urn:adsk.eagle:footprint:27909/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.5996" dy="0.5996" layer="1" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.254" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP07R" urn="urn:adsk.eagle:footprint:27910/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.7" dy="0.7" layer="1" roundness="100" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.254" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP07SQ" urn="urn:adsk.eagle:footprint:27911/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.7" dy="0.7" layer="1" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP08R" urn="urn:adsk.eagle:footprint:27912/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.8" dy="0.8" layer="1" roundness="100" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP08SQ" urn="urn:adsk.eagle:footprint:27913/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.8" dy="0.8" layer="1" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP09R" urn="urn:adsk.eagle:footprint:27914/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.9" dy="0.9" layer="1" roundness="100" cream="no"/>
<text x="-0.4501" y="0.5001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP09SQ" urn="urn:adsk.eagle:footprint:27915/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.8998" dy="0.8998" layer="1" cream="no"/>
<text x="-0.4501" y="0.5001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP10R" urn="urn:adsk.eagle:footprint:27916/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1" dy="1" layer="1" roundness="100" cream="no"/>
<text x="-0.5001" y="0.5499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP10SQ" urn="urn:adsk.eagle:footprint:27917/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1" dy="1" layer="1" cream="no"/>
<text x="-0.5001" y="0.5499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP11R" urn="urn:adsk.eagle:footprint:27918/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.1" dy="1.1" layer="1" roundness="100" cream="no"/>
<text x="-0.5499" y="0.5999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP11SQ" urn="urn:adsk.eagle:footprint:27919/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.1" dy="1.1" layer="1" cream="no"/>
<text x="-0.5499" y="0.5999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP12SQ" urn="urn:adsk.eagle:footprint:27920/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.1998" dy="1.1998" layer="1" cream="no"/>
<text x="-0.5999" y="0.65" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP12R" urn="urn:adsk.eagle:footprint:27921/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.2" dy="1.2" layer="1" roundness="100" cream="no"/>
<text x="-0.5999" y="0.65" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP13R" urn="urn:adsk.eagle:footprint:27922/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.3" dy="1.3" layer="1" roundness="100" cream="no"/>
<text x="-0.65" y="0.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP14R" urn="urn:adsk.eagle:footprint:27923/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.4" dy="1.4" layer="1" roundness="100" cream="no"/>
<text x="-0.7" y="0.7501" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP15R" urn="urn:adsk.eagle:footprint:27924/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.5" dy="1.5" layer="1" roundness="100" cream="no"/>
<text x="-0.7501" y="0.8001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP16R" urn="urn:adsk.eagle:footprint:27925/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.6" dy="1.6" layer="1" roundness="100" cream="no"/>
<text x="-0.8001" y="0.8499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP17R" urn="urn:adsk.eagle:footprint:27926/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.7" dy="1.7" layer="1" roundness="100" cream="no"/>
<text x="-0.8499" y="0.8999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP18R" urn="urn:adsk.eagle:footprint:27927/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.8" dy="1.8" layer="1" roundness="100" cream="no"/>
<text x="-0.8999" y="0.95" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP19R" urn="urn:adsk.eagle:footprint:27928/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100" cream="no"/>
<text x="-0.95" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP20R" urn="urn:adsk.eagle:footprint:27929/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="2" dy="2" layer="1" roundness="100" cream="no"/>
<text x="-1" y="1.05" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-1.016" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP13SQ" urn="urn:adsk.eagle:footprint:27930/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.3" dy="1.3" layer="1" cream="no"/>
<text x="-0.65" y="0.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP14SQ" urn="urn:adsk.eagle:footprint:27931/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.4" dy="1.4" layer="1" cream="no"/>
<text x="-0.7" y="0.7501" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP15SQ" urn="urn:adsk.eagle:footprint:27932/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.5" dy="1.5" layer="1" cream="no"/>
<text x="-0.7501" y="0.8001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP16SQ" urn="urn:adsk.eagle:footprint:27933/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.5996" dy="1.5996" layer="1" cream="no"/>
<text x="-0.8001" y="0.8499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP17SQ" urn="urn:adsk.eagle:footprint:27934/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.7" dy="1.7" layer="1" cream="no"/>
<text x="-0.8499" y="0.8999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP18SQ" urn="urn:adsk.eagle:footprint:27935/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.8" dy="1.8" layer="1" cream="no"/>
<text x="-0.8999" y="0.95" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-1.016" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP19SQ" urn="urn:adsk.eagle:footprint:27936/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.8998" dy="1.8998" layer="1" cream="no"/>
<text x="-0.95" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-1.016" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP20SQ" urn="urn:adsk.eagle:footprint:27937/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="2" dy="2" layer="1" cream="no"/>
<text x="-1" y="1.05" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
</packages>
<packages3d>
<package3d name="B1,27" urn="urn:adsk.eagle:package:27944/2" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="B1,27"/>
</packageinstances>
</package3d>
<package3d name="B2,54" urn="urn:adsk.eagle:package:27948/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="B2,54"/>
</packageinstances>
</package3d>
<package3d name="P1-13" urn="urn:adsk.eagle:package:27946/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-13"/>
</packageinstances>
</package3d>
<package3d name="P1-13Y" urn="urn:adsk.eagle:package:27947/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-13Y"/>
</packageinstances>
</package3d>
<package3d name="P1-17" urn="urn:adsk.eagle:package:27949/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-17"/>
</packageinstances>
</package3d>
<package3d name="P1-17Y" urn="urn:adsk.eagle:package:27953/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-17Y"/>
</packageinstances>
</package3d>
<package3d name="P1-20" urn="urn:adsk.eagle:package:27950/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-20"/>
</packageinstances>
</package3d>
<package3d name="P1-20Y" urn="urn:adsk.eagle:package:27951/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-20Y"/>
</packageinstances>
</package3d>
<package3d name="TP06R" urn="urn:adsk.eagle:package:27954/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP06R"/>
</packageinstances>
</package3d>
<package3d name="TP06SQ" urn="urn:adsk.eagle:package:27952/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP06SQ"/>
</packageinstances>
</package3d>
<package3d name="TP07R" urn="urn:adsk.eagle:package:27970/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP07R"/>
</packageinstances>
</package3d>
<package3d name="TP07SQ" urn="urn:adsk.eagle:package:27955/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP07SQ"/>
</packageinstances>
</package3d>
<package3d name="TP08R" urn="urn:adsk.eagle:package:27956/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP08R"/>
</packageinstances>
</package3d>
<package3d name="TP08SQ" urn="urn:adsk.eagle:package:27960/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP08SQ"/>
</packageinstances>
</package3d>
<package3d name="TP09R" urn="urn:adsk.eagle:package:27958/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP09R"/>
</packageinstances>
</package3d>
<package3d name="TP09SQ" urn="urn:adsk.eagle:package:27957/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP09SQ"/>
</packageinstances>
</package3d>
<package3d name="TP10R" urn="urn:adsk.eagle:package:27959/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP10R"/>
</packageinstances>
</package3d>
<package3d name="TP10SQ" urn="urn:adsk.eagle:package:27962/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP10SQ"/>
</packageinstances>
</package3d>
<package3d name="TP11R" urn="urn:adsk.eagle:package:27961/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP11R"/>
</packageinstances>
</package3d>
<package3d name="TP11SQ" urn="urn:adsk.eagle:package:27965/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP11SQ"/>
</packageinstances>
</package3d>
<package3d name="TP12SQ" urn="urn:adsk.eagle:package:27964/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP12SQ"/>
</packageinstances>
</package3d>
<package3d name="TP12R" urn="urn:adsk.eagle:package:27963/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP12R"/>
</packageinstances>
</package3d>
<package3d name="TP13R" urn="urn:adsk.eagle:package:27967/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP13R"/>
</packageinstances>
</package3d>
<package3d name="TP14R" urn="urn:adsk.eagle:package:27966/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP14R"/>
</packageinstances>
</package3d>
<package3d name="TP15R" urn="urn:adsk.eagle:package:27968/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP15R"/>
</packageinstances>
</package3d>
<package3d name="TP16R" urn="urn:adsk.eagle:package:27969/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP16R"/>
</packageinstances>
</package3d>
<package3d name="TP17R" urn="urn:adsk.eagle:package:27971/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP17R"/>
</packageinstances>
</package3d>
<package3d name="TP18R" urn="urn:adsk.eagle:package:27981/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP18R"/>
</packageinstances>
</package3d>
<package3d name="TP19R" urn="urn:adsk.eagle:package:27972/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP19R"/>
</packageinstances>
</package3d>
<package3d name="TP20R" urn="urn:adsk.eagle:package:27973/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP20R"/>
</packageinstances>
</package3d>
<package3d name="TP13SQ" urn="urn:adsk.eagle:package:27974/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP13SQ"/>
</packageinstances>
</package3d>
<package3d name="TP14SQ" urn="urn:adsk.eagle:package:27984/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP14SQ"/>
</packageinstances>
</package3d>
<package3d name="TP15SQ" urn="urn:adsk.eagle:package:27975/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP15SQ"/>
</packageinstances>
</package3d>
<package3d name="TP16SQ" urn="urn:adsk.eagle:package:27976/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP16SQ"/>
</packageinstances>
</package3d>
<package3d name="TP17SQ" urn="urn:adsk.eagle:package:27977/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP17SQ"/>
</packageinstances>
</package3d>
<package3d name="TP18SQ" urn="urn:adsk.eagle:package:27979/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP18SQ"/>
</packageinstances>
</package3d>
<package3d name="TP19SQ" urn="urn:adsk.eagle:package:27978/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP19SQ"/>
</packageinstances>
</package3d>
<package3d name="TP20SQ" urn="urn:adsk.eagle:package:27980/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP20SQ"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PS" urn="urn:adsk.eagle:symbol:27897/1" library_version="3">
<wire x1="0.635" y1="-4.572" x2="-0.635" y2="-4.572" width="0.1524" layer="94"/>
<wire x1="0.635" y1="-4.572" x2="0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="0.635" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-4.572" width="0.1524" layer="94"/>
<wire x1="0.381" y1="-3.048" x2="-0.381" y2="-2.794" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="-2.794" x2="0.381" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.381" y1="-2.54" x2="-0.381" y2="-2.286" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="-2.286" x2="0.381" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="0.381" y1="-2.032" x2="-0.381" y2="-1.778" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="-1.778" x2="0.381" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="0.381" y1="-1.524" x2="-0.381" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="-1.27" x2="0.381" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="-1.016" x2="-0.381" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="-0.762" x2="0.381" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0.508" y1="-5.207" x2="-0.508" y2="-5.207" width="0.1524" layer="94"/>
<wire x1="-0.508" y1="-5.207" x2="-0.508" y2="-5.715" width="0.1524" layer="94"/>
<wire x1="-0.508" y1="-5.715" x2="0" y2="-6.35" width="0.1524" layer="94"/>
<wire x1="0" y1="-6.35" x2="0.508" y2="-5.715" width="0.1524" layer="94"/>
<wire x1="0.508" y1="-5.715" x2="0.508" y2="-5.207" width="0.1524" layer="94"/>
<text x="-1.016" y="-6.35" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="1.27" y="-2.54" size="1.778" layer="97">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.381" y1="-5.207" x2="0.381" y2="-4.572" layer="94"/>
<pin name="TP" x="0" y="2.54" visible="off" length="short" direction="in" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PTR1" urn="urn:adsk.eagle:component:27989/3" prefix="TP" library_version="3">
<description>&lt;b&gt;TEST PIN&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PS" x="0" y="0"/>
</gates>
<devices>
<device name="B1,27" package="B1,27">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27944/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="B2,54" package="B2,54">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27948/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-13" package="P1-13">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27946/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-13Y" package="P1-13Y">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27947/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-17" package="P1-17">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27949/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-17Y" package="P1-17Y">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27953/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-20" package="P1-20">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27950/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-20Y" package="P1-20Y">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27951/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP06R" package="TP06R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27954/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP06SQ" package="TP06SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27952/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP07R" package="TP07R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27970/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP07SQ" package="TP07SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27955/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP08R" package="TP08R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27956/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP08SQ" package="TP08SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27960/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP09R" package="TP09R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27958/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP09SQ" package="TP09SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27957/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP10R" package="TP10R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27959/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP10SQ" package="TP10SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27962/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP11R" package="TP11R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27961/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP11SQ" package="TP11SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27965/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP12SQ" package="TP12SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27964/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP12R" package="TP12R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27963/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP13R" package="TP13R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27967/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP14R" package="TP14R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27966/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP15R" package="TP15R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27968/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP16R" package="TP16R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27969/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP17R" package="TP17R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27971/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP18R" package="TP18R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27981/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP19R" package="TP19R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27972/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP20R" package="TP20R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27973/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP13SQ" package="TP13SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27974/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP14SQ" package="TP14SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27984/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP15SQ" package="TP15SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27975/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP16SQ" package="TP16SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27976/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP17SQ" package="TP17SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27977/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP18SQ" package="TP18SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27979/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP19SQ" package="TP19SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27978/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP20SQ" package="TP20SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27980/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="5227222-3">
<description>&lt;Body Features: Body Material Finish Passivated | Body Plating Material Nickel | Body Material Polyester, PBT | Configuration Features: Number of Coaxial Contacts 1 | PCB Mount Orientation Vertical | Number of Positions 1 | Contact Features: RF Connector Center Contact Material Phosphor Bronze | RF Connector Center Contact Plating Thickness 889 MICIN | RF Connector Center Contact Underplating Material Nickel | RF Connector Center Contact Plating Material Gold | Dimensions: Profile Height from PCB 1.375 INCH &lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="52272223">
<description>&lt;b&gt;5227222-3-1&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="0.97" diameter="1.509"/>
<pad name="2" x="-2.54" y="0" drill="0.97" diameter="1.509"/>
<hole x="5.08" y="5.08" drill="2.09"/>
<hole x="-5.08" y="-5.08" drill="2.09"/>
<text x="0" y="-0.105" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-0.105" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-7.38" y1="-8.56" x2="7.38" y2="-8.56" width="0.2" layer="51"/>
<wire x1="7.38" y1="-8.56" x2="7.38" y2="7.32" width="0.2" layer="51"/>
<wire x1="7.38" y1="7.32" x2="-7.38" y2="7.32" width="0.2" layer="51"/>
<wire x1="-7.38" y1="7.32" x2="-7.38" y2="-8.56" width="0.2" layer="51"/>
<wire x1="-7.38" y1="7.32" x2="7.38" y2="7.32" width="0.1" layer="21"/>
<wire x1="7.38" y1="7.32" x2="7.38" y2="-8.56" width="0.1" layer="21"/>
<wire x1="7.38" y1="-8.56" x2="-7.38" y2="-8.56" width="0.1" layer="21"/>
<wire x1="-7.38" y1="-8.56" x2="-7.38" y2="7.32" width="0.1" layer="21"/>
<wire x1="-8.38" y1="9.35" x2="8.38" y2="9.35" width="0.1" layer="51"/>
<wire x1="8.38" y1="9.35" x2="8.38" y2="-9.56" width="0.1" layer="51"/>
<wire x1="8.38" y1="-9.56" x2="-8.38" y2="-9.56" width="0.1" layer="51"/>
<wire x1="-8.38" y1="-9.56" x2="-8.38" y2="9.35" width="0.1" layer="51"/>
<wire x1="-0.1" y1="8.3" x2="-0.1" y2="8.3" width="0.2" layer="21"/>
<wire x1="-0.1" y1="8.3" x2="0" y2="8.3" width="0.2" layer="21" curve="180"/>
<wire x1="0" y1="8.3" x2="0" y2="8.3" width="0.2" layer="21"/>
<wire x1="0" y1="8.3" x2="-0.1" y2="8.3" width="0.2" layer="21" curve="180"/>
<wire x1="-0.1" y1="8.3" x2="-0.1" y2="8.3" width="0.2" layer="21"/>
<wire x1="-0.1" y1="8.3" x2="0" y2="8.3" width="0.2" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="5227222-3">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="-2.54" length="middle"/>
<pin name="2" x="0" y="0" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="5227222-3" prefix="J">
<description>&lt;b&gt;Body Features: Body Material Finish Passivated | Body Plating Material Nickel | Body Material Polyester, PBT | Configuration Features: Number of Coaxial Contacts 1 | PCB Mount Orientation Vertical | Number of Positions 1 | Contact Features: RF Connector Center Contact Material Phosphor Bronze | RF Connector Center Contact Plating Thickness 889 MICIN | RF Connector Center Contact Underplating Material Nickel | RF Connector Center Contact Plating Material Gold | Dimensions: Profile Height from PCB 1.375 INCH &lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&amp;DocNm=1307191_BNC_Connectors&amp;DocType=Catalog Section&amp;DocLang=English&amp;PartCntxt=5227222-3&amp;DocFormat=pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="5227222-3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="52272223">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Body Features: Body Material Finish Passivated | Body Plating Material Nickel | Body Material Polyester, PBT | Configuration Features: Number of Coaxial Contacts 1 | PCB Mount Orientation Vertical | Number of Positions 1 | Contact Features: RF Connector Center Contact Material Phosphor Bronze | RF Connector Center Contact Plating Thickness 889 MICIN | RF Connector Center Contact Underplating Material Nickel | RF Connector Center Contact Plating Material Gold | Dimensions: Profile Height from PCB 1.375 INCH " constant="no"/>
<attribute name="HEIGHT" value="35.57mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TE Connectivity" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="5227222-3" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="571-5227222-3" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/TE-Connectivity/5227222-3?qs=GSeC4G%252BEqEW87SYw9J0%252BtA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper" urn="urn:adsk.eagle:library:252">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SJ_2W" urn="urn:adsk.eagle:footprint:15438/1" library_version="2">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="3.175" y1="-1.524" x2="-3.175" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.524" x2="3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.429" y1="1.27" x2="-3.175" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.429" y1="-1.27" x2="-3.175" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="3.175" y1="-1.524" x2="3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="3.429" y1="-1.27" x2="3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.524" x2="3.175" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="0" x2="-3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0" y1="0.762" x2="0" y2="1.397" width="0.1524" layer="51"/>
<wire x1="0" y1="-1.397" x2="0" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="2.032" y1="0.127" x2="2.032" y2="-0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<wire x1="-2.032" y1="-0.127" x2="-2.032" y2="0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<smd name="1" x="-2.54" y="0" dx="1.27" dy="2.54" layer="1"/>
<smd name="2" x="0" y="0" dx="1.27" dy="2.54" layer="1"/>
<smd name="3" x="2.54" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="-3.429" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.1001" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="-0.508" y1="-0.762" x2="0.508" y2="0.762" layer="51"/>
</package>
<package name="SJ_2" urn="urn:adsk.eagle:footprint:15439/1" library_version="2">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="2.159" y1="-1.016" x2="-2.159" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.016" x2="2.413" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="0.762" x2="-2.159" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="-0.762" x2="-2.159" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.159" y1="-1.016" x2="2.413" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.413" y1="-0.762" x2="2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-0.762" x2="-2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.016" x2="2.159" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0" x2="-2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="0" y1="0.762" x2="0" y2="1.016" width="0.1524" layer="51"/>
<wire x1="0" y1="-1.016" x2="0" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.127" x2="1.016" y2="-0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<wire x1="-1.016" y1="-0.127" x2="-1.016" y2="0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<smd name="1" x="-1.524" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<smd name="2" x="0" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<smd name="3" x="1.524" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<text x="-2.413" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.1001" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="-0.508" y1="-0.762" x2="0.508" y2="0.762" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="SJ_2W" urn="urn:adsk.eagle:package:15476/1" type="box" library_version="2">
<description>Solder jumper</description>
<packageinstances>
<packageinstance name="SJ_2W"/>
</packageinstances>
</package3d>
<package3d name="SJ_2" urn="urn:adsk.eagle:package:15474/1" type="box" library_version="2">
<description>Solder jumper</description>
<packageinstances>
<packageinstance name="SJ_2"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="SJ_2" urn="urn:adsk.eagle:symbol:15437/1" library_version="2">
<wire x1="-0.635" y1="-1.397" x2="0.635" y2="-1.397" width="1.27" layer="94" curve="180" cap="flat"/>
<wire x1="-0.635" y1="1.397" x2="0.635" y2="1.397" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="1.27" y1="-0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<text x="2.54" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-1.27" y1="-0.635" x2="1.27" y2="0.635" layer="94"/>
<pin name="3" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SJ2W" urn="urn:adsk.eagle:component:15505/2" prefix="SJ" uservalue="yes" library_version="2">
<description>SMD solder &lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="SJ_2" x="0" y="0"/>
</gates>
<devices>
<device name="W" package="SJ_2W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15476/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="" package="SJ_2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15474/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SCA3300-D01-1">
<packages>
<package name="SCA3300">
<description>&lt;b&gt;SCA3300&lt;/b&gt;&lt;br&gt;
</description>
<text x="-0.299" y="-0.017" size="1.27" layer="27" align="center">&gt;VALUE</text>
<text x="-0.299" y="-0.017" size="1.27" layer="25" align="center">&gt;NAME</text>
<wire x1="-4.3" y1="3.5" x2="4.3" y2="3.5" width="0.2" layer="51"/>
<wire x1="4.3" y1="3.5" x2="4.3" y2="-3.5" width="0.2" layer="51"/>
<wire x1="4.3" y1="-3.5" x2="-4.3" y2="-3.5" width="0.2" layer="51"/>
<wire x1="-4.3" y1="-3.5" x2="-4.3" y2="3.5" width="0.2" layer="51"/>
<wire x1="-4.3" y1="-3.5" x2="-4.3" y2="3.5" width="0.2" layer="21"/>
<wire x1="4.3" y1="3.5" x2="4.3" y2="-3.5" width="0.2" layer="21"/>
<circle x="-2.492" y="-4.839" radius="0.06093125" width="0.2" layer="25"/>
<smd name="1" x="-2.5" y="-3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="2" x="-1.5" y="-3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="3" x="-0.5" y="-3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="4" x="0.5" y="-3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="5" x="1.5" y="-3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="6" x="2.5" y="-3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="7" x="2.5" y="3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="8" x="1.5" y="3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="9" x="0.5" y="3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="10" x="-0.5" y="3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="11" x="-1.5" y="3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
<smd name="12" x="-2.5" y="3.935" dx="0.98" dy="0.61" layer="1" rot="R90"/>
</package>
</packages>
<symbols>
<symbol name="SCA3300-D01-1">
<wire x1="5.08" y1="2.54" x2="30.48" y2="2.54" width="0.254" layer="94"/>
<wire x1="30.48" y1="-15.24" x2="30.48" y2="2.54" width="0.254" layer="94"/>
<wire x1="30.48" y1="-15.24" x2="5.08" y2="-15.24" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-15.24" width="0.254" layer="94"/>
<text x="31.75" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="31.75" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="AVSS" x="0" y="0" length="middle"/>
<pin name="A_EXTC" x="0" y="-2.54" length="middle"/>
<pin name="REERVED" x="0" y="-5.08" length="middle"/>
<pin name="VDD" x="0" y="-7.62" length="middle"/>
<pin name="CSB" x="0" y="-10.16" length="middle"/>
<pin name="MISO" x="0" y="-12.7" length="middle"/>
<pin name="MOSI" x="35.56" y="0" length="middle" rot="R180"/>
<pin name="SCK" x="35.56" y="-2.54" length="middle" rot="R180"/>
<pin name="DVIO" x="35.56" y="-5.08" length="middle" rot="R180"/>
<pin name="D_EXTC" x="35.56" y="-7.62" length="middle" rot="R180"/>
<pin name="DVSS" x="35.56" y="-10.16" length="middle" rot="R180"/>
<pin name="EMC_GND" x="35.56" y="-12.7" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SCA3300-D01-1" prefix="AC">
<description>&lt;b&gt;Murata SCA3300-D01-1, 3-Axis Accelerometer, +/-1.5  +/-6g, 3  3.6 V, SPI, DFL/SMD 12-Pin&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.murata.com/~/media/webrenewal/products/sensor/accel/sca3300/sca3300-d01 industrial 3-axis accelerometer datasheet _a1.ashx"&gt; Datasheet &lt;/a&gt; &lt;a href="https://pricing.snapeda.com/parts/SCA3300-D01-1/Murata%20Electronics/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="SCA3300-D01-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SCA3300">
<connects>
<connect gate="G$1" pin="AVSS" pad="1"/>
<connect gate="G$1" pin="A_EXTC" pad="2"/>
<connect gate="G$1" pin="CSB" pad="5"/>
<connect gate="G$1" pin="DVIO" pad="9"/>
<connect gate="G$1" pin="DVSS" pad="11"/>
<connect gate="G$1" pin="D_EXTC" pad="10"/>
<connect gate="G$1" pin="EMC_GND" pad="12"/>
<connect gate="G$1" pin="MISO" pad="6"/>
<connect gate="G$1" pin="MOSI" pad="7"/>
<connect gate="G$1" pin="REERVED" pad="3"/>
<connect gate="G$1" pin="SCK" pad="8"/>
<connect gate="G$1" pin="VDD" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="DESCRIPTION" value=" Accelerometer X, Y, Z Axis ±1.5g, 3g, 6g - - "/>
<attribute name="MF" value="Murata Electronics"/>
<attribute name="MP" value="SCA3300-D01-1"/>
<attribute name="PACKAGE" value="Nonstandard Murata"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/SCA3300-D01-1/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SFH6916">
<description>&lt;Optocoupler DC-IN 4-CH Trans DC-OUT&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOIC127P700X230-16N">
<description>&lt;b&gt;SSOP-16&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-3.2" y="4.445" dx="1.65" dy="0.65" layer="1"/>
<smd name="2" x="-3.2" y="3.175" dx="1.65" dy="0.65" layer="1"/>
<smd name="3" x="-3.2" y="1.905" dx="1.65" dy="0.65" layer="1"/>
<smd name="4" x="-3.2" y="0.635" dx="1.65" dy="0.65" layer="1"/>
<smd name="5" x="-3.2" y="-0.635" dx="1.65" dy="0.65" layer="1"/>
<smd name="6" x="-3.2" y="-1.905" dx="1.65" dy="0.65" layer="1"/>
<smd name="7" x="-3.2" y="-3.175" dx="1.65" dy="0.65" layer="1"/>
<smd name="8" x="-3.2" y="-4.445" dx="1.65" dy="0.65" layer="1"/>
<smd name="9" x="3.2" y="-4.445" dx="1.65" dy="0.65" layer="1"/>
<smd name="10" x="3.2" y="-3.175" dx="1.65" dy="0.65" layer="1"/>
<smd name="11" x="3.2" y="-1.905" dx="1.65" dy="0.65" layer="1"/>
<smd name="12" x="3.2" y="-0.635" dx="1.65" dy="0.65" layer="1"/>
<smd name="13" x="3.2" y="0.635" dx="1.65" dy="0.65" layer="1"/>
<smd name="14" x="3.2" y="1.905" dx="1.65" dy="0.65" layer="1"/>
<smd name="15" x="3.2" y="3.175" dx="1.65" dy="0.65" layer="1"/>
<smd name="16" x="3.2" y="4.445" dx="1.65" dy="0.65" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-4.275" y1="5.525" x2="4.275" y2="5.525" width="0.05" layer="51"/>
<wire x1="4.275" y1="5.525" x2="4.275" y2="-5.525" width="0.05" layer="51"/>
<wire x1="4.275" y1="-5.525" x2="-4.275" y2="-5.525" width="0.05" layer="51"/>
<wire x1="-4.275" y1="-5.525" x2="-4.275" y2="5.525" width="0.05" layer="51"/>
<wire x1="-2.2" y1="5.275" x2="2.2" y2="5.275" width="0.1" layer="51"/>
<wire x1="2.2" y1="5.275" x2="2.2" y2="-5.275" width="0.1" layer="51"/>
<wire x1="2.2" y1="-5.275" x2="-2.2" y2="-5.275" width="0.1" layer="51"/>
<wire x1="-2.2" y1="-5.275" x2="-2.2" y2="5.275" width="0.1" layer="51"/>
<wire x1="-2.2" y1="4.005" x2="-0.93" y2="5.275" width="0.1" layer="51"/>
<wire x1="-2.025" y1="5.275" x2="2.025" y2="5.275" width="0.2" layer="21"/>
<wire x1="2.025" y1="5.275" x2="2.025" y2="-5.275" width="0.2" layer="21"/>
<wire x1="2.025" y1="-5.275" x2="-2.025" y2="-5.275" width="0.2" layer="21"/>
<wire x1="-2.025" y1="-5.275" x2="-2.025" y2="5.275" width="0.2" layer="21"/>
<wire x1="-4.025" y1="5.12" x2="-2.375" y2="5.12" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="SFH6916">
<wire x1="5.08" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-20.32" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-20.32" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<text x="21.59" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="21.59" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="A_1" x="0" y="0" length="middle"/>
<pin name="K_1" x="0" y="-2.54" length="middle"/>
<pin name="A_2" x="0" y="-5.08" length="middle"/>
<pin name="K_2" x="0" y="-7.62" length="middle"/>
<pin name="A_3" x="0" y="-10.16" length="middle"/>
<pin name="K_3" x="0" y="-12.7" length="middle"/>
<pin name="A_4" x="0" y="-15.24" length="middle"/>
<pin name="K_4" x="0" y="-17.78" length="middle"/>
<pin name="C_4" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="E_4" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="C_3" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="E_3" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="C_2" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="E_2" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="C_1" x="25.4" y="-15.24" length="middle" rot="R180"/>
<pin name="E_1" x="25.4" y="-17.78" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SFH6916" prefix="IC">
<description>&lt;b&gt;Optocoupler DC-IN 4-CH Trans DC-OUT&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://www.vishay.com/docs/83687/sfh6916.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="SFH6916" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P700X230-16N">
<connects>
<connect gate="G$1" pin="A_1" pad="1"/>
<connect gate="G$1" pin="A_2" pad="3"/>
<connect gate="G$1" pin="A_3" pad="5"/>
<connect gate="G$1" pin="A_4" pad="7"/>
<connect gate="G$1" pin="C_1" pad="10"/>
<connect gate="G$1" pin="C_2" pad="12"/>
<connect gate="G$1" pin="C_3" pad="14"/>
<connect gate="G$1" pin="C_4" pad="16"/>
<connect gate="G$1" pin="E_1" pad="9"/>
<connect gate="G$1" pin="E_2" pad="11"/>
<connect gate="G$1" pin="E_3" pad="13"/>
<connect gate="G$1" pin="E_4" pad="15"/>
<connect gate="G$1" pin="K_1" pad="2"/>
<connect gate="G$1" pin="K_2" pad="4"/>
<connect gate="G$1" pin="K_3" pad="6"/>
<connect gate="G$1" pin="K_4" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Optocoupler DC-IN 4-CH Trans DC-OUT" constant="no"/>
<attribute name="HEIGHT" value="2.3mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Vishay" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="SFH6916" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="782-SFH6916" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Vishay-Semiconductors/SFH6916?qs=xCMk%252BIHWTZMHOsdqeojy6Q%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="NCP51460SN33T1G">
<description>&lt;Operating Input Voltage VIN 4.2 V to 28 V; Output Current Capability of 0 to 20 mA; Output Voltage Temperature Coefficient of 18 ppm/C; Output Voltage Accuracy 1 %, for 0 C TA 100 C ; High PSRR of 68 dB at 1 kHz; Stable Without Output Capacitor; Low Quiescent Current of 140 A; Low Output Noise of 18 VRMS; Output Voltage Option: 3.3V&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOT96P237X111-3N">
<description>&lt;b&gt;SOT-23 (TO-236) CASE 318-08&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.2" y="0.955" dx="1" dy="0.6" layer="1"/>
<smd name="2" x="-1.2" y="-0.955" dx="1" dy="0.6" layer="1"/>
<smd name="3" x="1.2" y="0" dx="1" dy="0.6" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.95" y1="1.77" x2="1.95" y2="1.77" width="0.05" layer="51"/>
<wire x1="1.95" y1="1.77" x2="1.95" y2="-1.77" width="0.05" layer="51"/>
<wire x1="1.95" y1="-1.77" x2="-1.95" y2="-1.77" width="0.05" layer="51"/>
<wire x1="-1.95" y1="-1.77" x2="-1.95" y2="1.77" width="0.05" layer="51"/>
<wire x1="-0.65" y1="1.46" x2="0.65" y2="1.46" width="0.1" layer="51"/>
<wire x1="0.65" y1="1.46" x2="0.65" y2="-1.46" width="0.1" layer="51"/>
<wire x1="0.65" y1="-1.46" x2="-0.65" y2="-1.46" width="0.1" layer="51"/>
<wire x1="-0.65" y1="-1.46" x2="-0.65" y2="1.46" width="0.1" layer="51"/>
<wire x1="-0.65" y1="0.505" x2="0.305" y2="1.46" width="0.1" layer="51"/>
<wire x1="-0.35" y1="1.46" x2="0.35" y2="1.46" width="0.2" layer="21"/>
<wire x1="0.35" y1="1.46" x2="0.35" y2="-1.46" width="0.2" layer="21"/>
<wire x1="0.35" y1="-1.46" x2="-0.35" y2="-1.46" width="0.2" layer="21"/>
<wire x1="-0.35" y1="-1.46" x2="-0.35" y2="1.46" width="0.2" layer="21"/>
<wire x1="-1.7" y1="1.505" x2="-0.7" y2="1.505" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="NCP51460SN33T1G">
<wire x1="5.08" y1="2.54" x2="22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="22.86" y1="-5.08" x2="22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="22.86" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="24.13" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="24.13" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="VIN" x="0" y="0" length="middle" direction="in"/>
<pin name="VOUT" x="0" y="-2.54" length="middle" direction="out"/>
<pin name="GND" x="27.94" y="0" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NCP51460SN33T1G" prefix="IC">
<description>&lt;b&gt;Operating Input Voltage VIN 4.2 V to 28 V; Output Current Capability of 0 to 20 mA; Output Voltage Temperature Coefficient of 18 ppm/C; Output Voltage Accuracy 1 %, for 0 C TA 100 C ; High PSRR of 68 dB at 1 kHz; Stable Without Output Capacitor; Low Quiescent Current of 140 A; Low Output Noise of 18 VRMS; Output Voltage Option: 3.3V&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.onsemi.com/pub/Collateral/NCP51460-D.PDF"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="NCP51460SN33T1G" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT96P237X111-3N">
<connects>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="VIN" pad="1"/>
<connect gate="G$1" pin="VOUT" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Operating Input Voltage VIN 4.2 V to 28 V; Output Current Capability of 0 to 20 mA; Output Voltage Temperature Coefficient of 18 ppm/C; Output Voltage Accuracy 1 %, for 0 C TA 100 C ; High PSRR of 68 dB at 1 kHz; Stable Without Output Capacitor; Low Quiescent Current of 140 A; Low Output Noise of 18 VRMS; Output Voltage Option: 3.3V" constant="no"/>
<attribute name="HEIGHT" value="1.11mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="onsemi" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="NCP51460SN33T1G" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="863-NCP51460SN33T1G" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/onsemi/NCP51460SN33T1G?qs=yYCK2ysgWqmLP%2FSKTB%252Bdng%3D%3D" constant="no"/>
</technology>
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
<class number="0" name="default" width="0" drill="0">
</class>
<class number="1" name="current" width="0.2032" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="pic32A" deviceset="PIC32AK1216GC41064-E/PT" device=""/>
<part name="GLCD" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA10-1" device="" package3d_urn="urn:adsk.eagle:package:8346/1" value="GLCD"/>
<part name="VSS1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C1" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="1000pf"/>
<part name="C2" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="1000pf"/>
<part name="C3" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="1000pf"/>
<part name="C4" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="1000pf"/>
<part name="C5" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="1000pf"/>
<part name="C6" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="1000pf"/>
<part name="E1" library="LI0603G121R-10" deviceset="LI0603G121R-10" device=""/>
<part name="VSS2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C7" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="C8" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="C9" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="C10" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="C11" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="C12" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="Y1" library="KC2520Z8.00000C1KX00" deviceset="KC2520Z8.00000C1KX00" device=""/>
<part name="C13" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="VSS4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C14" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="1000pf"/>
<part name="C15" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="VDD4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="R1" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="100 ohm"/>
<part name="R2" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="10K ohm"/>
<part name="C16" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="1000pf"/>
<part name="VSS11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U2" library="iss66" deviceset="IS66WVS4M8BLL-104NLI" device=""/>
<part name="IC1" library="NCP1117LPST33T3G" deviceset="NCP1117LPST33T3G" device=""/>
<part name="VSS12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C17" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="10uf"/>
<part name="C18" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="10uf"/>
<part name="VSS13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C19" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="10uf"/>
<part name="C20" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="10uf"/>
<part name="VSS16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="ICSP" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X6" device="/90" package3d_urn="urn:adsk.eagle:package:22475/2" value="ICSP"/>
<part name="R3" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="1K ohm"/>
<part name="VDD10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="POWER" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LED" device="CHIP-LED0603" package3d_urn="urn:adsk.eagle:package:15819/3" value="POWER"/>
<part name="VSS15" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="LED2" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LED" device="CHIP-LED0603" package3d_urn="urn:adsk.eagle:package:15819/3" value="rled"/>
<part name="LED3" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LED" device="CHIP-LED0603" package3d_urn="urn:adsk.eagle:package:15819/3" value="dled"/>
<part name="LED4" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LED" device="CHIP-LED0603" package3d_urn="urn:adsk.eagle:package:15819/3" value="hled"/>
<part name="VSS17" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS18" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS19" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="R4" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="1K ohm"/>
<part name="R5" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="1K ohm"/>
<part name="R6" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="1K ohm"/>
<part name="MISC_ANA" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X6" device="/90" package3d_urn="urn:adsk.eagle:package:22475/2" value="MISC_ANA"/>
<part name="VIN_5+" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2021" device="" package3d_urn="urn:adsk.eagle:package:8078633/1"/>
<part name="VSS20" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="FUSE" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="0 ohm"/>
<part name="J1" library="CONBNC001" deviceset="CONBNC001" device=""/>
<part name="J2" library="CONBNC001" deviceset="CONBNC001" device=""/>
<part name="J3" library="CONBNC001" deviceset="CONBNC001" device=""/>
<part name="J4" library="CONBNC001" deviceset="CONBNC001" device=""/>
<part name="VSS21" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="R7" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="50 ohm"/>
<part name="R8" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="50 ohm"/>
<part name="R9" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="50 ohm"/>
<part name="R10" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="50 ohm"/>
<part name="VSS22" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS23" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS24" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS25" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="RESET_SW" library="PTS635SL50LFS" deviceset="PTS635SL50LFS" device=""/>
<part name="VSS26" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="TP1" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP2" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP3_VSS" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP4" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP5" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP6" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TEST_P0" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-20" package3d_urn="urn:adsk.eagle:package:27950/1"/>
<part name="TP10" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-20" package3d_urn="urn:adsk.eagle:package:27950/1"/>
<part name="TP11" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-20" package3d_urn="urn:adsk.eagle:package:27950/1"/>
<part name="TP12" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-20" package3d_urn="urn:adsk.eagle:package:27950/1"/>
<part name="R_RESET" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-?-02" device="27-2021" package3d_urn="urn:adsk.eagle:package:8078645/1"/>
<part name="VSS27" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="TP13" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP15" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="VDD11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="TP16" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP17" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP18" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="VSS28" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="J5" library="5227222-3" deviceset="5227222-3" device=""/>
<part name="TP7" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP8" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="SJ1" library="jumper" library_urn="urn:adsk.eagle:library:252" deviceset="SJ2W" device="" package3d_urn="urn:adsk.eagle:package:15474/1" value="QEI Voltage"/>
<part name="ENCODER" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X6" device="/90" package3d_urn="urn:adsk.eagle:package:22475/2" value="Encoder"/>
<part name="VDD12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS29" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="AC1" library="SCA3300-D01-1" deviceset="SCA3300-D01-1" device=""/>
<part name="C21" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="C22" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="VSS30" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS31" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C23" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="1000pf"/>
<part name="C24" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="C25" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="10uf"/>
<part name="VDD13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS32" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C26" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="VSS33" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="IC2" library="SFH6916" deviceset="SFH6916" device=""/>
<part name="ISO1_R" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="330 ohm"/>
<part name="ISO1_R1" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="330 ohm"/>
<part name="ISO1_R3" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="2.2k ohm"/>
<part name="ISO1_R2" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="2.2k ohm"/>
<part name="U1_TTL" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA04-1" device="" package3d_urn="urn:adsk.eagle:package:8337/1" value="U1_TTL"/>
<part name="VSS34" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="ISO_IO" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA10-1" device="" package3d_urn="urn:adsk.eagle:package:8346/1" value="ISO_IO"/>
<part name="VSS35" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="SW1" library="PTS635SL50LFS" deviceset="PTS635SL50LFS" device=""/>
<part name="SW2" library="PTS635SL50LFS" deviceset="PTS635SL50LFS" device=""/>
<part name="VSS36" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS37" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="PWM" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA10-1" device="" package3d_urn="urn:adsk.eagle:package:8346/1" value="PWM"/>
<part name="VSS38" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="TP9" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP14" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP19" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP20" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP21" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP22" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP23" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="TP24" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-13" package3d_urn="urn:adsk.eagle:package:27946/1"/>
<part name="VSS39" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="IC3" library="NCP51460SN33T1G" deviceset="NCP51460SN33T1G" device=""/>
<part name="VSS40" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="AVDD_JUMPER" library="jumper" library_urn="urn:adsk.eagle:library:252" deviceset="SJ2W" device="" package3d_urn="urn:adsk.eagle:package:15474/1" value="AVDD JUMPER"/>
<part name="C27" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="VSS41" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C28" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="VSS42" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="USBC-PWR" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA04-1" device="" package3d_urn="urn:adsk.eagle:package:8337/1" value="USBC-PWR"/>
<part name="VSS43" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="R11" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0603" package3d_urn="urn:adsk.eagle:package:23555/3" value="50 ohm"/>
<part name="R12" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0603" package3d_urn="urn:adsk.eagle:package:23555/3" value="50 ohm"/>
<part name="R13" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0603" package3d_urn="urn:adsk.eagle:package:23555/3" value="50 ohm"/>
<part name="C29" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="VSS44" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="TEST_P1" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="PTR1" device="PAD1-20" package3d_urn="urn:adsk.eagle:package:27950/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="76.2" y="45.72" smashed="yes">
<attribute name="NAME" x="180.6956" y="54.8386" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="180.0606" y="52.2986" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="GLCD" gate="1" x="124.46" y="-63.5" smashed="yes">
<attribute name="VALUE" x="123.19" y="-78.74" size="1.778" layer="96"/>
<attribute name="NAME" x="123.19" y="-47.498" size="1.778" layer="95"/>
</instance>
<instance part="VSS1" gate="G$1" x="149.86" y="-53.34" smashed="yes" rot="R180">
<attribute name="VALUE" x="152.4" y="-53.34" size="1.778" layer="96"/>
</instance>
<instance part="VDD1" gate="G$1" x="152.4" y="-55.88" smashed="yes">
<attribute name="VALUE" x="160.02" y="-55.88" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS3" gate="G$1" x="76.2" y="78.74" smashed="yes">
<attribute name="VALUE" x="73.66" y="78.74" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS5" gate="G$1" x="289.56" y="81.28" smashed="yes">
<attribute name="VALUE" x="287.02" y="81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS6" gate="G$1" x="307.34" y="81.28" smashed="yes">
<attribute name="VALUE" x="304.8" y="81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS7" gate="G$1" x="325.12" y="81.28" smashed="yes">
<attribute name="VALUE" x="322.58" y="81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS8" gate="G$1" x="58.42" y="78.74" smashed="yes">
<attribute name="VALUE" x="55.88" y="78.74" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VDD2" gate="G$1" x="50.8" y="78.74" smashed="yes" rot="R180">
<attribute name="VALUE" x="43.18" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="VDD3" gate="G$1" x="68.58" y="78.74" smashed="yes" rot="R180">
<attribute name="VALUE" x="60.96" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="VDD5" gate="G$1" x="281.94" y="81.28" smashed="yes" rot="R180">
<attribute name="VALUE" x="274.32" y="81.28" size="1.778" layer="96"/>
</instance>
<instance part="VDD6" gate="G$1" x="299.72" y="81.28" smashed="yes" rot="R180">
<attribute name="VALUE" x="292.1" y="81.28" size="1.778" layer="96"/>
</instance>
<instance part="VDD7" gate="G$1" x="317.5" y="81.28" smashed="yes" rot="R180">
<attribute name="VALUE" x="309.88" y="81.28" size="1.778" layer="96"/>
</instance>
<instance part="C1" gate="G$1" x="53.34" y="81.28" smashed="yes" rot="R90">
<attribute name="NAME" x="52.705" y="82.296" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="57.531" y="82.296" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C2" gate="G$1" x="71.12" y="81.28" smashed="yes" rot="R90">
<attribute name="NAME" x="70.485" y="82.296" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="75.311" y="82.296" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C3" gate="G$1" x="88.9" y="81.28" smashed="yes" rot="R90">
<attribute name="NAME" x="88.265" y="82.296" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="93.091" y="82.296" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C4" gate="G$1" x="284.48" y="83.82" smashed="yes" rot="R90">
<attribute name="NAME" x="283.845" y="84.836" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="288.671" y="84.836" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C5" gate="G$1" x="302.26" y="83.82" smashed="yes" rot="R90">
<attribute name="NAME" x="301.625" y="84.836" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="306.451" y="84.836" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C6" gate="G$1" x="320.04" y="83.82" smashed="yes" rot="R90">
<attribute name="NAME" x="319.405" y="84.836" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="324.231" y="84.836" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="E1" gate="G$1" x="86.36" y="109.22" smashed="yes">
<attribute name="NAME" x="78.735559375" y="114.30148125" size="2.54148125" layer="95"/>
<attribute name="VALUE" x="78.73003125" y="101.593359375" size="2.54331875" layer="96"/>
</instance>
<instance part="VSS2" gate="G$1" x="93.98" y="78.74" smashed="yes">
<attribute name="VALUE" x="91.44" y="78.74" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C7" gate="G$1" x="55.88" y="93.98" smashed="yes" rot="MR90">
<attribute name="NAME" x="56.515" y="94.996" size="1.778" layer="95" rot="MR90"/>
<attribute name="VALUE" x="51.689" y="94.996" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="C8" gate="G$1" x="73.66" y="93.98" smashed="yes" rot="MR90">
<attribute name="NAME" x="74.295" y="94.996" size="1.778" layer="95" rot="MR90"/>
<attribute name="VALUE" x="69.469" y="94.996" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="C9" gate="G$1" x="91.44" y="93.98" smashed="yes" rot="MR90">
<attribute name="NAME" x="92.075" y="94.996" size="1.778" layer="95" rot="MR90"/>
<attribute name="VALUE" x="87.249" y="94.996" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="C10" gate="G$1" x="287.02" y="96.52" smashed="yes" rot="MR90">
<attribute name="NAME" x="287.655" y="97.536" size="1.778" layer="95" rot="MR90"/>
<attribute name="VALUE" x="282.829" y="97.536" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="C11" gate="G$1" x="304.8" y="96.52" smashed="yes" rot="MR90">
<attribute name="NAME" x="305.435" y="97.536" size="1.778" layer="95" rot="MR90"/>
<attribute name="VALUE" x="300.609" y="97.536" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="C12" gate="G$1" x="322.58" y="96.52" smashed="yes" rot="MR90">
<attribute name="NAME" x="323.215" y="97.536" size="1.778" layer="95" rot="MR90"/>
<attribute name="VALUE" x="318.389" y="97.536" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="Y1" gate="G$1" x="154.94" y="88.9" smashed="yes">
<attribute name="NAME" x="196.85" y="96.52" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="196.85" y="93.98" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C13" gate="G$1" x="149.86" y="86.36" smashed="yes" rot="MR0">
<attribute name="NAME" x="148.844" y="86.995" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="148.844" y="82.169" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="VSS4" gate="G$1" x="149.86" y="78.74" smashed="yes">
<attribute name="VALUE" x="147.32" y="78.74" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS9" gate="G$1" x="203.2" y="83.82" smashed="yes">
<attribute name="VALUE" x="200.66" y="83.82" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C14" gate="G$1" x="358.14" y="-68.58" smashed="yes" rot="R90">
<attribute name="NAME" x="357.505" y="-67.564" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="362.331" y="-67.564" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C15" gate="G$1" x="360.68" y="-55.88" smashed="yes" rot="MR90">
<attribute name="NAME" x="361.315" y="-54.864" size="1.778" layer="95" rot="MR90"/>
<attribute name="VALUE" x="356.489" y="-54.864" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="VDD4" gate="G$1" x="355.6" y="-71.12" smashed="yes" rot="R180">
<attribute name="VALUE" x="353.06" y="-73.66" size="1.778" layer="96"/>
</instance>
<instance part="VSS10" gate="G$1" x="363.22" y="-71.12" smashed="yes">
<attribute name="VALUE" x="370.84" y="-71.12" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R1" gate="G$1" x="302.26" y="58.42" smashed="yes">
<attribute name="NAME" x="298.45" y="59.9186" size="1.778" layer="95"/>
<attribute name="VALUE" x="298.45" y="55.118" size="1.778" layer="96"/>
</instance>
<instance part="R2" gate="G$1" x="307.34" y="63.5" smashed="yes" rot="R90">
<attribute name="NAME" x="305.8414" y="59.69" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="310.642" y="59.69" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C16" gate="G$1" x="307.34" y="55.88" smashed="yes">
<attribute name="NAME" x="308.356" y="56.515" size="1.778" layer="95"/>
<attribute name="VALUE" x="308.356" y="51.689" size="1.778" layer="96"/>
</instance>
<instance part="VSS11" gate="G$1" x="307.34" y="48.26" smashed="yes">
<attribute name="VALUE" x="304.8" y="48.26" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VDD8" gate="G$1" x="307.34" y="71.12" smashed="yes">
<attribute name="VALUE" x="314.96" y="71.12" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="U2" gate="A" x="271.78" y="-63.5" smashed="yes">
<attribute name="NAME" x="292.4556" y="-54.3814" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="291.8206" y="-56.9214" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="IC1" gate="G$1" x="48.26" y="-68.58" smashed="yes">
<attribute name="NAME" x="90.17" y="-60.96" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="90.17" y="-63.5" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="VSS12" gate="G$1" x="48.26" y="-66.04" smashed="yes" rot="R180">
<attribute name="VALUE" x="50.8" y="-66.04" size="1.778" layer="96"/>
</instance>
<instance part="C17" gate="G$1" x="43.18" y="-76.2" smashed="yes">
<attribute name="NAME" x="44.196" y="-75.565" size="1.778" layer="95"/>
<attribute name="VALUE" x="44.196" y="-80.391" size="1.778" layer="96"/>
</instance>
<instance part="C18" gate="G$1" x="30.48" y="-73.66" smashed="yes">
<attribute name="NAME" x="31.496" y="-73.025" size="1.778" layer="95"/>
<attribute name="VALUE" x="31.496" y="-77.851" size="1.778" layer="96"/>
</instance>
<instance part="VSS13" gate="G$1" x="43.18" y="-83.82" smashed="yes">
<attribute name="VALUE" x="40.64" y="-83.82" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS14" gate="G$1" x="30.48" y="-81.28" smashed="yes">
<attribute name="VALUE" x="27.94" y="-81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C19" gate="G$1" x="360.68" y="-43.18" smashed="yes" rot="R270">
<attribute name="NAME" x="361.315" y="-44.196" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="356.489" y="-44.196" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="C20" gate="G$1" x="114.3" y="-50.8" smashed="yes">
<attribute name="NAME" x="115.316" y="-50.165" size="1.778" layer="95"/>
<attribute name="VALUE" x="115.316" y="-54.991" size="1.778" layer="96"/>
</instance>
<instance part="VSS16" gate="G$1" x="114.3" y="-58.42" smashed="yes">
<attribute name="VALUE" x="111.76" y="-58.42" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VDD9" gate="G$1" x="114.3" y="-45.72" smashed="yes">
<attribute name="VALUE" x="121.92" y="-45.72" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="ICSP" gate="A" x="20.32" y="86.36" smashed="yes" rot="R180">
<attribute name="NAME" x="26.67" y="75.565" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="26.67" y="96.52" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R3" gate="G$1" x="233.68" y="88.9" smashed="yes" rot="R90">
<attribute name="NAME" x="232.1814" y="85.09" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="236.982" y="85.09" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD10" gate="G$1" x="233.68" y="96.52" smashed="yes">
<attribute name="VALUE" x="241.3" y="96.52" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="POWER" gate="G$1" x="233.68" y="81.28" smashed="yes">
<attribute name="NAME" x="237.236" y="76.708" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="239.395" y="76.708" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS15" gate="G$1" x="233.68" y="73.66" smashed="yes">
<attribute name="VALUE" x="231.14" y="73.66" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED2" gate="G$1" x="241.3" y="81.28" smashed="yes">
<attribute name="NAME" x="244.856" y="76.708" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="247.015" y="76.708" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED3" gate="G$1" x="248.92" y="81.28" smashed="yes">
<attribute name="NAME" x="252.476" y="76.708" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="254.635" y="76.708" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED4" gate="G$1" x="256.54" y="81.28" smashed="yes">
<attribute name="NAME" x="260.096" y="76.708" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="262.255" y="76.708" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS17" gate="G$1" x="241.3" y="73.66" smashed="yes">
<attribute name="VALUE" x="238.76" y="73.66" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS18" gate="G$1" x="248.92" y="73.66" smashed="yes">
<attribute name="VALUE" x="246.38" y="73.66" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS19" gate="G$1" x="256.54" y="73.66" smashed="yes">
<attribute name="VALUE" x="254" y="73.66" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R4" gate="G$1" x="241.3" y="88.9" smashed="yes" rot="R90">
<attribute name="NAME" x="239.8014" y="85.09" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="244.602" y="85.09" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R5" gate="G$1" x="248.92" y="88.9" smashed="yes" rot="R90">
<attribute name="NAME" x="247.4214" y="85.09" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="252.222" y="85.09" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R6" gate="G$1" x="256.54" y="88.9" smashed="yes" rot="R90">
<attribute name="NAME" x="255.0414" y="85.09" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="259.842" y="85.09" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="MISC_ANA" gate="A" x="20.32" y="58.42" smashed="yes" rot="R180">
<attribute name="NAME" x="26.67" y="47.625" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="26.67" y="68.58" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VIN_5+" gate="-1" x="63.5" y="-88.9" smashed="yes" rot="R180">
<attribute name="NAME" x="60.96" y="-88.138" size="1.524" layer="95" rot="R180"/>
<attribute name="VALUE" x="64.262" y="-90.297" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VIN_5+" gate="-2" x="63.5" y="-86.36" smashed="yes" rot="R180">
<attribute name="NAME" x="60.96" y="-85.598" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="VSS20" gate="G$1" x="66.04" y="-91.44" smashed="yes">
<attribute name="VALUE" x="63.5" y="-91.44" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="FUSE" gate="G$1" x="78.74" y="-86.36" smashed="yes" rot="R180">
<attribute name="NAME" x="82.55" y="-87.8586" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="82.55" y="-83.058" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="J1" gate="G$1" x="15.24" y="33.02" smashed="yes">
<attribute name="NAME" x="31.75" y="40.64" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="31.75" y="38.1" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J2" gate="G$1" x="15.24" y="12.7" smashed="yes">
<attribute name="NAME" x="31.75" y="20.32" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="31.75" y="17.78" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J3" gate="G$1" x="15.24" y="-7.62" smashed="yes">
<attribute name="NAME" x="31.75" y="0" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="31.75" y="-2.54" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J4" gate="G$1" x="15.24" y="-27.94" smashed="yes">
<attribute name="NAME" x="31.75" y="-20.32" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="31.75" y="-22.86" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="VSS21" gate="G$1" x="35.56" y="-40.64" smashed="yes">
<attribute name="VALUE" x="33.02" y="-40.64" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R7" gate="G$1" x="5.08" y="27.94" smashed="yes" rot="R90">
<attribute name="NAME" x="3.5814" y="24.13" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="8.382" y="24.13" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R8" gate="G$1" x="5.08" y="7.62" smashed="yes" rot="R90">
<attribute name="NAME" x="3.5814" y="3.81" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="8.382" y="3.81" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R9" gate="G$1" x="5.08" y="-12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="3.5814" y="-16.51" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="8.382" y="-16.51" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R10" gate="G$1" x="5.08" y="-33.02" smashed="yes" rot="R90">
<attribute name="NAME" x="3.5814" y="-36.83" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="8.382" y="-36.83" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS22" gate="G$1" x="5.08" y="20.32" smashed="yes">
<attribute name="VALUE" x="2.54" y="20.32" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS23" gate="G$1" x="5.08" y="0" smashed="yes">
<attribute name="VALUE" x="2.54" y="0" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS24" gate="G$1" x="5.08" y="-20.32" smashed="yes">
<attribute name="VALUE" x="2.54" y="-20.32" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS25" gate="G$1" x="5.08" y="-40.64" smashed="yes">
<attribute name="VALUE" x="2.54" y="-40.64" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="RESET_SW" gate="G$1" x="276.86" y="60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="257.81" y="53.34" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="257.81" y="55.88" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="VSS26" gate="G$1" x="276.86" y="58.42" smashed="yes">
<attribute name="VALUE" x="274.32" y="58.42" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="TP1" gate="G$1" x="340.36" y="-71.12" smashed="yes" rot="R90">
<attribute name="NAME" x="349.25" y="-72.136" size="1.778" layer="95" rot="R180"/>
<attribute name="TP_SIGNAL_NAME" x="342.9" y="-69.85" size="1.778" layer="97" rot="R90"/>
</instance>
<instance part="TP2" gate="G$1" x="340.36" y="-68.58" smashed="yes" rot="R90">
<attribute name="NAME" x="349.25" y="-64.516" size="1.778" layer="95" rot="R180"/>
<attribute name="TP_SIGNAL_NAME" x="342.9" y="-67.31" size="1.778" layer="97" rot="R90"/>
</instance>
<instance part="TP3_VSS" gate="G$1" x="254" y="-71.12" smashed="yes" rot="R270">
<attribute name="NAME" x="234.95" y="-72.644" size="1.778" layer="95"/>
<attribute name="TP_SIGNAL_NAME" x="251.46" y="-72.39" size="1.778" layer="97" rot="R270"/>
</instance>
<instance part="TP4" gate="G$1" x="254" y="-66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="240.03" y="-65.024" size="1.778" layer="95"/>
<attribute name="TP_SIGNAL_NAME" x="251.46" y="-67.31" size="1.778" layer="97" rot="R270"/>
</instance>
<instance part="TP5" gate="G$1" x="254" y="-63.5" smashed="yes" rot="R270">
<attribute name="NAME" x="240.03" y="-62.484" size="1.778" layer="95"/>
<attribute name="TP_SIGNAL_NAME" x="251.46" y="-64.77" size="1.778" layer="97" rot="R270"/>
</instance>
<instance part="TP6" gate="G$1" x="218.44" y="88.9" smashed="yes" rot="R90">
<attribute name="NAME" x="224.79" y="87.884" size="1.778" layer="95" rot="R180"/>
<attribute name="TP_SIGNAL_NAME" x="220.98" y="90.17" size="1.778" layer="97" rot="R90"/>
</instance>
<instance part="TEST_P0" gate="G$1" x="256.54" y="111.76" smashed="yes" rot="R180">
<attribute name="NAME" x="257.556" y="118.11" size="1.778" layer="95" rot="R270"/>
<attribute name="TP_SIGNAL_NAME" x="255.27" y="114.3" size="1.778" layer="97" rot="R180"/>
</instance>
<instance part="TP10" gate="G$1" x="231.14" y="93.98" smashed="yes" rot="R270">
<attribute name="NAME" x="224.79" y="94.996" size="1.778" layer="95"/>
<attribute name="TP_SIGNAL_NAME" x="228.6" y="92.71" size="1.778" layer="97" rot="R270"/>
</instance>
<instance part="TP11" gate="G$1" x="231.14" y="76.2" smashed="yes" rot="R270">
<attribute name="NAME" x="224.79" y="77.216" size="1.778" layer="95"/>
<attribute name="TP_SIGNAL_NAME" x="228.6" y="74.93" size="1.778" layer="97" rot="R270"/>
</instance>
<instance part="TP12" gate="G$1" x="287.02" y="66.04" smashed="yes" rot="R180">
<attribute name="NAME" x="288.036" y="72.39" size="1.778" layer="95" rot="R270"/>
<attribute name="TP_SIGNAL_NAME" x="285.75" y="68.58" size="1.778" layer="97" rot="R180"/>
</instance>
<instance part="R_RESET" gate="-1" x="340.36" y="58.42" smashed="yes">
<attribute name="NAME" x="342.9" y="57.658" size="1.524" layer="95"/>
<attribute name="VALUE" x="339.598" y="59.817" size="1.778" layer="96"/>
</instance>
<instance part="R_RESET" gate="-2" x="340.36" y="53.34" smashed="yes">
<attribute name="NAME" x="342.9" y="52.578" size="1.524" layer="95"/>
</instance>
<instance part="VSS27" gate="G$1" x="337.82" y="55.88" smashed="yes">
<attribute name="VALUE" x="335.28" y="55.88" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="TP13" gate="G$1" x="193.04" y="-71.12" smashed="yes">
<attribute name="NAME" x="194.564" y="-85.09" size="1.778" layer="95" rot="R90"/>
<attribute name="TP_SIGNAL_NAME" x="194.31" y="-73.66" size="1.778" layer="97"/>
</instance>
<instance part="TP15" gate="G$1" x="203.2" y="-71.12" smashed="yes">
<attribute name="NAME" x="204.724" y="-85.09" size="1.778" layer="95" rot="R90"/>
<attribute name="TP_SIGNAL_NAME" x="204.47" y="-73.66" size="1.778" layer="97"/>
</instance>
<instance part="VDD11" gate="G$1" x="210.82" y="-71.12" smashed="yes" rot="R180">
<attribute name="VALUE" x="213.36" y="-71.12" size="1.778" layer="96"/>
</instance>
<instance part="TP16" gate="G$1" x="193.04" y="-53.34" smashed="yes">
<attribute name="NAME" x="194.564" y="-67.31" size="1.778" layer="95" rot="R90"/>
<attribute name="TP_SIGNAL_NAME" x="194.31" y="-55.88" size="1.778" layer="97"/>
</instance>
<instance part="TP17" gate="G$1" x="198.12" y="-53.34" smashed="yes">
<attribute name="NAME" x="199.644" y="-67.31" size="1.778" layer="95" rot="R90"/>
<attribute name="TP_SIGNAL_NAME" x="199.39" y="-55.88" size="1.778" layer="97"/>
</instance>
<instance part="TP18" gate="G$1" x="203.2" y="-53.34" smashed="yes">
<attribute name="NAME" x="204.724" y="-67.31" size="1.778" layer="95" rot="R90"/>
<attribute name="TP_SIGNAL_NAME" x="204.47" y="-55.88" size="1.778" layer="97"/>
</instance>
<instance part="VSS28" gate="G$1" x="210.82" y="-53.34" smashed="yes">
<attribute name="VALUE" x="218.44" y="-53.34" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="J5" gate="G$1" x="60.96" y="60.96" smashed="yes">
<attribute name="NAME" x="77.47" y="68.58" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="77.47" y="66.04" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="TP7" gate="G$1" x="91.44" y="-86.36" smashed="yes" rot="R90">
<attribute name="NAME" x="105.41" y="-84.836" size="1.778" layer="95" rot="R180"/>
<attribute name="TP_SIGNAL_NAME" x="93.98" y="-85.09" size="1.778" layer="97" rot="R90"/>
</instance>
<instance part="TP8" gate="G$1" x="76.2" y="-91.44" smashed="yes" rot="R90">
<attribute name="NAME" x="90.17" y="-89.916" size="1.778" layer="95" rot="R180"/>
<attribute name="TP_SIGNAL_NAME" x="78.74" y="-90.17" size="1.778" layer="97" rot="R90"/>
</instance>
<instance part="SJ1" gate="G$1" x="358.14" y="91.44" smashed="yes">
<attribute name="NAME" x="360.68" y="91.821" size="1.778" layer="95"/>
<attribute name="VALUE" x="360.68" y="89.535" size="1.778" layer="96"/>
</instance>
<instance part="ENCODER" gate="A" x="340.36" y="78.74" smashed="yes" rot="R180">
<attribute name="NAME" x="346.71" y="67.945" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="346.71" y="88.9" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VDD12" gate="G$1" x="358.14" y="99.06" smashed="yes">
<attribute name="VALUE" x="365.76" y="99.06" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS29" gate="G$1" x="342.9" y="68.58" smashed="yes">
<attribute name="VALUE" x="365.76" y="71.12" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="AC1" gate="G$1" x="279.4" y="-91.44" smashed="yes">
<attribute name="NAME" x="311.15" y="-83.82" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="311.15" y="-86.36" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C21" gate="G$1" x="350.52" y="-101.6" smashed="yes" rot="MR0">
<attribute name="NAME" x="349.504" y="-100.965" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="349.504" y="-105.791" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="C22" gate="G$1" x="246.38" y="-96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="245.364" y="-95.885" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="245.364" y="-100.711" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="VSS30" gate="G$1" x="350.52" y="-109.22" smashed="yes">
<attribute name="VALUE" x="358.14" y="-109.22" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS31" gate="G$1" x="246.38" y="-104.14" smashed="yes">
<attribute name="VALUE" x="246.38" y="-106.68" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C23" gate="G$1" x="363.22" y="-99.06" smashed="yes" rot="R90">
<attribute name="NAME" x="362.585" y="-98.044" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="367.411" y="-98.044" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C24" gate="G$1" x="365.76" y="-86.36" smashed="yes" rot="MR90">
<attribute name="NAME" x="366.395" y="-85.344" size="1.778" layer="95" rot="MR90"/>
<attribute name="VALUE" x="361.569" y="-85.344" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="C25" gate="G$1" x="365.76" y="-76.2" smashed="yes" rot="R270">
<attribute name="NAME" x="366.395" y="-77.216" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="361.569" y="-77.216" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VDD13" gate="G$1" x="360.68" y="-101.6" smashed="yes" rot="R180">
<attribute name="VALUE" x="355.6" y="-104.14" size="1.778" layer="96"/>
</instance>
<instance part="VSS32" gate="G$1" x="368.3" y="-101.6" smashed="yes">
<attribute name="VALUE" x="375.92" y="-101.6" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C26" gate="G$1" x="350.52" y="-86.36" smashed="yes" rot="MR0">
<attribute name="NAME" x="349.504" y="-85.725" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="349.504" y="-90.551" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="VSS33" gate="G$1" x="350.52" y="-93.98" smashed="yes">
<attribute name="VALUE" x="358.14" y="-93.98" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC2" gate="G$1" x="144.78" y="-96.52" smashed="yes">
<attribute name="NAME" x="148.59" y="-91.44" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="156.21" y="-91.44" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="ISO1_R" gate="G$1" x="139.7" y="-96.52" smashed="yes" rot="R180">
<attribute name="NAME" x="115.57" y="-95.4786" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="143.51" y="-98.298" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="ISO1_R1" gate="G$1" x="139.7" y="-101.6" smashed="yes" rot="R180">
<attribute name="NAME" x="115.57" y="-100.5586" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="143.51" y="-103.378" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="ISO1_R3" gate="G$1" x="139.7" y="-106.68" smashed="yes" rot="R180">
<attribute name="NAME" x="115.57" y="-105.6386" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="143.51" y="-108.458" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="ISO1_R2" gate="G$1" x="139.7" y="-111.76" smashed="yes" rot="R180">
<attribute name="NAME" x="115.57" y="-110.7186" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="143.51" y="-113.538" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="U1_TTL" gate="1" x="45.72" y="-50.8" smashed="yes">
<attribute name="VALUE" x="44.45" y="-60.96" size="1.778" layer="96"/>
<attribute name="NAME" x="44.45" y="-44.958" size="1.778" layer="95"/>
</instance>
<instance part="VSS34" gate="G$1" x="53.34" y="-58.42" smashed="yes">
<attribute name="VALUE" x="50.8" y="-58.42" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="ISO_IO" gate="1" x="203.2" y="-106.68" smashed="yes">
<attribute name="VALUE" x="201.93" y="-121.92" size="1.778" layer="96"/>
<attribute name="NAME" x="201.93" y="-90.678" size="1.778" layer="95"/>
</instance>
<instance part="VSS35" gate="G$1" x="228.6" y="-106.68" smashed="yes">
<attribute name="VALUE" x="236.22" y="-106.68" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SW1" gate="G$1" x="355.6" y="35.56" smashed="yes" rot="R180">
<attribute name="NAME" x="346.71" y="27.94" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="351.79" y="30.48" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="SW2" gate="G$1" x="355.6" y="20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="346.71" y="12.7" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="351.79" y="15.24" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="VSS36" gate="G$1" x="355.6" y="33.02" smashed="yes">
<attribute name="VALUE" x="358.14" y="30.48" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS37" gate="G$1" x="355.6" y="17.78" smashed="yes">
<attribute name="VALUE" x="358.14" y="15.24" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PWM" gate="1" x="78.74" y="-114.3" smashed="yes">
<attribute name="VALUE" x="77.47" y="-129.54" size="1.778" layer="96"/>
<attribute name="NAME" x="77.47" y="-98.298" size="1.778" layer="95"/>
</instance>
<instance part="VSS38" gate="G$1" x="86.36" y="-127" smashed="yes">
<attribute name="VALUE" x="93.98" y="-124.46" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="TP9" gate="G$1" x="332.74" y="-91.44" smashed="yes" rot="R90">
<attribute name="NAME" x="344.17" y="-89.916" size="1.778" layer="95" rot="R180"/>
<attribute name="TP_SIGNAL_NAME" x="335.28" y="-90.17" size="1.778" layer="97" rot="R90"/>
</instance>
<instance part="TP14" gate="G$1" x="332.74" y="-93.98" smashed="yes" rot="R90">
<attribute name="NAME" x="344.17" y="-92.456" size="1.778" layer="95" rot="R180"/>
<attribute name="TP_SIGNAL_NAME" x="335.28" y="-92.71" size="1.778" layer="97" rot="R90"/>
</instance>
<instance part="TP19" gate="G$1" x="332.74" y="-104.14" smashed="yes" rot="R90">
<attribute name="NAME" x="344.17" y="-102.616" size="1.778" layer="95" rot="R180"/>
<attribute name="TP_SIGNAL_NAME" x="335.28" y="-102.87" size="1.778" layer="97" rot="R90"/>
</instance>
<instance part="TP20" gate="G$1" x="261.62" y="-104.14" smashed="yes" rot="R270">
<attribute name="NAME" x="255.27" y="-108.204" size="1.778" layer="95"/>
<attribute name="TP_SIGNAL_NAME" x="259.08" y="-105.41" size="1.778" layer="97" rot="R270"/>
</instance>
<instance part="TP21" gate="G$1" x="261.62" y="-101.6" smashed="yes" rot="R270">
<attribute name="NAME" x="250.19" y="-103.124" size="1.778" layer="95"/>
<attribute name="TP_SIGNAL_NAME" x="259.08" y="-102.87" size="1.778" layer="97" rot="R270"/>
</instance>
<instance part="TP22" gate="G$1" x="203.2" y="-48.26" smashed="yes" rot="R180">
<attribute name="NAME" x="204.216" y="-41.91" size="1.778" layer="95" rot="R270"/>
<attribute name="TP_SIGNAL_NAME" x="201.93" y="-45.72" size="1.778" layer="97" rot="R180"/>
</instance>
<instance part="TP23" gate="G$1" x="198.12" y="-48.26" smashed="yes" rot="R180">
<attribute name="NAME" x="199.136" y="-41.91" size="1.778" layer="95" rot="R270"/>
<attribute name="TP_SIGNAL_NAME" x="196.85" y="-45.72" size="1.778" layer="97" rot="R180"/>
</instance>
<instance part="TP24" gate="G$1" x="193.04" y="-48.26" smashed="yes" rot="R180">
<attribute name="NAME" x="194.056" y="-41.91" size="1.778" layer="95" rot="R270"/>
<attribute name="TP_SIGNAL_NAME" x="191.77" y="-45.72" size="1.778" layer="97" rot="R180"/>
</instance>
<instance part="VSS39" gate="G$1" x="256.54" y="-55.88" smashed="yes">
<attribute name="VALUE" x="254" y="-55.88" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC3" gate="G$1" x="7.62" y="111.76" smashed="yes">
<attribute name="NAME" x="31.75" y="119.38" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="31.75" y="116.84" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="VSS40" gate="G$1" x="35.56" y="109.22" smashed="yes">
<attribute name="VALUE" x="33.02" y="109.22" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="AVDD_JUMPER" gate="G$1" x="50.8" y="109.22" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="106.299" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="71.12" y="113.665" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C27" gate="G$1" x="-7.62" y="109.22" smashed="yes" rot="MR0">
<attribute name="NAME" x="-8.636" y="109.855" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-8.636" y="105.029" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="VSS41" gate="G$1" x="-7.62" y="101.6" smashed="yes">
<attribute name="VALUE" x="-10.16" y="101.6" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C28" gate="G$1" x="63.5" y="106.68" smashed="yes" rot="MR0">
<attribute name="NAME" x="62.484" y="107.315" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="62.484" y="102.489" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="VSS42" gate="G$1" x="63.5" y="99.06" smashed="yes">
<attribute name="VALUE" x="60.96" y="99.06" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="USBC-PWR" gate="1" x="35.56" y="-99.06" smashed="yes">
<attribute name="VALUE" x="34.29" y="-109.22" size="1.778" layer="96"/>
<attribute name="NAME" x="34.29" y="-93.218" size="1.778" layer="95"/>
</instance>
<instance part="VSS43" gate="G$1" x="43.18" y="-106.68" smashed="yes">
<attribute name="VALUE" x="40.64" y="-106.68" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R11" gate="G$1" x="261.62" y="-43.18" smashed="yes">
<attribute name="NAME" x="257.81" y="-41.6814" size="1.778" layer="95"/>
<attribute name="VALUE" x="245.11" y="-43.942" size="1.778" layer="96"/>
</instance>
<instance part="R12" gate="G$1" x="261.62" y="-48.26" smashed="yes">
<attribute name="NAME" x="257.81" y="-46.7614" size="1.778" layer="95"/>
<attribute name="VALUE" x="245.11" y="-49.022" size="1.778" layer="96"/>
</instance>
<instance part="R13" gate="G$1" x="261.62" y="-53.34" smashed="yes">
<attribute name="NAME" x="257.81" y="-51.8414" size="1.778" layer="95"/>
<attribute name="VALUE" x="245.11" y="-54.102" size="1.778" layer="96"/>
</instance>
<instance part="C29" gate="G$1" x="314.96" y="55.88" smashed="yes" rot="MR0">
<attribute name="NAME" x="321.564" y="56.515" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="324.104" y="54.229" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="VSS44" gate="G$1" x="314.96" y="48.26" smashed="yes">
<attribute name="VALUE" x="312.42" y="48.26" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="TEST_P1" gate="G$1" x="99.06" y="-99.06" smashed="yes" rot="R180">
<attribute name="NAME" x="87.63" y="-98.044" size="1.778" layer="95"/>
<attribute name="TP_SIGNAL_NAME" x="97.79" y="-96.52" size="1.778" layer="97" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="VDD" class="1">
<segment>
<pinref part="GLCD" gate="1" pin="7"/>
<wire x1="132.08" y1="-58.42" x2="152.4" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="VDD1" gate="G$1" pin="VDD"/>
<junction x="132.08" y="-58.42"/>
<junction x="152.4" y="-58.42"/>
</segment>
<segment>
<wire x1="60.96" y1="-17.78" x2="76.2" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VDD_4"/>
<junction x="76.2" y="-17.78"/>
<junction x="60.96" y="-17.78"/>
<label x="50.8" y="-17.78" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="60.96" y1="0" x2="76.2" y2="0" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VDD_3"/>
<junction x="76.2" y="0"/>
<junction x="60.96" y="0"/>
<label x="53.34" y="0" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="60.96" y1="35.56" x2="76.2" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VDD_2"/>
<junction x="76.2" y="35.56"/>
<junction x="60.96" y="35.56"/>
<label x="53.34" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="294.64" y1="35.56" x2="309.88" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VDD"/>
<junction x="294.64" y="35.56"/>
<junction x="309.88" y="35.56"/>
<label x="317.5" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="294.64" y1="5.08" x2="309.88" y2="5.08" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VDD_6"/>
<junction x="294.64" y="5.08"/>
<junction x="309.88" y="5.08"/>
<label x="317.5" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="294.64" y1="-15.24" x2="309.88" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VDD_5"/>
<junction x="294.64" y="-15.24"/>
<junction x="309.88" y="-15.24"/>
<label x="317.5" y="-15.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="VDD2" gate="G$1" pin="VDD"/>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="50.8" y1="81.28" x2="50.8" y2="93.98" width="0.1524" layer="91"/>
<junction x="50.8" y="81.28"/>
</segment>
<segment>
<pinref part="VDD3" gate="G$1" pin="VDD"/>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="68.58" y1="81.28" x2="68.58" y2="93.98" width="0.1524" layer="91"/>
<junction x="68.58" y="81.28"/>
</segment>
<segment>
<pinref part="VDD5" gate="G$1" pin="VDD"/>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="281.94" y1="83.82" x2="281.94" y2="96.52" width="0.1524" layer="91"/>
<junction x="281.94" y="83.82"/>
<junction x="281.94" y="96.52"/>
</segment>
<segment>
<pinref part="VDD6" gate="G$1" pin="VDD"/>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="C11" gate="G$1" pin="2"/>
<wire x1="299.72" y1="83.82" x2="299.72" y2="96.52" width="0.1524" layer="91"/>
<junction x="299.72" y="83.82"/>
<junction x="299.72" y="96.52"/>
</segment>
<segment>
<pinref part="VDD7" gate="G$1" pin="VDD"/>
<pinref part="C6" gate="G$1" pin="1"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="317.5" y1="83.82" x2="317.5" y2="96.52" width="0.1524" layer="91"/>
<junction x="317.5" y="83.82"/>
<junction x="317.5" y="96.52"/>
</segment>
<segment>
<pinref part="Y1" gate="G$1" pin="ENABLE/DISABLE"/>
<junction x="154.94" y="86.36"/>
<pinref part="Y1" gate="G$1" pin="VCC"/>
<junction x="154.94" y="88.9"/>
<wire x1="154.94" y1="86.36" x2="154.94" y2="88.9" width="0.1524" layer="91"/>
<wire x1="139.7" y1="88.9" x2="149.86" y2="88.9" width="0.1524" layer="91"/>
<junction x="139.7" y="88.9"/>
<label x="142.24" y="86.36" size="1.778" layer="95"/>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="149.86" y1="88.9" x2="154.94" y2="88.9" width="0.1524" layer="91"/>
<junction x="149.86" y="88.9"/>
</segment>
<segment>
<wire x1="322.58" y1="-63.5" x2="337.82" y2="-63.5" width="0.1524" layer="91"/>
<junction x="337.82" y="-63.5"/>
<label x="325.12" y="-63.5" size="1.778" layer="95"/>
<pinref part="U2" gate="A" pin="VDD"/>
<junction x="322.58" y="-63.5"/>
</segment>
<segment>
<pinref part="C14" gate="G$1" pin="1"/>
<pinref part="VDD4" gate="G$1" pin="VDD"/>
<pinref part="C15" gate="G$1" pin="2"/>
<wire x1="355.6" y1="-68.58" x2="355.6" y2="-55.88" width="0.1524" layer="91"/>
<junction x="355.6" y="-68.58"/>
<junction x="355.6" y="-55.88"/>
<pinref part="C19" gate="G$1" pin="2"/>
<wire x1="355.6" y1="-55.88" x2="355.6" y2="-43.18" width="0.1524" layer="91"/>
<junction x="355.6" y="-43.18"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="VDD8" gate="G$1" pin="VDD"/>
<junction x="307.34" y="68.58"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="OUTPUT_1"/>
<wire x1="48.26" y1="-71.12" x2="30.48" y2="-71.12" width="0.1524" layer="91"/>
<junction x="48.26" y="-71.12"/>
<junction x="27.94" y="-71.12"/>
<pinref part="C18" gate="G$1" pin="1"/>
<wire x1="30.48" y1="-71.12" x2="27.94" y2="-71.12" width="0.1524" layer="91"/>
<junction x="30.48" y="-71.12"/>
<label x="20.32" y="-71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C20" gate="G$1" pin="1"/>
<pinref part="VDD9" gate="G$1" pin="VDD"/>
<junction x="114.3" y="-48.26"/>
</segment>
<segment>
<wire x1="101.6" y1="-68.58" x2="93.98" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="OUTPUT_2"/>
<junction x="93.98" y="-68.58"/>
<junction x="101.6" y="-68.58"/>
<label x="104.14" y="-68.58" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="22.86" y1="81.28" x2="35.56" y2="81.28" width="0.1524" layer="91"/>
<pinref part="ICSP" gate="A" pin="2"/>
<junction x="22.86" y="81.28"/>
<junction x="35.56" y="81.28"/>
<label x="27.94" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="VDD10" gate="G$1" pin="VDD"/>
<junction x="233.68" y="93.98"/>
<pinref part="TP10" gate="G$1" pin="TP"/>
</segment>
<segment>
<pinref part="TP13" gate="G$1" pin="TP"/>
<wire x1="193.04" y1="-68.58" x2="203.2" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="TP15" gate="G$1" pin="TP"/>
<wire x1="203.2" y1="-68.58" x2="210.82" y2="-68.58" width="0.1524" layer="91"/>
<junction x="203.2" y="-68.58"/>
<junction x="193.04" y="-68.58"/>
<pinref part="VDD11" gate="G$1" pin="VDD"/>
<junction x="210.82" y="-68.58"/>
</segment>
<segment>
<pinref part="SJ1" gate="G$1" pin="1"/>
<pinref part="VDD12" gate="G$1" pin="VDD"/>
<junction x="358.14" y="96.52"/>
</segment>
<segment>
<wire x1="314.96" y1="-96.52" x2="330.2" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="AC1" gate="G$1" pin="DVIO"/>
<junction x="314.96" y="-96.52"/>
<junction x="330.2" y="-96.52"/>
<label x="332.74" y="-96.52" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="264.16" y1="-99.06" x2="279.4" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="AC1" gate="G$1" pin="VDD"/>
<junction x="264.16" y="-99.06"/>
<junction x="279.4" y="-99.06"/>
<label x="256.54" y="-99.06" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C25" gate="G$1" pin="2"/>
<pinref part="C23" gate="G$1" pin="1"/>
<wire x1="360.68" y1="-76.2" x2="360.68" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="C24" gate="G$1" pin="2"/>
<wire x1="360.68" y1="-86.36" x2="360.68" y2="-99.06" width="0.1524" layer="91"/>
<junction x="360.68" y="-86.36"/>
<pinref part="VDD13" gate="G$1" pin="VDD"/>
<junction x="360.68" y="-99.06"/>
<junction x="360.68" y="-76.2"/>
</segment>
<segment>
<wire x1="335.28" y1="-83.82" x2="350.52" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="C26" gate="G$1" pin="1"/>
<junction x="335.28" y="-83.82"/>
<junction x="350.52" y="-83.82"/>
<label x="337.82" y="-83.82" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="50.8" y1="114.3" x2="66.04" y2="114.3" width="0.1524" layer="91"/>
<pinref part="AVDD_JUMPER" gate="G$1" pin="3"/>
<junction x="66.04" y="114.3"/>
<junction x="50.8" y="114.3"/>
<label x="58.42" y="114.3" size="1.778" layer="95"/>
</segment>
</net>
<net name="VSS" class="1">
<segment>
<pinref part="GLCD" gate="1" pin="8"/>
<wire x1="132.08" y1="-55.88" x2="149.86" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="VSS1" gate="G$1" pin="VSS"/>
<junction x="132.08" y="-55.88"/>
<junction x="149.86" y="-55.88"/>
</segment>
<segment>
<wire x1="60.96" y1="-15.24" x2="76.2" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VSS_4"/>
<junction x="76.2" y="-15.24"/>
<junction x="60.96" y="-15.24"/>
<label x="50.8" y="-15.24" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="60.96" y1="2.54" x2="76.2" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VSS_3"/>
<junction x="76.2" y="2.54"/>
<junction x="60.96" y="2.54"/>
<label x="53.34" y="2.54" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="60.96" y1="22.86" x2="76.2" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="AVSS"/>
<junction x="76.2" y="22.86"/>
<junction x="60.96" y="22.86"/>
<label x="53.34" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="60.96" y1="38.1" x2="76.2" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VSS_2"/>
<junction x="76.2" y="38.1"/>
<junction x="60.96" y="38.1"/>
<label x="53.34" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="294.64" y1="-17.78" x2="309.88" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VSS_5"/>
<junction x="294.64" y="-17.78"/>
<junction x="309.88" y="-17.78"/>
<label x="317.5" y="-17.78" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="294.64" y1="2.54" x2="309.88" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VSS_6"/>
<junction x="294.64" y="2.54"/>
<junction x="309.88" y="2.54"/>
<label x="317.5" y="2.54" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="294.64" y1="33.02" x2="309.88" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VSS"/>
<junction x="294.64" y="33.02"/>
<junction x="309.88" y="33.02"/>
<label x="317.5" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="VSS8" gate="G$1" pin="VSS"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="58.42" y1="81.28" x2="58.42" y2="93.98" width="0.1524" layer="91"/>
<junction x="58.42" y="81.28"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="VSS3" gate="G$1" pin="VSS"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="76.2" y1="81.28" x2="76.2" y2="93.98" width="0.1524" layer="91"/>
<junction x="76.2" y="81.28"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="VSS5" gate="G$1" pin="VSS"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="289.56" y1="83.82" x2="289.56" y2="96.52" width="0.1524" layer="91"/>
<junction x="289.56" y="83.82"/>
<junction x="289.56" y="96.52"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="VSS6" gate="G$1" pin="VSS"/>
<pinref part="C11" gate="G$1" pin="1"/>
<wire x1="307.34" y1="83.82" x2="307.34" y2="96.52" width="0.1524" layer="91"/>
<junction x="307.34" y="83.82"/>
<junction x="307.34" y="96.52"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="VSS7" gate="G$1" pin="VSS"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="325.12" y1="83.82" x2="325.12" y2="96.52" width="0.1524" layer="91"/>
<junction x="325.12" y="83.82"/>
<junction x="325.12" y="96.52"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="VSS2" gate="G$1" pin="VSS"/>
<junction x="93.98" y="81.28"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="93.98" y1="81.28" x2="93.98" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="200.66" y1="86.36" x2="203.2" y2="86.36" width="0.1524" layer="91"/>
<pinref part="Y1" gate="G$1" pin="CASE_GND"/>
<junction x="215.9" y="86.36"/>
<junction x="200.66" y="86.36"/>
<label x="208.28" y="83.82" size="1.778" layer="95"/>
<pinref part="VSS9" gate="G$1" pin="VSS"/>
<wire x1="203.2" y1="86.36" x2="215.9" y2="86.36" width="0.1524" layer="91"/>
<junction x="203.2" y="86.36"/>
</segment>
<segment>
<pinref part="C13" gate="G$1" pin="2"/>
<pinref part="VSS4" gate="G$1" pin="VSS"/>
<junction x="149.86" y="81.28"/>
</segment>
<segment>
<wire x1="256.54" y1="-71.12" x2="271.78" y2="-71.12" width="0.1524" layer="91"/>
<junction x="256.54" y="-71.12"/>
<label x="259.08" y="-71.12" size="1.778" layer="95"/>
<pinref part="U2" gate="A" pin="VSS"/>
<junction x="271.78" y="-71.12"/>
<pinref part="TP3_VSS" gate="G$1" pin="TP"/>
</segment>
<segment>
<pinref part="C14" gate="G$1" pin="2"/>
<pinref part="VSS10" gate="G$1" pin="VSS"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="363.22" y1="-68.58" x2="363.22" y2="-55.88" width="0.1524" layer="91"/>
<junction x="363.22" y="-68.58"/>
<junction x="363.22" y="-55.88"/>
<pinref part="C19" gate="G$1" pin="1"/>
<wire x1="363.22" y1="-55.88" x2="363.22" y2="-43.18" width="0.1524" layer="91"/>
<junction x="363.22" y="-43.18"/>
</segment>
<segment>
<pinref part="C16" gate="G$1" pin="2"/>
<pinref part="VSS11" gate="G$1" pin="VSS"/>
<junction x="307.34" y="50.8"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="ADJUST/GROUND"/>
<pinref part="VSS12" gate="G$1" pin="VSS"/>
<junction x="48.26" y="-68.58"/>
</segment>
<segment>
<pinref part="C17" gate="G$1" pin="2"/>
<pinref part="VSS13" gate="G$1" pin="VSS"/>
<junction x="43.18" y="-81.28"/>
</segment>
<segment>
<pinref part="C18" gate="G$1" pin="2"/>
<pinref part="VSS14" gate="G$1" pin="VSS"/>
<junction x="30.48" y="-78.74"/>
</segment>
<segment>
<pinref part="C20" gate="G$1" pin="2"/>
<pinref part="VSS16" gate="G$1" pin="VSS"/>
<junction x="114.3" y="-55.88"/>
</segment>
<segment>
<wire x1="22.86" y1="83.82" x2="35.56" y2="83.82" width="0.1524" layer="91"/>
<pinref part="ICSP" gate="A" pin="3"/>
<junction x="22.86" y="83.82"/>
<junction x="35.56" y="83.82"/>
<label x="27.94" y="83.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="POWER" gate="G$1" pin="C"/>
<pinref part="VSS15" gate="G$1" pin="VSS"/>
<pinref part="TP11" gate="G$1" pin="TP"/>
<junction x="233.68" y="76.2"/>
</segment>
<segment>
<pinref part="LED2" gate="G$1" pin="C"/>
<pinref part="VSS17" gate="G$1" pin="VSS"/>
<junction x="241.3" y="76.2"/>
</segment>
<segment>
<pinref part="LED3" gate="G$1" pin="C"/>
<pinref part="VSS18" gate="G$1" pin="VSS"/>
<junction x="248.92" y="76.2"/>
</segment>
<segment>
<pinref part="LED4" gate="G$1" pin="C"/>
<pinref part="VSS19" gate="G$1" pin="VSS"/>
<junction x="256.54" y="76.2"/>
</segment>
<segment>
<wire x1="22.86" y1="50.8" x2="35.56" y2="50.8" width="0.1524" layer="91"/>
<pinref part="MISC_ANA" gate="A" pin="1"/>
<junction x="22.86" y="50.8"/>
<junction x="35.56" y="50.8"/>
<label x="38.1" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="VIN_5+" gate="-1" pin="S"/>
<pinref part="VSS20" gate="G$1" pin="VSS"/>
<junction x="66.04" y="-88.9"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="15.24" y1="30.48" x2="15.24" y2="27.94" width="0.1524" layer="91"/>
<wire x1="15.24" y1="27.94" x2="15.24" y2="22.86" width="0.1524" layer="91"/>
<wire x1="15.24" y1="22.86" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="3"/>
<junction x="15.24" y="27.94"/>
<junction x="15.24" y="30.48"/>
<pinref part="J4" gate="G$1" pin="2"/>
<wire x1="15.24" y1="-30.48" x2="15.24" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-33.02" x2="15.24" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-38.1" x2="35.56" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="35.56" y1="-38.1" x2="35.56" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="35.56" y1="-30.48" x2="35.56" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-27.94" x2="35.56" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-17.78" x2="35.56" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-10.16" x2="35.56" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-7.62" x2="35.56" y2="2.54" width="0.1524" layer="91"/>
<wire x1="35.56" y1="2.54" x2="35.56" y2="10.16" width="0.1524" layer="91"/>
<wire x1="35.56" y1="10.16" x2="35.56" y2="12.7" width="0.1524" layer="91"/>
<wire x1="35.56" y1="12.7" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<wire x1="35.56" y1="22.86" x2="35.56" y2="30.48" width="0.1524" layer="91"/>
<wire x1="35.56" y1="30.48" x2="35.56" y2="33.02" width="0.1524" layer="91"/>
<junction x="35.56" y="30.48"/>
<pinref part="J2" gate="G$1" pin="4"/>
<junction x="35.56" y="12.7"/>
<pinref part="J2" gate="G$1" pin="5"/>
<junction x="35.56" y="10.16"/>
<pinref part="J3" gate="G$1" pin="4"/>
<junction x="35.56" y="-7.62"/>
<pinref part="J3" gate="G$1" pin="5"/>
<junction x="35.56" y="-10.16"/>
<pinref part="J4" gate="G$1" pin="3"/>
<junction x="15.24" y="-33.02"/>
<pinref part="J4" gate="G$1" pin="4"/>
<junction x="35.56" y="-27.94"/>
<pinref part="J4" gate="G$1" pin="5"/>
<junction x="35.56" y="-30.48"/>
<junction x="35.56" y="33.02"/>
<junction x="15.24" y="-30.48"/>
<junction x="35.56" y="22.86"/>
<pinref part="J2" gate="G$1" pin="2"/>
<wire x1="15.24" y1="10.16" x2="15.24" y2="7.62" width="0.1524" layer="91"/>
<wire x1="15.24" y1="7.62" x2="15.24" y2="2.54" width="0.1524" layer="91"/>
<wire x1="15.24" y1="2.54" x2="35.56" y2="2.54" width="0.1524" layer="91"/>
<junction x="15.24" y="10.16"/>
<pinref part="J2" gate="G$1" pin="3"/>
<junction x="15.24" y="7.62"/>
<junction x="35.56" y="2.54"/>
<pinref part="J3" gate="G$1" pin="2"/>
<wire x1="15.24" y1="-10.16" x2="15.24" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-12.7" x2="15.24" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-17.78" x2="35.56" y2="-17.78" width="0.1524" layer="91"/>
<junction x="15.24" y="-10.16"/>
<pinref part="J3" gate="G$1" pin="3"/>
<junction x="15.24" y="-12.7"/>
<junction x="35.56" y="-17.78"/>
<pinref part="VSS21" gate="G$1" pin="VSS"/>
<junction x="35.56" y="-38.1"/>
</segment>
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="VSS22" gate="G$1" pin="VSS"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="VSS23" gate="G$1" pin="VSS"/>
</segment>
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="VSS24" gate="G$1" pin="VSS"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="VSS25" gate="G$1" pin="VSS"/>
<junction x="5.08" y="-38.1"/>
</segment>
<segment>
<pinref part="RESET_SW" gate="G$1" pin="COM"/>
<pinref part="VSS26" gate="G$1" pin="VSS"/>
<junction x="276.86" y="60.96"/>
</segment>
<segment>
<pinref part="R_RESET" gate="-1" pin="S"/>
<pinref part="VSS27" gate="G$1" pin="VSS"/>
<junction x="337.82" y="58.42"/>
</segment>
<segment>
<pinref part="TP16" gate="G$1" pin="TP"/>
<wire x1="193.04" y1="-50.8" x2="198.12" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="TP17" gate="G$1" pin="TP"/>
<wire x1="198.12" y1="-50.8" x2="203.2" y2="-50.8" width="0.1524" layer="91"/>
<junction x="198.12" y="-50.8"/>
<pinref part="TP18" gate="G$1" pin="TP"/>
<wire x1="203.2" y1="-50.8" x2="210.82" y2="-50.8" width="0.1524" layer="91"/>
<junction x="203.2" y="-50.8"/>
<pinref part="VSS28" gate="G$1" pin="VSS"/>
<junction x="210.82" y="-50.8"/>
<pinref part="TP22" gate="G$1" pin="TP"/>
<pinref part="TP23" gate="G$1" pin="TP"/>
<pinref part="TP24" gate="G$1" pin="TP"/>
<junction x="193.04" y="-50.8"/>
</segment>
<segment>
<wire x1="48.26" y1="60.96" x2="60.96" y2="60.96" width="0.1524" layer="91"/>
<pinref part="J5" gate="G$1" pin="2"/>
<junction x="60.96" y="60.96"/>
<junction x="48.26" y="60.96"/>
<label x="50.8" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ENCODER" gate="A" pin="1"/>
<pinref part="VSS29" gate="G$1" pin="VSS"/>
<junction x="342.9" y="71.12"/>
</segment>
<segment>
<wire x1="264.16" y1="-91.44" x2="279.4" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="AC1" gate="G$1" pin="AVSS"/>
<junction x="279.4" y="-91.44"/>
<junction x="264.16" y="-91.44"/>
<label x="256.54" y="-91.44" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="314.96" y1="-101.6" x2="330.2" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="AC1" gate="G$1" pin="DVSS"/>
<junction x="314.96" y="-101.6"/>
<junction x="330.2" y="-101.6"/>
<label x="332.74" y="-101.6" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="314.96" y1="-104.14" x2="330.2" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="AC1" gate="G$1" pin="EMC_GND"/>
<junction x="314.96" y="-104.14"/>
<junction x="330.2" y="-104.14"/>
<label x="320.04" y="-104.14" size="1.778" layer="95"/>
<pinref part="TP19" gate="G$1" pin="TP"/>
</segment>
<segment>
<wire x1="264.16" y1="-96.52" x2="279.4" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="AC1" gate="G$1" pin="REERVED"/>
<junction x="279.4" y="-96.52"/>
<junction x="264.16" y="-96.52"/>
<label x="256.54" y="-96.52" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C21" gate="G$1" pin="2"/>
<pinref part="VSS30" gate="G$1" pin="VSS"/>
<junction x="350.52" y="-106.68"/>
</segment>
<segment>
<pinref part="C22" gate="G$1" pin="2"/>
<pinref part="VSS31" gate="G$1" pin="VSS"/>
<junction x="246.38" y="-101.6"/>
</segment>
<segment>
<pinref part="C25" gate="G$1" pin="1"/>
<pinref part="C23" gate="G$1" pin="2"/>
<wire x1="368.3" y1="-76.2" x2="368.3" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="C24" gate="G$1" pin="1"/>
<wire x1="368.3" y1="-86.36" x2="368.3" y2="-99.06" width="0.1524" layer="91"/>
<junction x="368.3" y="-86.36"/>
<pinref part="VSS32" gate="G$1" pin="VSS"/>
<junction x="368.3" y="-99.06"/>
<junction x="368.3" y="-76.2"/>
</segment>
<segment>
<pinref part="C26" gate="G$1" pin="2"/>
<pinref part="VSS33" gate="G$1" pin="VSS"/>
<junction x="350.52" y="-91.44"/>
</segment>
<segment>
<wire x1="127" y1="-99.06" x2="144.78" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="K_1"/>
<junction x="144.78" y="-99.06"/>
<junction x="127" y="-99.06"/>
<label x="116.84" y="-99.06" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="127" y1="-104.14" x2="144.78" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="K_2"/>
<junction x="144.78" y="-104.14"/>
<junction x="127" y="-104.14"/>
<label x="116.84" y="-104.14" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="170.18" y1="-109.22" x2="182.88" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="E_2"/>
<junction x="170.18" y="-109.22"/>
<junction x="182.88" y="-109.22"/>
<label x="187.96" y="-109.22" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="170.18" y1="-114.3" x2="182.88" y2="-114.3" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="E_1"/>
<junction x="170.18" y="-114.3"/>
<junction x="182.88" y="-114.3"/>
<label x="187.96" y="-114.3" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1_TTL" gate="1" pin="1"/>
<pinref part="VSS34" gate="G$1" pin="VSS"/>
<junction x="53.34" y="-55.88"/>
</segment>
<segment>
<pinref part="ISO_IO" gate="1" pin="5"/>
<pinref part="ISO_IO" gate="1" pin="6"/>
<wire x1="210.82" y1="-106.68" x2="210.82" y2="-104.14" width="0.1524" layer="91"/>
<junction x="210.82" y="-104.14"/>
<wire x1="210.82" y1="-104.14" x2="228.6" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="VSS35" gate="G$1" pin="VSS"/>
<junction x="210.82" y="-106.68"/>
<junction x="228.6" y="-104.14"/>
</segment>
<segment>
<pinref part="SW1" gate="G$1" pin="COM"/>
<pinref part="VSS36" gate="G$1" pin="VSS"/>
<junction x="355.6" y="35.56"/>
</segment>
<segment>
<pinref part="SW2" gate="G$1" pin="COM"/>
<pinref part="VSS37" gate="G$1" pin="VSS"/>
<junction x="355.6" y="20.32"/>
</segment>
<segment>
<pinref part="PWM" gate="1" pin="1"/>
<pinref part="VSS38" gate="G$1" pin="VSS"/>
<junction x="86.36" y="-124.46"/>
</segment>
<segment>
<pinref part="VSS39" gate="G$1" pin="VSS"/>
<wire x1="256.54" y1="-53.34" x2="256.54" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="R11" gate="G$1" pin="1"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="256.54" y1="-48.26" x2="256.54" y2="-43.18" width="0.1524" layer="91"/>
<junction x="256.54" y="-48.26"/>
<pinref part="R13" gate="G$1" pin="1"/>
<junction x="256.54" y="-53.34"/>
<junction x="256.54" y="-43.18"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="GND"/>
<pinref part="VSS40" gate="G$1" pin="VSS"/>
<junction x="35.56" y="111.76"/>
</segment>
<segment>
<pinref part="C27" gate="G$1" pin="2"/>
<pinref part="VSS41" gate="G$1" pin="VSS"/>
<junction x="-7.62" y="104.14"/>
</segment>
<segment>
<pinref part="C28" gate="G$1" pin="2"/>
<pinref part="VSS42" gate="G$1" pin="VSS"/>
<junction x="63.5" y="101.6"/>
</segment>
<segment>
<pinref part="USBC-PWR" gate="1" pin="1"/>
<pinref part="VSS43" gate="G$1" pin="VSS"/>
<junction x="43.18" y="-104.14"/>
</segment>
<segment>
<pinref part="C29" gate="G$1" pin="2"/>
<pinref part="VSS44" gate="G$1" pin="VSS"/>
<junction x="314.96" y="50.8"/>
</segment>
</net>
<net name="SDI1" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP41/IOMD11/IOMF11/PCI20/RC8"/>
<wire x1="294.64" y1="-33.02" x2="309.88" y2="-33.02" width="0.1524" layer="91"/>
<junction x="294.64" y="-33.02"/>
<junction x="309.88" y="-33.02"/>
<label x="317.5" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="132.08" y1="-73.66" x2="147.32" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="GLCD" gate="1" pin="1"/>
<junction x="132.08" y="-73.66"/>
<junction x="147.32" y="-73.66"/>
<label x="152.4" y="-73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDO1" class="0">
<segment>
<wire x1="132.08" y1="-71.12" x2="147.32" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="GLCD" gate="1" pin="2"/>
<junction x="132.08" y="-71.12"/>
<junction x="147.32" y="-71.12"/>
<label x="152.4" y="-71.12" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="294.64" y1="10.16" x2="309.88" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="RP59/RD10"/>
<junction x="294.64" y="10.16"/>
<junction x="309.88" y="10.16"/>
<label x="317.5" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCK1" class="0">
<segment>
<wire x1="147.32" y1="-68.58" x2="132.08" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="GLCD" gate="1" pin="3"/>
<junction x="132.08" y="-68.58"/>
<junction x="147.32" y="-68.58"/>
<label x="152.4" y="-68.58" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="309.88" y1="43.18" x2="294.64" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="RP61/PCI21/RD12"/>
<junction x="294.64" y="43.18"/>
<junction x="309.88" y="43.18"/>
<label x="317.5" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIS_MODE" class="0">
<segment>
<pinref part="U1" gate="A" pin="PGC3/RP35/PWM4H/RC2"/>
<wire x1="294.64" y1="-12.7" x2="309.88" y2="-12.7" width="0.1524" layer="91"/>
<junction x="294.64" y="-12.7"/>
<junction x="309.88" y="-12.7"/>
<label x="317.5" y="-12.7" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="132.08" y1="-66.04" x2="147.32" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="GLCD" gate="1" pin="4"/>
<junction x="132.08" y="-66.04"/>
<junction x="147.32" y="-66.04"/>
<label x="152.4" y="-66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIS_CS" class="0">
<segment>
<wire x1="147.32" y1="-63.5" x2="132.08" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="GLCD" gate="1" pin="5"/>
<junction x="132.08" y="-63.5"/>
<junction x="147.32" y="-63.5"/>
<label x="152.4" y="-63.5" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="309.88" y1="40.64" x2="294.64" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="RP60/RD11"/>
<junction x="294.64" y="40.64"/>
<junction x="309.88" y="40.64"/>
<label x="317.5" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIS_RESET" class="0">
<segment>
<wire x1="132.08" y1="-60.96" x2="147.32" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="GLCD" gate="1" pin="6"/>
<junction x="132.08" y="-60.96"/>
<junction x="147.32" y="-60.96"/>
<label x="152.4" y="-60.96" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="294.64" y1="-22.86" x2="309.88" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="OSCO/CLKO/RP33/IOMF5/RC0"/>
<junction x="294.64" y="-22.86"/>
<junction x="309.88" y="-22.86"/>
<label x="317.5" y="-22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDI2" class="0">
<segment>
<wire x1="60.96" y1="-33.02" x2="76.2" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="RP28/SDI2/RB11"/>
<junction x="76.2" y="-33.02"/>
<junction x="60.96" y="-33.02"/>
<label x="50.8" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="SO/SIO1"/>
<wire x1="256.54" y1="-66.04" x2="271.78" y2="-66.04" width="0.1524" layer="91"/>
<label x="259.08" y="-66.04" size="1.778" layer="95"/>
<pinref part="TP4" gate="G$1" pin="TP"/>
<junction x="256.54" y="-66.04"/>
<junction x="271.78" y="-66.04"/>
</segment>
<segment>
<wire x1="266.7" y1="-43.18" x2="281.94" y2="-43.18" width="0.1524" layer="91"/>
<junction x="281.94" y="-43.18"/>
<label x="269.24" y="-43.18" size="1.778" layer="95"/>
<pinref part="R11" gate="G$1" pin="2"/>
<junction x="266.7" y="-43.18"/>
</segment>
</net>
<net name="SDO2" class="0">
<segment>
<wire x1="309.88" y1="-30.48" x2="294.64" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="RP42/IOMD10/SDO2/IOMF10/PCI19/RC9"/>
<junction x="294.64" y="-30.48"/>
<junction x="309.88" y="-30.48"/>
<label x="317.5" y="-30.48" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="337.82" y1="-71.12" x2="322.58" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="SI/SIO0"/>
<label x="325.12" y="-71.12" size="1.778" layer="95"/>
<junction x="322.58" y="-71.12"/>
<junction x="337.82" y="-71.12"/>
<pinref part="TP1" gate="G$1" pin="TP"/>
</segment>
<segment>
<wire x1="281.94" y1="-48.26" x2="266.7" y2="-48.26" width="0.1524" layer="91"/>
<junction x="281.94" y="-48.26"/>
<label x="269.24" y="-48.26" size="1.778" layer="95"/>
<pinref part="R12" gate="G$1" pin="2"/>
<junction x="266.7" y="-48.26"/>
</segment>
</net>
<net name="SCK2" class="0">
<segment>
<wire x1="60.96" y1="-30.48" x2="76.2" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="RP27/SCK2/RB10"/>
<junction x="76.2" y="-30.48"/>
<junction x="60.96" y="-30.48"/>
<label x="50.8" y="-30.48" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="322.58" y1="-68.58" x2="337.82" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="CLK"/>
<junction x="322.58" y="-68.58"/>
<junction x="337.82" y="-68.58"/>
<label x="325.12" y="-68.58" size="1.778" layer="95"/>
<pinref part="TP2" gate="G$1" pin="TP"/>
</segment>
<segment>
<wire x1="266.7" y1="-53.34" x2="281.94" y2="-53.34" width="0.1524" layer="91"/>
<junction x="281.94" y="-53.34"/>
<label x="269.24" y="-53.34" size="1.778" layer="95"/>
<pinref part="R13" gate="G$1" pin="2"/>
<junction x="266.7" y="-53.34"/>
</segment>
</net>
<net name="SRAM_CS" class="0">
<segment>
<pinref part="U1" gate="A" pin="PGC1/AD2AN5/CMP2C/ISRC1/IBIAS1/RP21/SCL1/RB4"/>
<wire x1="76.2" y1="-22.86" x2="60.96" y2="-22.86" width="0.1524" layer="91"/>
<label x="45.72" y="-22.86" size="1.778" layer="95"/>
<junction x="60.96" y="-22.86"/>
<junction x="76.2" y="-22.86"/>
</segment>
<segment>
<wire x1="271.78" y1="-63.5" x2="256.54" y2="-63.5" width="0.1524" layer="91"/>
<junction x="256.54" y="-63.5"/>
<label x="259.08" y="-63.5" size="1.778" layer="95"/>
<pinref part="U2" gate="A" pin="CE"/>
<junction x="271.78" y="-63.5"/>
<pinref part="TP5" gate="G$1" pin="TP"/>
</segment>
</net>
<net name="AVDD" class="1">
<segment>
<pinref part="E1" gate="G$1" pin="2"/>
<wire x1="93.98" y1="109.22" x2="96.52" y2="109.22" width="0.1524" layer="91"/>
<junction x="114.3" y="109.22"/>
<junction x="96.52" y="109.22"/>
<wire x1="96.52" y1="109.22" x2="114.3" y2="109.22" width="0.1524" layer="91"/>
<label x="101.6" y="109.22" size="1.778" layer="95"/>
<label x="104.14" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="60.96" y1="20.32" x2="76.2" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="AVDD"/>
<junction x="76.2" y="20.32"/>
<junction x="60.96" y="20.32"/>
<label x="50.8" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="86.36" y1="73.66" x2="86.36" y2="81.28" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<junction x="86.36" y="81.28"/>
<junction x="86.36" y="73.66"/>
<label x="83.82" y="71.12" size="1.778" layer="95"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="86.36" y1="81.28" x2="86.36" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="22.86" y1="63.5" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
<pinref part="MISC_ANA" gate="A" pin="6"/>
<junction x="35.56" y="63.5"/>
<junction x="22.86" y="63.5"/>
<label x="38.1" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="8MHZ_CLK" class="0">
<segment>
<pinref part="Y1" gate="G$1" pin="OUTPUT"/>
<wire x1="200.66" y1="88.9" x2="215.9" y2="88.9" width="0.1524" layer="91"/>
<junction x="200.66" y="88.9"/>
<junction x="215.9" y="88.9"/>
<label x="203.2" y="88.9" size="1.778" layer="95"/>
<pinref part="TP6" gate="G$1" pin="TP"/>
</segment>
<segment>
<wire x1="294.64" y1="-20.32" x2="309.88" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="OSCI/CLKI/RP34/IOMF6/RC1"/>
<junction x="294.64" y="-20.32"/>
<junction x="309.88" y="-20.32"/>
<label x="317.5" y="-20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="RESET_SW" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="C16" gate="G$1" pin="1"/>
<junction x="307.34" y="58.42"/>
<wire x1="307.34" y1="58.42" x2="314.96" y2="58.42" width="0.1524" layer="91"/>
<junction x="325.12" y="58.42"/>
<label x="314.96" y="60.96" size="1.778" layer="95"/>
<pinref part="C29" gate="G$1" pin="1"/>
<wire x1="314.96" y1="58.42" x2="325.12" y2="58.42" width="0.1524" layer="91"/>
<junction x="314.96" y="58.42"/>
</segment>
<segment>
<wire x1="276.86" y1="63.5" x2="287.02" y2="63.5" width="0.1524" layer="91"/>
<pinref part="RESET_SW" gate="G$1" pin="NO"/>
<junction x="276.86" y="63.5"/>
<junction x="294.64" y="63.5"/>
<label x="279.4" y="63.5" size="1.778" layer="95"/>
<pinref part="TP12" gate="G$1" pin="TP"/>
<wire x1="287.02" y1="63.5" x2="294.64" y2="63.5" width="0.1524" layer="91"/>
<junction x="287.02" y="63.5"/>
</segment>
<segment>
<wire x1="320.04" y1="53.34" x2="337.82" y2="53.34" width="0.1524" layer="91"/>
<pinref part="R_RESET" gate="-2" pin="S"/>
<junction x="337.82" y="53.34"/>
<junction x="320.04" y="53.34"/>
<label x="325.12" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="MCLR" class="0">
<segment>
<pinref part="U1" gate="A" pin="!MCLR"/>
<wire x1="294.64" y1="45.72" x2="294.64" y2="58.42" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="294.64" y1="58.42" x2="297.18" y2="58.42" width="0.1524" layer="91"/>
<junction x="294.64" y="45.72"/>
<junction x="297.18" y="58.42"/>
<label x="294.64" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="35.56" y1="78.74" x2="22.86" y2="78.74" width="0.1524" layer="91"/>
<pinref part="ICSP" gate="A" pin="1"/>
<junction x="22.86" y="78.74"/>
<junction x="35.56" y="78.74"/>
<label x="27.94" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="VIN" class="1">
<segment>
<pinref part="IC1" gate="G$1" pin="INPUT"/>
<wire x1="48.26" y1="-73.66" x2="43.18" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="C17" gate="G$1" pin="1"/>
<wire x1="43.18" y1="-73.66" x2="38.1" y2="-73.66" width="0.1524" layer="91"/>
<junction x="43.18" y="-73.66"/>
<junction x="48.26" y="-73.66"/>
<junction x="38.1" y="-73.66"/>
<label x="40.64" y="-73.66" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="88.9" y1="-86.36" x2="83.82" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="FUSE" gate="G$1" pin="1"/>
<junction x="83.82" y="-86.36"/>
<junction x="88.9" y="-86.36"/>
<label x="86.36" y="-83.82" size="1.778" layer="95"/>
<pinref part="TP7" gate="G$1" pin="TP"/>
</segment>
<segment>
<wire x1="363.22" y1="86.36" x2="358.14" y2="86.36" width="0.1524" layer="91"/>
<pinref part="SJ1" gate="G$1" pin="3"/>
<junction x="358.14" y="86.36"/>
<junction x="363.22" y="86.36"/>
<label x="365.76" y="86.36" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="7.62" y1="111.76" x2="-7.62" y2="111.76" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="VIN"/>
<junction x="7.62" y="111.76"/>
<junction x="-7.62" y="111.76"/>
<label x="-2.54" y="111.76" size="1.778" layer="95"/>
<pinref part="C27" gate="G$1" pin="1"/>
</segment>
</net>
<net name="PGD" class="0">
<segment>
<pinref part="U1" gate="A" pin="PGD2/AD2AN6/CMP3C/ISRC2/IBIAS2/RP1/SDA2/IOMF2/RA0"/>
<wire x1="76.2" y1="45.72" x2="60.96" y2="45.72" width="0.1524" layer="91"/>
<junction x="76.2" y="45.72"/>
<junction x="60.96" y="45.72"/>
<label x="53.34" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="38.1" y1="86.36" x2="22.86" y2="86.36" width="0.1524" layer="91"/>
<pinref part="ICSP" gate="A" pin="4"/>
<junction x="22.86" y="86.36"/>
<junction x="38.1" y="86.36"/>
<label x="30.48" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="PGC_DAC" class="0">
<segment>
<pinref part="U1" gate="A" pin="PGC2/DACOUT1/AD1AN7/AD2AN3/CMP1D/CMP2D/CMP3D/RP2/SCL2/RA1"/>
<wire x1="76.2" y1="40.64" x2="60.96" y2="40.64" width="0.1524" layer="91"/>
<junction x="76.2" y="40.64"/>
<junction x="60.96" y="40.64"/>
<label x="53.34" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="38.1" y1="88.9" x2="22.86" y2="88.9" width="0.1524" layer="91"/>
<pinref part="ICSP" gate="A" pin="5"/>
<junction x="22.86" y="88.9"/>
<junction x="38.1" y="88.9"/>
<label x="30.48" y="88.9" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="35.56" y1="53.34" x2="22.86" y2="53.34" width="0.1524" layer="91"/>
<pinref part="MISC_ANA" gate="A" pin="2"/>
<junction x="22.86" y="53.34"/>
<junction x="35.56" y="53.34"/>
<label x="38.1" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="60.96" y1="58.42" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
<pinref part="J5" gate="G$1" pin="1"/>
<junction x="60.96" y="58.42"/>
<junction x="48.26" y="58.42"/>
<label x="50.8" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="POWER" gate="G$1" pin="A"/>
<junction x="233.68" y="83.82"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="LED2" gate="G$1" pin="A"/>
<pinref part="R4" gate="G$1" pin="1"/>
<junction x="241.3" y="83.82"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="LED3" gate="G$1" pin="A"/>
<pinref part="R5" gate="G$1" pin="1"/>
<junction x="248.92" y="83.82"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="LED4" gate="G$1" pin="A"/>
<pinref part="R6" gate="G$1" pin="1"/>
<junction x="256.54" y="83.82"/>
</segment>
</net>
<net name="RLED" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP49/PWM2H/IOMD2/RD0"/>
<wire x1="294.64" y1="12.7" x2="309.88" y2="12.7" width="0.1524" layer="91"/>
<junction x="294.64" y="12.7"/>
<junction x="309.88" y="12.7"/>
<label x="317.5" y="12.7" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="241.3" y1="93.98" x2="241.3" y2="109.22" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="2"/>
<junction x="241.3" y="93.98"/>
<label x="241.3" y="101.6" size="1.778" layer="95" rot="R90"/>
<junction x="241.3" y="109.22"/>
</segment>
</net>
<net name="RD2" class="0">
<segment>
<pinref part="U1" gate="A" pin="TDO/RP51/PWM1H/IOMD4/RD2"/>
<wire x1="294.64" y1="17.78" x2="309.88" y2="17.78" width="0.1524" layer="91"/>
<junction x="294.64" y="17.78"/>
<junction x="309.88" y="17.78"/>
<label x="302.26" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="22.86" y1="55.88" x2="35.56" y2="55.88" width="0.1524" layer="91"/>
<pinref part="MISC_ANA" gate="A" pin="3"/>
<junction x="22.86" y="55.88"/>
<junction x="35.56" y="55.88"/>
<label x="38.1" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="HLED" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP58/IOMF7/RD9"/>
<wire x1="294.64" y1="7.62" x2="309.88" y2="7.62" width="0.1524" layer="91"/>
<junction x="294.64" y="7.62"/>
<junction x="309.88" y="7.62"/>
<label x="317.5" y="7.62" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="256.54" y1="93.98" x2="256.54" y2="109.22" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<junction x="256.54" y="109.22"/>
<junction x="256.54" y="93.98"/>
<label x="256.54" y="101.6" size="1.778" layer="95" rot="R90"/>
<pinref part="TEST_P0" gate="G$1" pin="TP"/>
</segment>
</net>
<net name="VIN_PWR" class="1">
<segment>
<pinref part="VIN_5+" gate="-2" pin="S"/>
<wire x1="66.04" y1="-86.36" x2="73.66" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="FUSE" gate="G$1" pin="2"/>
<label x="60.96" y="-83.82" size="1.778" layer="95"/>
<junction x="66.04" y="-86.36"/>
<junction x="73.66" y="-86.36"/>
<pinref part="TP8" gate="G$1" pin="TP"/>
<wire x1="73.66" y1="-91.44" x2="73.66" y2="-86.36" width="0.1524" layer="91"/>
<junction x="73.66" y="-91.44"/>
</segment>
<segment>
<wire x1="43.18" y1="-96.52" x2="50.8" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="USBC-PWR" gate="1" pin="4"/>
<junction x="43.18" y="-96.52"/>
<junction x="50.8" y="-96.52"/>
<label x="45.72" y="-96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="OA2IN" class="0">
<segment>
<pinref part="U1" gate="A" pin="OA2IN+/AD2AN4/CMP2B/RP19/RB2"/>
<wire x1="76.2" y1="-7.62" x2="60.96" y2="-7.62" width="0.1524" layer="91"/>
<label x="48.26" y="-7.62" size="1.778" layer="95"/>
<junction x="60.96" y="-7.62"/>
<junction x="76.2" y="-7.62"/>
</segment>
<segment>
<wire x1="15.24" y1="-7.62" x2="5.08" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="1"/>
<junction x="15.24" y="-7.62"/>
<junction x="0" y="-7.62"/>
<label x="2.54" y="-7.62" size="1.778" layer="95"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="5.08" y1="-7.62" x2="0" y2="-7.62" width="0.1524" layer="91"/>
<junction x="5.08" y="-7.62"/>
</segment>
</net>
<net name="OA2OUT" class="0">
<segment>
<pinref part="U1" gate="A" pin="OA2OUT/AD2AN1/CMP2A/RP17/INT0/RB0"/>
<wire x1="76.2" y1="-2.54" x2="60.96" y2="-2.54" width="0.1524" layer="91"/>
<junction x="76.2" y="-2.54"/>
<junction x="60.96" y="-2.54"/>
<label x="48.26" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="15.24" y1="-27.94" x2="5.08" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="J4" gate="G$1" pin="1"/>
<junction x="15.24" y="-27.94"/>
<junction x="0" y="-27.94"/>
<label x="2.54" y="-27.94" size="1.778" layer="95"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="5.08" y1="-27.94" x2="0" y2="-27.94" width="0.1524" layer="91"/>
<junction x="5.08" y="-27.94"/>
</segment>
</net>
<net name="AD1AN6" class="0">
<segment>
<pinref part="U1" gate="A" pin="AD1AN6/RP8/IOMF1/RA7"/>
<wire x1="76.2" y1="43.18" x2="60.96" y2="43.18" width="0.1524" layer="91"/>
<junction x="76.2" y="43.18"/>
<junction x="60.96" y="43.18"/>
<label x="53.34" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="15.24" y1="33.02" x2="5.08" y2="33.02" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="1"/>
<junction x="0" y="33.02"/>
<junction x="15.24" y="33.02"/>
<label x="2.54" y="33.02" size="1.778" layer="95"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="5.08" y1="33.02" x2="0" y2="33.02" width="0.1524" layer="91"/>
<junction x="5.08" y="33.02"/>
</segment>
</net>
<net name="AD2AN7" class="0">
<segment>
<pinref part="U1" gate="A" pin="AD2ANN3/AD2AN7/RP11/RA10"/>
<wire x1="76.2" y1="25.4" x2="60.96" y2="25.4" width="0.1524" layer="91"/>
<junction x="76.2" y="25.4"/>
<junction x="60.96" y="25.4"/>
<label x="50.8" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="15.24" y1="12.7" x2="5.08" y2="12.7" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="1"/>
<junction x="0" y="12.7"/>
<junction x="15.24" y="12.7"/>
<label x="2.54" y="12.7" size="1.778" layer="95"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="5.08" y1="12.7" x2="0" y2="12.7" width="0.1524" layer="91"/>
<junction x="5.08" y="12.7"/>
</segment>
</net>
<net name="QEI_H" class="0">
<segment>
<pinref part="U1" gate="A" pin="PGD3/RP36/PWM3H/IOMD0/RC3"/>
<wire x1="294.64" y1="-7.62" x2="309.88" y2="-7.62" width="0.1524" layer="91"/>
<junction x="294.64" y="-7.62"/>
<junction x="309.88" y="-7.62"/>
<label x="317.5" y="-7.62" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="342.9" y1="81.28" x2="358.14" y2="81.28" width="0.1524" layer="91"/>
<pinref part="ENCODER" gate="A" pin="5"/>
<junction x="342.9" y="81.28"/>
<junction x="358.14" y="81.28"/>
<label x="360.68" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="QEI_I" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP37/PWM3L/IOMD1/RC4"/>
<wire x1="294.64" y1="-5.08" x2="309.88" y2="-5.08" width="0.1524" layer="91"/>
<junction x="294.64" y="-5.08"/>
<junction x="309.88" y="-5.08"/>
<label x="317.5" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="342.9" y1="78.74" x2="358.14" y2="78.74" width="0.1524" layer="91"/>
<pinref part="ENCODER" gate="A" pin="4"/>
<junction x="342.9" y="78.74"/>
<junction x="358.14" y="78.74"/>
<label x="360.68" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="QEI_B" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP44/IOMD8/IOMF8/RC11"/>
<wire x1="294.64" y1="0" x2="309.88" y2="0" width="0.1524" layer="91"/>
<junction x="294.64" y="0"/>
<junction x="309.88" y="0"/>
<label x="317.5" y="0" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="342.9" y1="76.2" x2="358.14" y2="76.2" width="0.1524" layer="91"/>
<pinref part="ENCODER" gate="A" pin="3"/>
<junction x="342.9" y="76.2"/>
<junction x="358.14" y="76.2"/>
<label x="360.68" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="QEI_A" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP43/IOMD9/IOMF9/RC10"/>
<wire x1="294.64" y1="-2.54" x2="309.88" y2="-2.54" width="0.1524" layer="91"/>
<junction x="294.64" y="-2.54"/>
<junction x="309.88" y="-2.54"/>
<label x="317.5" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="342.9" y1="73.66" x2="358.14" y2="73.66" width="0.1524" layer="91"/>
<pinref part="ENCODER" gate="A" pin="2"/>
<junction x="342.9" y="73.66"/>
<junction x="358.14" y="73.66"/>
<label x="360.68" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="QEI_PWR" class="1">
<segment>
<pinref part="ENCODER" gate="A" pin="6"/>
<pinref part="SJ1" gate="G$1" pin="2"/>
<wire x1="342.9" y1="83.82" x2="353.06" y2="83.82" width="0.1524" layer="91"/>
<wire x1="353.06" y1="83.82" x2="353.06" y2="91.44" width="0.1524" layer="91"/>
<junction x="342.9" y="83.82"/>
<junction x="353.06" y="91.44"/>
<label x="340.36" y="91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="IMU_CS" class="0">
<segment>
<pinref part="U1" gate="A" pin="PGD1/AD1AN5/CMP1C/ISRC0/IBIAS0/RP20/SDA1/RB3"/>
<wire x1="76.2" y1="-20.32" x2="60.96" y2="-20.32" width="0.1524" layer="91"/>
<junction x="60.96" y="-20.32"/>
<junction x="76.2" y="-20.32"/>
<label x="48.26" y="-20.32" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="279.4" y1="-101.6" x2="264.16" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="AC1" gate="G$1" pin="CSB"/>
<junction x="279.4" y="-101.6"/>
<junction x="264.16" y="-101.6"/>
<label x="269.24" y="-101.6" size="1.778" layer="95"/>
<pinref part="TP21" gate="G$1" pin="TP"/>
</segment>
</net>
<net name="RB1" class="0">
<segment>
<pinref part="U1" gate="A" pin="TMS/OA2IN-/AD1AN4/AD2ANN1/RP18/RB1"/>
<wire x1="76.2" y1="-5.08" x2="60.96" y2="-5.08" width="0.1524" layer="91"/>
<junction x="76.2" y="-5.08"/>
<junction x="60.96" y="-5.08"/>
<label x="66.04" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="35.56" y1="58.42" x2="22.86" y2="58.42" width="0.1524" layer="91"/>
<pinref part="MISC_ANA" gate="A" pin="4"/>
<junction x="22.86" y="58.42"/>
<junction x="35.56" y="58.42"/>
<label x="38.1" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDI3" class="0">
<segment>
<pinref part="U1" gate="A" pin="AD1AN11/RP25/RB8"/>
<wire x1="76.2" y1="-10.16" x2="60.96" y2="-10.16" width="0.1524" layer="91"/>
<junction x="76.2" y="-10.16"/>
<junction x="60.96" y="-10.16"/>
<label x="50.8" y="-10.16" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="279.4" y1="-104.14" x2="264.16" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="AC1" gate="G$1" pin="MISO"/>
<junction x="279.4" y="-104.14"/>
<junction x="264.16" y="-104.14"/>
<label x="271.78" y="-104.14" size="1.778" layer="95"/>
<pinref part="TP20" gate="G$1" pin="TP"/>
</segment>
</net>
<net name="SDO3" class="0">
<segment>
<pinref part="U1" gate="A" pin="AD2AN10/RP26/RB9"/>
<wire x1="76.2" y1="-12.7" x2="60.96" y2="-12.7" width="0.1524" layer="91"/>
<junction x="76.2" y="-12.7"/>
<junction x="60.96" y="-12.7"/>
<label x="50.8" y="-12.7" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="330.2" y1="-91.44" x2="314.96" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="AC1" gate="G$1" pin="MOSI"/>
<junction x="314.96" y="-91.44"/>
<junction x="330.2" y="-91.44"/>
<label x="320.04" y="-91.44" size="1.778" layer="95"/>
<pinref part="TP9" gate="G$1" pin="TP"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="AC1" gate="G$1" pin="A_EXTC"/>
<wire x1="279.4" y1="-93.98" x2="246.38" y2="-93.98" width="0.1524" layer="91"/>
<junction x="279.4" y="-93.98"/>
<junction x="246.38" y="-93.98"/>
<pinref part="C22" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="AC1" gate="G$1" pin="D_EXTC"/>
<wire x1="314.96" y1="-99.06" x2="350.52" y2="-99.06" width="0.1524" layer="91"/>
<junction x="314.96" y="-99.06"/>
<junction x="350.52" y="-99.06"/>
<pinref part="C21" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="A_1"/>
<pinref part="ISO1_R" gate="G$1" pin="1"/>
<junction x="144.78" y="-96.52"/>
</segment>
</net>
<net name="ISO1_S" class="0">
<segment>
<pinref part="ISO1_R" gate="G$1" pin="2"/>
<wire x1="134.62" y1="-96.52" x2="127" y2="-96.52" width="0.1524" layer="91"/>
<junction x="127" y="-96.52"/>
<junction x="134.62" y="-96.52"/>
<label x="116.84" y="-96.52" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="309.88" y1="15.24" x2="294.64" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="TCK/RP50/PWM2L/IOMD3/RD1"/>
<junction x="294.64" y="15.24"/>
<junction x="309.88" y="15.24"/>
<label x="317.5" y="15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="A_2"/>
<pinref part="ISO1_R1" gate="G$1" pin="1"/>
<junction x="144.78" y="-101.6"/>
</segment>
</net>
<net name="ISO2_S" class="0">
<segment>
<pinref part="ISO1_R1" gate="G$1" pin="2"/>
<wire x1="134.62" y1="-101.6" x2="127" y2="-101.6" width="0.1524" layer="91"/>
<junction x="134.62" y="-101.6"/>
<junction x="127" y="-101.6"/>
<label x="116.84" y="-101.6" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="309.88" y1="22.86" x2="294.64" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="RP54/ASCL1/RD5"/>
<junction x="294.64" y="22.86"/>
<junction x="309.88" y="22.86"/>
<label x="317.5" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="A_3"/>
<pinref part="ISO1_R3" gate="G$1" pin="1"/>
<junction x="144.78" y="-106.68"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="A_4"/>
<pinref part="ISO1_R2" gate="G$1" pin="1"/>
<junction x="144.78" y="-111.76"/>
</segment>
</net>
<net name="IOS3_P" class="0">
<segment>
<pinref part="ISO1_R3" gate="G$1" pin="2"/>
<junction x="134.62" y="-106.68"/>
<wire x1="134.62" y1="-106.68" x2="127" y2="-106.68" width="0.1524" layer="91"/>
<junction x="127" y="-106.68"/>
<label x="116.84" y="-106.68" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="218.44" y1="-93.98" x2="210.82" y2="-93.98" width="0.1524" layer="91"/>
<pinref part="ISO_IO" gate="1" pin="10"/>
<junction x="210.82" y="-93.98"/>
<junction x="218.44" y="-93.98"/>
<label x="220.98" y="-93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="ISO4_P" class="0">
<segment>
<pinref part="ISO1_R2" gate="G$1" pin="2"/>
<wire x1="134.62" y1="-111.76" x2="127" y2="-111.76" width="0.1524" layer="91"/>
<junction x="127" y="-111.76"/>
<junction x="134.62" y="-111.76"/>
<label x="116.84" y="-111.76" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="218.44" y1="-99.06" x2="210.82" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="ISO_IO" gate="1" pin="8"/>
<junction x="210.82" y="-99.06"/>
<junction x="218.44" y="-99.06"/>
<label x="220.98" y="-99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="ISO3_N" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="K_3"/>
<wire x1="144.78" y1="-109.22" x2="127" y2="-109.22" width="0.1524" layer="91"/>
<junction x="127" y="-109.22"/>
<junction x="144.78" y="-109.22"/>
<label x="116.84" y="-109.22" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="218.44" y1="-96.52" x2="210.82" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="ISO_IO" gate="1" pin="9"/>
<junction x="210.82" y="-96.52"/>
<junction x="218.44" y="-96.52"/>
<label x="220.98" y="-96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="ISO4_N" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="K_4"/>
<wire x1="144.78" y1="-114.3" x2="127" y2="-114.3" width="0.1524" layer="91"/>
<junction x="127" y="-114.3"/>
<junction x="144.78" y="-114.3"/>
<label x="116.84" y="-114.3" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="218.44" y1="-101.6" x2="210.82" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="ISO_IO" gate="1" pin="7"/>
<junction x="210.82" y="-101.6"/>
<junction x="218.44" y="-101.6"/>
<label x="220.98" y="-101.6" size="1.778" layer="95"/>
</segment>
</net>
<net name="IOS1_P" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="C_4"/>
<wire x1="170.18" y1="-96.52" x2="182.88" y2="-96.52" width="0.1524" layer="91"/>
<junction x="170.18" y="-96.52"/>
<junction x="182.88" y="-96.52"/>
<label x="187.96" y="-96.52" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="210.82" y1="-114.3" x2="218.44" y2="-114.3" width="0.1524" layer="91"/>
<pinref part="ISO_IO" gate="1" pin="2"/>
<junction x="210.82" y="-114.3"/>
<junction x="218.44" y="-114.3"/>
<label x="220.98" y="-114.3" size="1.778" layer="95"/>
</segment>
</net>
<net name="IOS1_N" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="E_4"/>
<wire x1="170.18" y1="-99.06" x2="182.88" y2="-99.06" width="0.1524" layer="91"/>
<junction x="170.18" y="-99.06"/>
<junction x="182.88" y="-99.06"/>
<label x="187.96" y="-99.06" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="210.82" y1="-116.84" x2="218.44" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="ISO_IO" gate="1" pin="1"/>
<junction x="210.82" y="-116.84"/>
<junction x="218.44" y="-116.84"/>
<label x="220.98" y="-116.84" size="1.778" layer="95"/>
</segment>
</net>
<net name="ISO2_P" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="C_3"/>
<wire x1="170.18" y1="-101.6" x2="182.88" y2="-101.6" width="0.1524" layer="91"/>
<junction x="170.18" y="-101.6"/>
<junction x="182.88" y="-101.6"/>
<label x="187.96" y="-101.6" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="210.82" y1="-109.22" x2="218.44" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="ISO_IO" gate="1" pin="4"/>
<junction x="210.82" y="-109.22"/>
<junction x="218.44" y="-109.22"/>
<label x="220.98" y="-109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="IOS2_N" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="E_3"/>
<wire x1="170.18" y1="-104.14" x2="182.88" y2="-104.14" width="0.1524" layer="91"/>
<junction x="170.18" y="-104.14"/>
<junction x="182.88" y="-104.14"/>
<label x="187.96" y="-104.14" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="210.82" y1="-111.76" x2="218.44" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="ISO_IO" gate="1" pin="3"/>
<junction x="210.82" y="-111.76"/>
<junction x="218.44" y="-111.76"/>
<label x="220.98" y="-111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="IOS3_O" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="C_2"/>
<wire x1="170.18" y1="-106.68" x2="182.88" y2="-106.68" width="0.1524" layer="91"/>
<junction x="170.18" y="-106.68"/>
<junction x="182.88" y="-106.68"/>
<label x="187.96" y="-106.68" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="294.64" y1="20.32" x2="309.88" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="TDI/RP52/PWM1L/IOMD5/RD3"/>
<junction x="294.64" y="20.32"/>
<junction x="309.88" y="20.32"/>
<label x="317.5" y="20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="IOS4_O" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="C_1"/>
<wire x1="170.18" y1="-111.76" x2="182.88" y2="-111.76" width="0.1524" layer="91"/>
<junction x="170.18" y="-111.76"/>
<junction x="182.88" y="-111.76"/>
<label x="187.96" y="-111.76" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="294.64" y1="38.1" x2="309.88" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="RP53/PCI22/RD4"/>
<junction x="294.64" y="38.1"/>
<junction x="309.88" y="38.1"/>
<label x="317.5" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="U1TX" class="0">
<segment>
<pinref part="U1" gate="A" pin="AD1ANN2/AD1AN8/RP23/RB6"/>
<wire x1="76.2" y1="-25.4" x2="60.96" y2="-25.4" width="0.1524" layer="91"/>
<label x="50.8" y="-25.4" size="1.778" layer="95"/>
<junction x="76.2" y="-25.4"/>
<junction x="60.96" y="-25.4"/>
</segment>
<segment>
<wire x1="68.58" y1="-50.8" x2="53.34" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="U1_TTL" gate="1" pin="3"/>
<junction x="53.34" y="-50.8"/>
<junction x="68.58" y="-50.8"/>
<label x="73.66" y="-50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="U1RX" class="0">
<segment>
<pinref part="U1" gate="A" pin="AD2ANN2/AD2AN8/RP24/IOMF0/RB7"/>
<wire x1="76.2" y1="-27.94" x2="60.96" y2="-27.94" width="0.1524" layer="91"/>
<label x="50.8" y="-27.94" size="1.778" layer="95"/>
<junction x="76.2" y="-27.94"/>
<junction x="60.96" y="-27.94"/>
</segment>
<segment>
<wire x1="68.58" y1="-53.34" x2="53.34" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="U1_TTL" gate="1" pin="2"/>
<junction x="53.34" y="-53.34"/>
<junction x="68.58" y="-53.34"/>
<label x="73.66" y="-53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="SW1" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP55/ASDA1/RD6"/>
<wire x1="294.64" y1="25.4" x2="309.88" y2="25.4" width="0.1524" layer="91"/>
<junction x="294.64" y="25.4"/>
<junction x="309.88" y="25.4"/>
<label x="317.5" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="355.6" y1="38.1" x2="363.22" y2="38.1" width="0.1524" layer="91"/>
<pinref part="SW1" gate="G$1" pin="NO"/>
<junction x="355.6" y="38.1"/>
<junction x="363.22" y="38.1"/>
<label x="365.76" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="SW2" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP56/ASCL2/IOMD7/IOMF4/RD7"/>
<wire x1="294.64" y1="27.94" x2="309.88" y2="27.94" width="0.1524" layer="91"/>
<junction x="294.64" y="27.94"/>
<junction x="309.88" y="27.94"/>
<label x="317.5" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="355.6" y1="22.86" x2="363.22" y2="22.86" width="0.1524" layer="91"/>
<pinref part="SW2" gate="G$1" pin="NO"/>
<junction x="355.6" y="22.86"/>
<junction x="363.22" y="22.86"/>
<label x="365.76" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="TXDE" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP38/PWM4L/RC5"/>
<wire x1="294.64" y1="-10.16" x2="309.88" y2="-10.16" width="0.1524" layer="91"/>
<junction x="294.64" y="-10.16"/>
<junction x="309.88" y="-10.16"/>
<label x="317.5" y="-10.16" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="53.34" y1="-48.26" x2="68.58" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="U1_TTL" gate="1" pin="4"/>
<junction x="53.34" y="-48.26"/>
<junction x="68.58" y="-48.26"/>
<label x="73.66" y="-48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="RC6" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP39/RC6"/>
<wire x1="294.64" y1="-27.94" x2="309.88" y2="-27.94" width="0.1524" layer="91"/>
<junction x="294.64" y="-27.94"/>
<junction x="309.88" y="-27.94"/>
<label x="302.26" y="-27.94" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="86.36" y1="-119.38" x2="101.6" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="PWM" gate="1" pin="3"/>
<junction x="86.36" y="-119.38"/>
<junction x="101.6" y="-119.38"/>
<label x="88.9" y="-119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="RC7" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP40/RC7"/>
<wire x1="294.64" y1="-25.4" x2="309.88" y2="-25.4" width="0.1524" layer="91"/>
<junction x="294.64" y="-25.4"/>
<junction x="309.88" y="-25.4"/>
<label x="302.26" y="-25.4" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="86.36" y1="-121.92" x2="101.6" y2="-121.92" width="0.1524" layer="91"/>
<pinref part="PWM" gate="1" pin="2"/>
<junction x="86.36" y="-121.92"/>
<junction x="101.6" y="-121.92"/>
<label x="88.9" y="-121.92" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM2H" class="0">
<segment>
<pinref part="U1" gate="A" pin="OA1OUT/AD1AN0/CMP1A/RP3/RA2"/>
<wire x1="76.2" y1="17.78" x2="60.96" y2="17.78" width="0.1524" layer="91"/>
<junction x="76.2" y="17.78"/>
<junction x="60.96" y="17.78"/>
<label x="50.8" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="101.6" y1="-114.3" x2="86.36" y2="-114.3" width="0.1524" layer="91"/>
<pinref part="PWM" gate="1" pin="5"/>
<junction x="86.36" y="-114.3"/>
<junction x="101.6" y="-114.3"/>
<label x="88.9" y="-114.3" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM2L" class="0">
<segment>
<pinref part="U1" gate="A" pin="OA1IN-/AD1ANN1/AD2AN0/RP4/RA3"/>
<wire x1="76.2" y1="15.24" x2="60.96" y2="15.24" width="0.1524" layer="91"/>
<junction x="76.2" y="15.24"/>
<junction x="60.96" y="15.24"/>
<label x="50.8" y="15.24" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="101.6" y1="-116.84" x2="86.36" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="PWM" gate="1" pin="4"/>
<junction x="86.36" y="-116.84"/>
<junction x="101.6" y="-116.84"/>
<label x="88.9" y="-116.84" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM3H" class="0">
<segment>
<pinref part="U1" gate="A" pin="OA1IN+/AD1AN1/CMP1B/RP5/RA4"/>
<wire x1="76.2" y1="12.7" x2="60.96" y2="12.7" width="0.1524" layer="91"/>
<junction x="76.2" y="12.7"/>
<junction x="60.96" y="12.7"/>
<label x="50.8" y="12.7" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="101.6" y1="-109.22" x2="86.36" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="PWM" gate="1" pin="7"/>
<junction x="86.36" y="-109.22"/>
<junction x="101.6" y="-109.22"/>
<label x="88.9" y="-109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM3L" class="0">
<segment>
<pinref part="U1" gate="A" pin="OA3OUT/AD1AN3/CMP3A/RP6/RA5"/>
<wire x1="76.2" y1="10.16" x2="60.96" y2="10.16" width="0.1524" layer="91"/>
<junction x="76.2" y="10.16"/>
<junction x="60.96" y="10.16"/>
<label x="50.8" y="10.16" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="101.6" y1="-111.76" x2="86.36" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="PWM" gate="1" pin="6"/>
<junction x="86.36" y="-111.76"/>
<junction x="101.6" y="-111.76"/>
<label x="88.9" y="-111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="TEST_P1" class="0">
<segment>
<pinref part="U1" gate="A" pin="AD1AN10/RP12/RA11"/>
<wire x1="76.2" y1="33.02" x2="60.96" y2="33.02" width="0.1524" layer="91"/>
<junction x="76.2" y="33.02"/>
<junction x="60.96" y="33.02"/>
<label x="66.04" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="101.6" y1="-101.6" x2="99.06" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="PWM" gate="1" pin="10"/>
<junction x="86.36" y="-101.6"/>
<junction x="101.6" y="-101.6"/>
<label x="91.44" y="-101.6" size="1.778" layer="95"/>
<pinref part="TEST_P1" gate="G$1" pin="TP"/>
<wire x1="99.06" y1="-101.6" x2="86.36" y2="-101.6" width="0.1524" layer="91"/>
<junction x="99.06" y="-101.6"/>
</segment>
</net>
<net name="PWM1L" class="0">
<segment>
<pinref part="U1" gate="A" pin="AD2AN9/ISRC3/IBIAS3/RP9/RA8"/>
<wire x1="76.2" y1="30.48" x2="60.96" y2="30.48" width="0.1524" layer="91"/>
<junction x="76.2" y="30.48"/>
<junction x="60.96" y="30.48"/>
<label x="50.8" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="101.6" y1="-106.68" x2="86.36" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="PWM" gate="1" pin="8"/>
<junction x="86.36" y="-106.68"/>
<junction x="101.6" y="-106.68"/>
<label x="91.44" y="-106.68" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="147.32" y1="-53.34" x2="132.08" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="GLCD" gate="1" pin="9"/>
<junction x="132.08" y="-53.34"/>
<junction x="147.32" y="-53.34"/>
<label x="134.62" y="-53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM1H" class="0">
<segment>
<pinref part="U1" gate="A" pin="AD1ANN3/AD1AN9/RP10/RA9"/>
<wire x1="76.2" y1="27.94" x2="60.96" y2="27.94" width="0.1524" layer="91"/>
<junction x="76.2" y="27.94"/>
<junction x="60.96" y="27.94"/>
<label x="50.8" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="101.6" y1="-104.14" x2="86.36" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="PWM" gate="1" pin="9"/>
<junction x="86.36" y="-104.14"/>
<junction x="101.6" y="-104.14"/>
<label x="91.44" y="-104.14" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="147.32" y1="-50.8" x2="132.08" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="GLCD" gate="1" pin="10"/>
<junction x="132.08" y="-50.8"/>
<junction x="147.32" y="-50.8"/>
<label x="134.62" y="-50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="RA6" class="0">
<segment>
<pinref part="U1" gate="A" pin="OA3IN-/AD1AN2/RP7/RA6"/>
<wire x1="76.2" y1="7.62" x2="60.96" y2="7.62" width="0.1524" layer="91"/>
<junction x="60.96" y="7.62"/>
<junction x="76.2" y="7.62"/>
<label x="66.04" y="7.62" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="35.56" y1="60.96" x2="22.86" y2="60.96" width="0.1524" layer="91"/>
<pinref part="MISC_ANA" gate="A" pin="5"/>
<junction x="22.86" y="60.96"/>
<junction x="35.56" y="60.96"/>
<label x="38.1" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="DLED" class="0">
<segment>
<pinref part="U1" gate="A" pin="OA3IN+/AD2AN2/CMP3B/RP22/RB5"/>
<wire x1="76.2" y1="5.08" x2="60.96" y2="5.08" width="0.1524" layer="91"/>
<junction x="60.96" y="5.08"/>
<junction x="76.2" y="5.08"/>
<label x="50.8" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="248.92" y1="109.22" x2="248.92" y2="93.98" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<junction x="248.92" y="93.98"/>
<junction x="248.92" y="109.22"/>
<label x="248.92" y="101.6" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="SCK3" class="0">
<segment>
<pinref part="U1" gate="A" pin="RP57/ASDA2/IOMD6/IOMF3/RD8"/>
<wire x1="294.64" y1="30.48" x2="309.88" y2="30.48" width="0.1524" layer="91"/>
<junction x="294.64" y="30.48"/>
<junction x="309.88" y="30.48"/>
<label x="317.5" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="314.96" y1="-93.98" x2="330.2" y2="-93.98" width="0.1524" layer="91"/>
<pinref part="AC1" gate="G$1" pin="SCK"/>
<junction x="314.96" y="-93.98"/>
<junction x="330.2" y="-93.98"/>
<label x="320.04" y="-93.98" size="1.778" layer="95"/>
<pinref part="TP14" gate="G$1" pin="TP"/>
</segment>
</net>
<net name="3.3REG" class="1">
<segment>
<pinref part="IC3" gate="G$1" pin="VOUT"/>
<wire x1="7.62" y1="109.22" x2="2.54" y2="109.22" width="0.1524" layer="91"/>
<junction x="7.62" y="109.22"/>
<junction x="2.54" y="109.22"/>
<label x="-2.54" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="50.8" y1="104.14" x2="45.72" y2="104.14" width="0.1524" layer="91"/>
<pinref part="AVDD_JUMPER" gate="G$1" pin="1"/>
<junction x="45.72" y="104.14"/>
<junction x="50.8" y="104.14"/>
<label x="35.56" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="AVDD_IN" class="1">
<segment>
<pinref part="E1" gate="G$1" pin="1"/>
<pinref part="AVDD_JUMPER" gate="G$1" pin="2"/>
<wire x1="78.74" y1="109.22" x2="63.5" y2="109.22" width="0.1524" layer="91"/>
<junction x="55.88" y="109.22"/>
<junction x="78.74" y="109.22"/>
<label x="63.5" y="109.22" size="1.778" layer="95"/>
<pinref part="C28" gate="G$1" pin="1"/>
<wire x1="63.5" y1="109.22" x2="55.88" y2="109.22" width="0.1524" layer="91"/>
<junction x="63.5" y="109.22"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,76.2,35.56,U1,VDD_2,VDD,,,"/>
<approved hash="104,1,76.2,0,U1,VDD_3,VDD,,,"/>
<approved hash="104,1,76.2,-17.78,U1,VDD_4,VDD,,,"/>
<approved hash="104,1,294.64,-15.24,U1,VDD_5,VDD,,,"/>
<approved hash="104,1,294.64,5.08,U1,VDD_6,VDD,,,"/>
<approved hash="104,1,35.56,111.76,IC3,GND,VSS,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
