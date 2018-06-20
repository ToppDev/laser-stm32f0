<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="STM32F0">
<packages>
<package name="STM32F051">
<pad name="VDD5" x="0" y="11.43" drill="0.8" shape="square"/>
<pad name="GND1" x="0" y="10.16" drill="0.8" shape="square"/>
<pad name="PB9" x="0" y="8.89" drill="0.8" shape="square"/>
<pad name="PB8" x="0" y="7.62" drill="0.8" shape="square"/>
<pad name="VDD" x="0" y="6.35" drill="0.8" shape="square"/>
<pad name="BOOT0" x="0" y="5.08" drill="0.8" shape="square"/>
<pad name="PB7" x="0" y="3.81" drill="0.8" shape="square"/>
<pad name="PB6" x="0" y="2.54" drill="0.8" shape="square"/>
<pad name="PB5" x="0" y="1.27" drill="0.8" shape="square"/>
<pad name="PB4" x="0" y="0" drill="0.8" shape="square"/>
<pad name="PB3" x="0" y="-1.27" drill="0.8" shape="square"/>
<pad name="PD2" x="0" y="-2.54" drill="0.8" shape="square"/>
<pad name="PC12" x="0" y="-3.81" drill="0.8" shape="square"/>
<pad name="PC11" x="0" y="-5.08" drill="0.8" shape="square"/>
<pad name="PC10" x="0" y="-6.35" drill="0.8" shape="square"/>
<pad name="PA15" x="0" y="-7.62" drill="0.8" shape="square"/>
<pad name="PA14" x="0" y="-8.89" drill="0.8" shape="square"/>
<pad name="PF7" x="0" y="-10.16" drill="0.8" shape="square"/>
<pad name="PF6" x="0" y="-11.43" drill="0.8" shape="square"/>
<pad name="PA13" x="0" y="-12.7" drill="0.8" shape="square"/>
<pad name="PA12" x="0" y="-13.97" drill="0.8" shape="square"/>
<pad name="PA11" x="0" y="-15.24" drill="0.8" shape="square"/>
<pad name="PA10" x="0" y="-16.51" drill="0.8" shape="square"/>
<pad name="PA9" x="0" y="-17.78" drill="0.8" shape="square"/>
<pad name="PA8" x="0" y="-19.05" drill="0.8" shape="square"/>
<pad name="PC9" x="0" y="-20.32" drill="0.8" shape="square"/>
<pad name="PC8" x="0" y="-21.59" drill="0.8" shape="square"/>
<pad name="PC7" x="0" y="-22.86" drill="0.8" shape="square"/>
<pad name="PC6" x="0" y="-24.13" drill="0.8" shape="square"/>
<pad name="PB15" x="0" y="-25.4" drill="0.8" shape="square"/>
<pad name="PB14" x="0" y="-26.67" drill="0.8" shape="square"/>
<pad name="PB13" x="0" y="-27.94" drill="0.8" shape="square"/>
<pad name="GND2" x="0" y="-29.21" drill="0.8" shape="square"/>
<pad name="GND5" x="-19.05" y="-29.21" drill="0.8" shape="square"/>
<pad name="PB12" x="-19.05" y="-27.94" drill="0.8" shape="square"/>
<pad name="PB11" x="-19.05" y="-26.67" drill="0.8" shape="square"/>
<pad name="PB10" x="-19.05" y="-25.4" drill="0.8" shape="square"/>
<pad name="PB2" x="-19.05" y="-24.13" drill="0.8" shape="square"/>
<pad name="PB1" x="-19.05" y="-22.86" drill="0.8" shape="square"/>
<pad name="PB0" x="-19.05" y="-21.59" drill="0.8" shape="square"/>
<pad name="PC5" x="-19.05" y="-20.32" drill="0.8" shape="square"/>
<pad name="PC4" x="-19.05" y="-19.05" drill="0.8" shape="square"/>
<pad name="PA7" x="-19.05" y="-17.78" drill="0.8" shape="square"/>
<pad name="PA6" x="-19.05" y="-16.51" drill="0.8" shape="square"/>
<pad name="PA5" x="-19.05" y="-15.24" drill="0.8" shape="square"/>
<pad name="PA4" x="-19.05" y="-13.97" drill="0.8" shape="square"/>
<pad name="PF5" x="-19.05" y="-12.7" drill="0.8" shape="square"/>
<pad name="PF4" x="-19.05" y="-11.43" drill="0.8" shape="square"/>
<pad name="PA3" x="-19.05" y="-10.16" drill="0.8" shape="square"/>
<pad name="PA2" x="-19.05" y="-8.89" drill="0.8" shape="square"/>
<pad name="PA1" x="-19.05" y="-7.62" drill="0.8" shape="square"/>
<pad name="PA0" x="-19.05" y="-6.35" drill="0.8" shape="square"/>
<pad name="PC3" x="-19.05" y="-5.08" drill="0.8" shape="square"/>
<pad name="PC2" x="-19.05" y="-3.81" drill="0.8" shape="square"/>
<pad name="PC1" x="-19.05" y="-2.54" drill="0.8" shape="square"/>
<pad name="PC0" x="-19.05" y="-1.27" drill="0.8" shape="square"/>
<pad name="NRST" x="-19.05" y="0" drill="0.8" shape="square"/>
<pad name="GND4" x="-19.05" y="1.27" drill="0.8" shape="square"/>
<pad name="PF1" x="-19.05" y="2.54" drill="0.8" shape="square"/>
<pad name="PF0" x="-19.05" y="3.81" drill="0.8" shape="square"/>
<pad name="PC15" x="-19.05" y="5.08" drill="0.8" shape="square"/>
<pad name="PC14" x="-19.05" y="6.35" drill="0.8" shape="square"/>
<pad name="PC13" x="-19.05" y="7.62" drill="0.8" shape="square"/>
<pad name="VBAT" x="-19.05" y="8.89" drill="0.8" shape="square"/>
<pad name="GND3" x="-19.05" y="10.16" drill="0.8" shape="square"/>
<pad name="VDD3" x="-19.05" y="11.43" drill="0.8" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="STM32F051">
<pin name="VDD5" x="-5.08" y="25.4" visible="off" length="middle"/>
<pin name="GND1" x="-5.08" y="22.86" visible="off" length="middle"/>
<pin name="PB9" x="-5.08" y="20.32" visible="off" length="middle"/>
<pin name="PB8" x="-5.08" y="17.78" visible="off" length="middle"/>
<pin name="VDD" x="-5.08" y="15.24" visible="off" length="middle"/>
<pin name="BOOT0" x="-5.08" y="12.7" visible="off" length="middle"/>
<pin name="PB7" x="-5.08" y="10.16" visible="off" length="middle"/>
<pin name="PB6" x="-5.08" y="7.62" visible="off" length="middle"/>
<pin name="PB5" x="-5.08" y="5.08" visible="off" length="middle"/>
<pin name="PB4" x="-5.08" y="2.54" visible="off" length="middle"/>
<pin name="PB3" x="-5.08" y="0" visible="off" length="middle"/>
<pin name="PD2" x="-5.08" y="-2.54" visible="off" length="middle"/>
<pin name="PC12" x="-5.08" y="-5.08" visible="off" length="middle"/>
<pin name="PC11" x="-5.08" y="-7.62" visible="off" length="middle"/>
<pin name="PC10" x="-5.08" y="-10.16" visible="off" length="middle"/>
<pin name="PA15" x="-5.08" y="-12.7" visible="off" length="middle"/>
<pin name="PA14" x="-5.08" y="-15.24" visible="off" length="middle"/>
<pin name="PF7" x="-5.08" y="-17.78" visible="off" length="middle"/>
<pin name="PF6" x="-5.08" y="-20.32" visible="off" length="middle"/>
<pin name="PA13" x="-5.08" y="-22.86" visible="off" length="middle"/>
<pin name="PA12" x="-5.08" y="-25.4" visible="off" length="middle"/>
<pin name="PA11" x="-5.08" y="-27.94" visible="off" length="middle"/>
<pin name="PA10" x="-5.08" y="-30.48" visible="off" length="middle"/>
<pin name="PA9" x="-5.08" y="-33.02" visible="off" length="middle"/>
<pin name="PA8" x="-5.08" y="-35.56" visible="off" length="middle"/>
<pin name="PC9" x="-5.08" y="-38.1" visible="off" length="middle"/>
<pin name="PC8" x="-5.08" y="-40.64" visible="off" length="middle"/>
<pin name="PC7" x="-5.08" y="-43.18" visible="off" length="middle"/>
<pin name="PC6" x="-5.08" y="-45.72" visible="off" length="middle"/>
<pin name="PB15" x="-5.08" y="-48.26" visible="off" length="middle"/>
<pin name="PB14" x="-5.08" y="-50.8" visible="off" length="middle"/>
<pin name="PB13" x="-5.08" y="-53.34" visible="off" length="middle"/>
<pin name="GND2" x="-5.08" y="-55.88" visible="off" length="middle"/>
<text x="-7.62" y="22.86" size="1.778" layer="95" align="center-right">GND</text>
<text x="-7.62" y="-55.88" size="1.778" layer="95" align="center-right">GND</text>
<text x="-7.62" y="25.4" size="1.778" layer="95" align="center-right">VDD5</text>
<text x="-7.62" y="20.32" size="1.778" layer="95" align="center-right">PB9</text>
<text x="-7.62" y="17.78" size="1.778" layer="95" align="center-right">PB8</text>
<text x="-7.62" y="15.24" size="1.778" layer="95" align="center-right">VDD</text>
<text x="-7.62" y="12.7" size="1.778" layer="95" align="center-right">BOOT0</text>
<text x="-7.62" y="10.16" size="1.778" layer="95" align="center-right">PB7</text>
<text x="-7.62" y="7.62" size="1.778" layer="95" align="center-right">PB6</text>
<text x="-7.62" y="5.08" size="1.778" layer="95" align="center-right">PB5</text>
<text x="-7.62" y="2.54" size="1.778" layer="95" align="center-right">PB4</text>
<text x="-7.62" y="0" size="1.778" layer="95" align="center-right">PB3</text>
<text x="-7.62" y="-2.54" size="1.778" layer="95" align="center-right">PD2</text>
<text x="-7.62" y="-5.08" size="1.778" layer="95" align="center-right">PC12</text>
<text x="-7.62" y="-7.62" size="1.778" layer="95" align="center-right">PC11</text>
<text x="-7.62" y="-10.16" size="1.778" layer="95" align="center-right">PC10</text>
<text x="-7.62" y="-12.7" size="1.778" layer="95" align="center-right">PA15</text>
<text x="-7.62" y="-15.24" size="1.778" layer="95" align="center-right">PA14</text>
<text x="-7.62" y="-17.78" size="1.778" layer="95" align="center-right">PF7</text>
<text x="-7.62" y="-20.32" size="1.778" layer="95" align="center-right">PF6</text>
<text x="-7.62" y="-22.86" size="1.778" layer="95" align="center-right">PA13</text>
<text x="-7.62" y="-25.4" size="1.778" layer="95" align="center-right">PA12</text>
<text x="-7.62" y="-27.94" size="1.778" layer="95" align="center-right">PA11</text>
<text x="-7.62" y="-30.48" size="1.778" layer="95" align="center-right">PA10</text>
<text x="-7.62" y="-33.02" size="1.778" layer="95" align="center-right">PA9</text>
<text x="-7.62" y="-35.56" size="1.778" layer="95" align="center-right">PA8</text>
<text x="-7.62" y="-38.1" size="1.778" layer="95" align="center-right">PC9</text>
<text x="-7.62" y="-40.64" size="1.778" layer="95" align="center-right">PC8</text>
<text x="-7.62" y="-43.18" size="1.778" layer="95" align="center-right">PC7</text>
<text x="-7.62" y="-45.72" size="1.778" layer="95" align="center-right">PC6</text>
<text x="-7.62" y="-48.26" size="1.778" layer="95" align="center-right">PB15</text>
<text x="-7.62" y="-50.8" size="1.778" layer="95" align="center-right">PB14</text>
<text x="-7.62" y="-53.34" size="1.778" layer="95" align="center-right">PB13</text>
<wire x1="-5.08" y1="27.94" x2="-5.08" y2="-58.42" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-58.42" x2="-43.18" y2="-58.42" width="0.254" layer="94"/>
<wire x1="-43.18" y1="-58.42" x2="-43.18" y2="27.94" width="0.254" layer="94"/>
<wire x1="-43.18" y1="27.94" x2="-5.08" y2="27.94" width="0.254" layer="94"/>
<pin name="VDD3" x="-43.18" y="25.4" visible="off" length="middle" rot="R180"/>
<pin name="GND3" x="-43.18" y="22.86" visible="off" length="middle" rot="R180"/>
<pin name="VBAT" x="-43.18" y="20.32" visible="off" length="middle" rot="R180"/>
<pin name="PC13" x="-43.18" y="17.78" visible="off" length="middle" rot="R180"/>
<pin name="PC14" x="-43.18" y="15.24" visible="off" length="middle" rot="R180"/>
<pin name="PC15" x="-43.18" y="12.7" visible="off" length="middle" rot="R180"/>
<pin name="PF0" x="-43.18" y="10.16" visible="off" length="middle" rot="R180"/>
<pin name="PF1" x="-43.18" y="7.62" visible="off" length="middle" rot="R180"/>
<pin name="GND4" x="-43.18" y="5.08" visible="off" length="middle" rot="R180"/>
<pin name="NRST" x="-43.18" y="2.54" visible="off" length="middle" rot="R180"/>
<pin name="PC0" x="-43.18" y="0" visible="off" length="middle" rot="R180"/>
<pin name="PC1" x="-43.18" y="-2.54" visible="off" length="middle" rot="R180"/>
<pin name="PC2" x="-43.18" y="-5.08" visible="off" length="middle" rot="R180"/>
<pin name="PC3" x="-43.18" y="-7.62" visible="off" length="middle" rot="R180"/>
<pin name="PA0" x="-43.18" y="-10.16" visible="off" length="middle" rot="R180"/>
<pin name="PA1" x="-43.18" y="-12.7" visible="off" length="middle" rot="R180"/>
<pin name="PA2" x="-43.18" y="-15.24" visible="off" length="middle" rot="R180"/>
<pin name="PA3" x="-43.18" y="-17.78" visible="off" length="middle" rot="R180"/>
<pin name="PF4" x="-43.18" y="-20.32" visible="off" length="middle" rot="R180"/>
<pin name="PF5" x="-43.18" y="-22.86" visible="off" length="middle" rot="R180"/>
<pin name="PA4" x="-43.18" y="-25.4" visible="off" length="middle" rot="R180"/>
<pin name="PA5" x="-43.18" y="-27.94" visible="off" length="middle" rot="R180"/>
<pin name="PA6" x="-43.18" y="-30.48" visible="off" length="middle" rot="R180"/>
<pin name="PA7" x="-43.18" y="-33.02" visible="off" length="middle" rot="R180"/>
<pin name="PC4" x="-43.18" y="-35.56" visible="off" length="middle" rot="R180"/>
<pin name="PC5" x="-43.18" y="-38.1" visible="off" length="middle" rot="R180"/>
<pin name="PB0" x="-43.18" y="-40.64" visible="off" length="middle" rot="R180"/>
<pin name="PB1" x="-43.18" y="-43.18" visible="off" length="middle" rot="R180"/>
<pin name="PB2" x="-43.18" y="-45.72" visible="off" length="middle" rot="R180"/>
<pin name="PB10" x="-43.18" y="-48.26" visible="off" length="middle" rot="R180"/>
<pin name="PB11" x="-43.18" y="-50.8" visible="off" length="middle" rot="R180"/>
<pin name="PB12" x="-43.18" y="-53.34" visible="off" length="middle" rot="R180"/>
<pin name="GND5" x="-43.18" y="-55.88" visible="off" length="middle" rot="R180"/>
<text x="-40.64" y="25.4" size="1.778" layer="95" align="center-left">VDD3</text>
<text x="-40.64" y="22.86" size="1.778" layer="95" align="center-left">GND</text>
<text x="-40.64" y="5.08" size="1.778" layer="95" align="center-left">GND</text>
<text x="-40.64" y="-55.88" size="1.778" layer="95" align="center-left">GND</text>
<text x="-40.64" y="20.32" size="1.778" layer="95" align="center-left">VBAT</text>
<text x="-40.64" y="17.78" size="1.778" layer="95" align="center-left">PC13</text>
<text x="-40.64" y="15.24" size="1.778" layer="95" align="center-left">PC14</text>
<text x="-40.64" y="12.7" size="1.778" layer="95" align="center-left">PC15</text>
<text x="-40.64" y="10.16" size="1.778" layer="95" align="center-left">PF0</text>
<text x="-40.64" y="7.62" size="1.778" layer="95" align="center-left">PF1</text>
<text x="-40.64" y="2.54" size="1.778" layer="95" align="center-left">NRST</text>
<text x="-40.64" y="0" size="1.778" layer="95" align="center-left">PC0</text>
<text x="-40.64" y="-2.54" size="1.778" layer="95" align="center-left">PC1</text>
<text x="-40.64" y="-5.08" size="1.778" layer="95" align="center-left">PC2</text>
<text x="-40.64" y="-7.62" size="1.778" layer="95" align="center-left">PC3</text>
<text x="-40.64" y="-10.16" size="1.778" layer="95" align="center-left">PA0</text>
<text x="-40.64" y="-12.7" size="1.778" layer="95" align="center-left">PA1</text>
<text x="-40.64" y="-15.24" size="1.778" layer="95" align="center-left">PA2</text>
<text x="-40.64" y="-17.78" size="1.778" layer="95" align="center-left">PA3</text>
<text x="-40.64" y="-20.32" size="1.778" layer="95" align="center-left">PF4</text>
<text x="-40.64" y="-22.86" size="1.778" layer="95" align="center-left">PF5</text>
<text x="-40.64" y="-25.4" size="1.778" layer="95" align="center-left">PA4</text>
<text x="-40.64" y="-27.94" size="1.778" layer="95" align="center-left">PA5</text>
<text x="-40.64" y="-30.48" size="1.778" layer="95" align="center-left">PA6</text>
<text x="-40.64" y="-33.02" size="1.778" layer="95" align="center-left">PA7</text>
<text x="-40.64" y="-35.56" size="1.778" layer="95" align="center-left">PC4</text>
<text x="-40.64" y="-38.1" size="1.778" layer="95" align="center-left">PC5</text>
<text x="-40.64" y="-40.64" size="1.778" layer="95" align="center-left">PB0</text>
<text x="-40.64" y="-43.18" size="1.778" layer="95" align="center-left">PB1</text>
<text x="-40.64" y="-45.72" size="1.778" layer="95" align="center-left">PB2</text>
<text x="-40.64" y="-48.26" size="1.778" layer="95" align="center-left">PB10</text>
<text x="-40.64" y="-50.8" size="1.778" layer="95" align="center-left">PB11</text>
<text x="-40.64" y="-53.34" size="1.778" layer="95" align="center-left">PB12</text>
<text x="-30.48" y="-60.96" size="1.778" layer="95" align="center-left">STM32F051 Discovery</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32F051">
<gates>
<gate name="G$1" symbol="STM32F051" x="15.24" y="22.86"/>
</gates>
<devices>
<device name="" package="STM32F051">
<connects>
<connect gate="G$1" pin="BOOT0" pad="BOOT0"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="GND3" pad="GND3"/>
<connect gate="G$1" pin="GND4" pad="GND4"/>
<connect gate="G$1" pin="GND5" pad="GND5"/>
<connect gate="G$1" pin="NRST" pad="NRST"/>
<connect gate="G$1" pin="PA0" pad="PA0"/>
<connect gate="G$1" pin="PA1" pad="PA1"/>
<connect gate="G$1" pin="PA10" pad="PA10"/>
<connect gate="G$1" pin="PA11" pad="PA11"/>
<connect gate="G$1" pin="PA12" pad="PA12"/>
<connect gate="G$1" pin="PA13" pad="PA13"/>
<connect gate="G$1" pin="PA14" pad="PA14"/>
<connect gate="G$1" pin="PA15" pad="PA15"/>
<connect gate="G$1" pin="PA2" pad="PA2"/>
<connect gate="G$1" pin="PA3" pad="PA3"/>
<connect gate="G$1" pin="PA4" pad="PA4"/>
<connect gate="G$1" pin="PA5" pad="PA5"/>
<connect gate="G$1" pin="PA6" pad="PA6"/>
<connect gate="G$1" pin="PA7" pad="PA7"/>
<connect gate="G$1" pin="PA8" pad="PA8"/>
<connect gate="G$1" pin="PA9" pad="PA9"/>
<connect gate="G$1" pin="PB0" pad="PB0"/>
<connect gate="G$1" pin="PB1" pad="PB1"/>
<connect gate="G$1" pin="PB10" pad="PB10"/>
<connect gate="G$1" pin="PB11" pad="PB11"/>
<connect gate="G$1" pin="PB12" pad="PB12"/>
<connect gate="G$1" pin="PB13" pad="PB13"/>
<connect gate="G$1" pin="PB14" pad="PB14"/>
<connect gate="G$1" pin="PB15" pad="PB15"/>
<connect gate="G$1" pin="PB2" pad="PB2"/>
<connect gate="G$1" pin="PB3" pad="PB3"/>
<connect gate="G$1" pin="PB4" pad="PB4"/>
<connect gate="G$1" pin="PB5" pad="PB5"/>
<connect gate="G$1" pin="PB6" pad="PB6"/>
<connect gate="G$1" pin="PB7" pad="PB7"/>
<connect gate="G$1" pin="PB8" pad="PB8"/>
<connect gate="G$1" pin="PB9" pad="PB9"/>
<connect gate="G$1" pin="PC0" pad="PC0"/>
<connect gate="G$1" pin="PC1" pad="PC1"/>
<connect gate="G$1" pin="PC10" pad="PC10"/>
<connect gate="G$1" pin="PC11" pad="PC11"/>
<connect gate="G$1" pin="PC12" pad="PC12"/>
<connect gate="G$1" pin="PC13" pad="PC13"/>
<connect gate="G$1" pin="PC14" pad="PC14"/>
<connect gate="G$1" pin="PC15" pad="PC15"/>
<connect gate="G$1" pin="PC2" pad="PC2"/>
<connect gate="G$1" pin="PC3" pad="PC3"/>
<connect gate="G$1" pin="PC4" pad="PC4"/>
<connect gate="G$1" pin="PC5" pad="PC5"/>
<connect gate="G$1" pin="PC6" pad="PC6"/>
<connect gate="G$1" pin="PC7" pad="PC7"/>
<connect gate="G$1" pin="PC8" pad="PC8"/>
<connect gate="G$1" pin="PC9" pad="PC9"/>
<connect gate="G$1" pin="PD2" pad="PD2"/>
<connect gate="G$1" pin="PF0" pad="PF0"/>
<connect gate="G$1" pin="PF1" pad="PF1"/>
<connect gate="G$1" pin="PF4" pad="PF4"/>
<connect gate="G$1" pin="PF5" pad="PF5"/>
<connect gate="G$1" pin="PF6" pad="PF6"/>
<connect gate="G$1" pin="PF7" pad="PF7"/>
<connect gate="G$1" pin="VBAT" pad="VBAT"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
<connect gate="G$1" pin="VDD3" pad="VDD3"/>
<connect gate="G$1" pin="VDD5" pad="VDD5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="SFH482">
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
</packages>
<symbols>
<symbol name="LED">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
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
<deviceset name="SFH482" prefix="D">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon</description>
<gates>
<gate name="1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SFH482">
<connects>
<connect gate="1" pin="A" pad="A"/>
<connect gate="1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
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
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
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
<library name="resistor-shunt">
<description>&lt;b&gt;Isabellenhuette SMD Shunt Resistors&lt;/b&gt;&lt;p&gt;
www.isabellenhuette.de&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SMK">
<description>&lt;b&gt;SMD SHUNT RESISTOR&lt;/b&gt;</description>
<wire x1="-1.4" y1="-0.65" x2="-1.4" y2="0.65" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="0.65" x2="1.4" y2="0.65" width="0.2032" layer="51"/>
<wire x1="1.4" y1="0.65" x2="1.4" y2="-0.65" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-0.65" x2="-1.4" y2="-0.65" width="0.2032" layer="51"/>
<smd name="2" x="-1.524" y="0" dx="2.5" dy="2" layer="1"/>
<smd name="1" x="1.524" y="0" dx="2.5" dy="2" layer="1"/>
<text x="-2.6924" y="1.0668" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.6924" y="-2.3368" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="R">
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0.889" x2="-2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.3716" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-2.921" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="1" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SMK" prefix="R" uservalue="yes">
<description>&lt;b&gt;SMD SHUNT RESISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0" swaplevel="2"/>
</gates>
<devices>
<device name="" package="SMK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="transistor">
<description>&lt;b&gt;Transistors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TO5">
<description>&lt;b&gt;TO 5&lt;/b&gt;</description>
<wire x1="-4.0386" y1="-3.5306" x2="-3.5052" y2="-2.9972" width="0.127" layer="21"/>
<wire x1="-2.9718" y1="-3.5306" x2="-3.5052" y2="-4.064" width="0.127" layer="21"/>
<wire x1="-3.5052" y1="-4.064" x2="-4.0386" y2="-3.5306" width="0.127" layer="21"/>
<circle x="0" y="0" radius="4.572" width="0.127" layer="21"/>
<circle x="0" y="0" radius="3.8608" width="0.0508" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="0" y="2.54" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="NPN">
<wire x1="2.54" y1="2.54" x2="0.508" y2="1.524" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-1.524" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.778" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.54" y1="-2.04" x2="0.308" y2="-1.424" width="0.1524" layer="94"/>
<wire x1="1.524" y1="-2.413" x2="2.286" y2="-2.413" width="0.254" layer="94"/>
<wire x1="2.286" y1="-2.413" x2="1.778" y2="-1.778" width="0.254" layer="94"/>
<wire x1="1.778" y1="-1.778" x2="1.524" y2="-2.286" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.286" x2="1.905" y2="-2.286" width="0.254" layer="94"/>
<wire x1="1.905" y1="-2.286" x2="1.778" y2="-2.032" width="0.254" layer="94"/>
<text x="-10.16" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="5.08" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="E" x="2.54" y="-5.08" visible="off" length="short" direction="pas" swaplevel="3" rot="R90"/>
<pin name="C" x="2.54" y="5.08" visible="off" length="short" direction="pas" swaplevel="2" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="2N1613" prefix="T">
<description>&lt;b&gt;NPN TRANSISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="NPN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO5">
<connects>
<connect gate="G$1" pin="B" pad="2"/>
<connect gate="G$1" pin="C" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-cypressindustries">
<description>&lt;b&gt;Connectors from Cypress Industries&lt;/b&gt;&lt;p&gt;
www.cypressindustries.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="32005-601">
<description>&lt;b&gt;MINI USB-B R/A DIP&lt;/b&gt;&lt;p&gt;
Source: http://www.cypressindustries.com/pdf/32005-601.pdf</description>
<wire x1="-5.9228" y1="3.8473" x2="2.9098" y2="3.8473" width="0.1016" layer="51"/>
<wire x1="2.9404" y1="3.7967" x2="2.9404" y2="2.5986" width="0.1016" layer="21"/>
<wire x1="2.9404" y1="2.5986" x2="1.8098" y2="2.5986" width="0.1016" layer="21"/>
<wire x1="2.9097" y1="-3.8473" x2="-5.9228" y2="-3.8473" width="0.1016" layer="51"/>
<wire x1="-5.9228" y1="-3.8473" x2="-5.9228" y2="3.8473" width="0.1016" layer="21"/>
<wire x1="2.9573" y1="-3.8217" x2="2.9573" y2="-2.6998" width="0.1016" layer="21"/>
<wire x1="2.9573" y1="-2.6998" x2="1.8098" y2="-2.6998" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="3.8416" x2="-3.8879" y2="3.8416" width="0.1016" layer="51"/>
<wire x1="-5.9182" y1="-3.8415" x2="-5.9182" y2="-3.8414" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="-3.8414" x2="-5.9182" y2="3.8416" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="2.9591" x2="-4.5685" y2="2.7514" width="0.1016" layer="21"/>
<wire x1="-4.5685" y1="2.7514" x2="-4.828" y2="2.5438" width="0.1016" layer="21" curve="68.629849"/>
<wire x1="-4.828" y1="2.5438" x2="-4.828" y2="1.9727" width="0.1016" layer="21" curve="34.099487"/>
<wire x1="-4.828" y1="1.9727" x2="-4.5685" y2="1.7651" width="0.1016" layer="21" curve="68.629849"/>
<wire x1="-4.5685" y1="1.7651" x2="-1.8171" y2="1.5055" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="1.5055" x2="-1.8171" y2="1.7132" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="1.7132" x2="-4.2051" y2="1.9727" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="1.9727" x2="-4.2051" y2="2.4919" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="2.4919" x2="-1.8171" y2="2.7514" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="2.7514" x2="-1.8171" y2="2.9591" width="0.1016" layer="21"/>
<wire x1="-4.5684" y1="1.2459" x2="-0.5192" y2="1.0383" width="0.1016" layer="21"/>
<wire x1="-0.5192" y1="1.0383" x2="-0.3116" y2="0.8306" width="0.1016" layer="21" curve="-83.771817"/>
<wire x1="-4.5685" y1="1.2459" x2="-4.7761" y2="1.0383" width="0.1016" layer="21" curve="90"/>
<wire x1="-4.7761" y1="1.0383" x2="-4.7761" y2="1.0382" width="0.1016" layer="21"/>
<wire x1="-4.7761" y1="1.0382" x2="-4.5685" y2="0.8306" width="0.1016" layer="21" curve="90"/>
<wire x1="-4.5685" y1="0.8306" x2="-1.1422" y2="0.623" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="-3.8414" x2="-3.8879" y2="-3.8414" width="0.1016" layer="51"/>
<wire x1="-1.8171" y1="-2.9589" x2="-4.5685" y2="-2.7512" width="0.1016" layer="21"/>
<wire x1="-4.5685" y1="-2.7512" x2="-4.828" y2="-2.5436" width="0.1016" layer="21" curve="-68.629849"/>
<wire x1="-4.828" y1="-2.5436" x2="-4.828" y2="-1.9725" width="0.1016" layer="21" curve="-34.099487"/>
<wire x1="-4.828" y1="-1.9725" x2="-4.5685" y2="-1.7649" width="0.1016" layer="21" curve="-68.629849"/>
<wire x1="-4.5685" y1="-1.7649" x2="-1.8171" y2="-1.5053" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="-1.5053" x2="-1.8171" y2="-1.713" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="-1.713" x2="-4.2051" y2="-1.9725" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="-1.9725" x2="-4.2051" y2="-2.4917" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="-2.4917" x2="-1.8171" y2="-2.7512" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="-2.7512" x2="-1.8171" y2="-2.9589" width="0.1016" layer="21"/>
<wire x1="-4.5684" y1="-1.2457" x2="-0.5192" y2="-1.0381" width="0.1016" layer="21"/>
<wire x1="-0.5192" y1="-1.0381" x2="-0.3116" y2="-0.8304" width="0.1016" layer="21" curve="83.722654"/>
<wire x1="-0.3116" y1="-0.8304" x2="-0.3116" y2="0.8307" width="0.1016" layer="21"/>
<wire x1="-4.5685" y1="-1.2457" x2="-4.7761" y2="-1.0381" width="0.1016" layer="21" curve="-90"/>
<wire x1="-4.7761" y1="-1.038" x2="-4.5685" y2="-0.8304" width="0.1016" layer="21" curve="-90"/>
<wire x1="-4.5685" y1="-0.8304" x2="-1.1422" y2="-0.6228" width="0.1016" layer="21"/>
<wire x1="-1.1422" y1="-0.6228" x2="-1.1422" y2="0.6232" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="-3.8414" x2="-3.8146" y2="-3.8414" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="3.8416" x2="-3.8647" y2="3.8415" width="0.1016" layer="21"/>
<wire x1="2.8842" y1="-3.8472" x2="-0.6281" y2="-3.8472" width="0.1016" layer="21"/>
<wire x1="-0.6523" y1="3.8472" x2="2.8331" y2="3.8473" width="0.1016" layer="21"/>
<wire x1="-1.725" y1="4.15" x2="-1.225" y2="3.65" width="0" layer="46" curve="-90"/>
<wire x1="-1.225" y1="3.65" x2="-1.725" y2="3.15" width="0" layer="46" curve="-90"/>
<wire x1="-1.725" y1="3.15" x2="-2.725" y2="3.15" width="0" layer="46"/>
<wire x1="-2.725" y1="3.15" x2="-3.225" y2="3.65" width="0" layer="46" curve="-90"/>
<wire x1="-3.225" y1="3.65" x2="-2.725" y2="4.15" width="0" layer="46" curve="-90"/>
<wire x1="-2.725" y1="4.15" x2="-1.725" y2="4.15" width="0" layer="46"/>
<wire x1="-1.525" y1="-3.15" x2="-1.225" y2="-3.65" width="0" layer="46" curve="-90"/>
<wire x1="-1.225" y1="-3.65" x2="-1.725" y2="-4.15" width="0" layer="46" curve="-90"/>
<wire x1="-1.725" y1="-4.15" x2="-2.725" y2="-4.15" width="0" layer="46"/>
<wire x1="-2.725" y1="-4.15" x2="-3.225" y2="-3.65" width="0" layer="46" curve="-90"/>
<wire x1="-3.225" y1="-3.65" x2="-2.725" y2="-3.15" width="0" layer="46" curve="-90"/>
<wire x1="-2.725" y1="-3.15" x2="-1.525" y2="-3.15" width="0" layer="46"/>
<wire x1="1.8098" y1="2.6048" x2="1.8098" y2="-2.6973" width="0.1016" layer="51"/>
<pad name="M1" x="-2.225" y="3.65" drill="1" diameter="1.4224" shape="long"/>
<pad name="M2" x="-2.225" y="-3.65" drill="1" diameter="1.4224" shape="long"/>
<pad name="4" x="1.625" y="-0.8" drill="0.7" diameter="1.016"/>
<pad name="3" x="2.825" y="0" drill="0.7" diameter="1.016"/>
<pad name="1" x="2.825" y="1.6" drill="0.7" diameter="1.016"/>
<pad name="5" x="2.825" y="-1.6" drill="0.7" diameter="1.016"/>
<pad name="2" x="1.625" y="0.8" drill="0.7" diameter="1.016"/>
<text x="-4.1155" y="6.4859" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.3979" y="-7.8527" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MINI-USB-5">
<wire x1="-2.54" y1="6.35" x2="-2.54" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-6.35" x2="-1.27" y2="-7.62" width="0.254" layer="94" curve="90"/>
<wire x1="-1.27" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="1.016" y2="-8.128" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="1.016" y1="-8.128" x2="2.54" y2="-8.89" width="0.254" layer="94" curve="53.130102"/>
<wire x1="2.54" y1="-8.89" x2="5.08" y2="-8.89" width="0.254" layer="94"/>
<wire x1="5.08" y1="-8.89" x2="6.35" y2="-7.62" width="0.254" layer="94" curve="90"/>
<wire x1="6.35" y1="-7.62" x2="6.35" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="6.35" x2="-1.27" y2="7.62" width="0.254" layer="94" curve="-90"/>
<wire x1="-1.27" y1="7.62" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="1.016" y2="8.128" width="0.254" layer="94" curve="53.130102"/>
<wire x1="1.016" y1="8.128" x2="2.54" y2="8.89" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="2.54" y1="8.89" x2="5.08" y2="8.89" width="0.254" layer="94"/>
<wire x1="5.08" y1="8.89" x2="6.35" y2="7.62" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="5.08" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="1.27" y2="-6.35" width="0.254" layer="94"/>
<wire x1="1.27" y1="-6.35" x2="3.81" y2="-6.35" width="0.254" layer="94"/>
<wire x1="3.81" y1="-6.35" x2="3.81" y2="6.35" width="0.254" layer="94"/>
<wire x1="3.81" y1="6.35" x2="1.27" y2="6.35" width="0.254" layer="94"/>
<wire x1="1.27" y1="6.35" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="-2.54" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<text x="10.16" y="-7.62" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="-5.08" y="5.08" visible="pin" direction="pas"/>
<pin name="2" x="-5.08" y="2.54" visible="pin" direction="pas"/>
<pin name="3" x="-5.08" y="0" visible="pin" direction="pas"/>
<pin name="4" x="-5.08" y="-2.54" visible="pin" direction="pas"/>
<pin name="5" x="-5.08" y="-5.08" visible="pin" direction="pas"/>
</symbol>
<symbol name="SHIELD2">
<wire x1="-2.54" y1="1.27" x2="0" y2="1.27" width="0.254" layer="94" style="shortdash"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.1524" layer="94"/>
<text x="1.27" y="-1.27" size="1.778" layer="95">&gt;NAME</text>
<pin name="S1" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S2" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MINI-USB_SHIELD5P2-" prefix="X">
<description>MINI USB-B R/A DIP&lt;/b&gt; 5pol.&lt;p&gt;
Source: www.cypressindustries.com</description>
<gates>
<gate name="G41" symbol="MINI-USB-5" x="0" y="0"/>
<gate name="S" symbol="SHIELD2" x="2.54" y="-12.7" addlevel="request"/>
</gates>
<devices>
<device name="32005-601" package="32005-601">
<connects>
<connect gate="G41" pin="1" pad="1"/>
<connect gate="G41" pin="2" pad="2"/>
<connect gate="G41" pin="3" pad="3"/>
<connect gate="G41" pin="4" pad="4"/>
<connect gate="G41" pin="5" pad="5"/>
<connect gate="S" pin="S1" pad="M1"/>
<connect gate="S" pin="S2" pad="M2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="docu-dummy">
<description>Dummy symbols</description>
<packages>
</packages>
<symbols>
<symbol name="DIODE">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DIODE" prefix="D">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="DIODE" x="0" y="0"/>
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
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="STM32F0" deviceset="STM32F051" device=""/>
<part name="LASER" library="led" deviceset="SFH482" device="" value="LFL650"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="R1" library="resistor-shunt" deviceset="SMK" device="" value="211"/>
<part name="R2" library="resistor-shunt" deviceset="SMK" device="" value="211"/>
<part name="T1" library="transistor" deviceset="2N1613" device=""/>
<part name="X2" library="con-cypressindustries" deviceset="MINI-USB_SHIELD5P2-" device="32005-601"/>
<part name="R3" library="resistor-shunt" deviceset="SMK" device=""/>
<part name="R4" library="resistor-shunt" deviceset="SMK" device=""/>
<part name="D2" library="docu-dummy" deviceset="DIODE" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="-12.7" y1="7.62" x2="-10.16" y2="7.62" width="0.1524" layer="97"/>
<text x="-15.24" y="7.62" size="1.778" layer="97">schwarz</text>
<text x="-12.7" y="30.48" size="1.778" layer="97">rot</text>
<text x="-10.16" y="68.58" size="1.778" layer="97">rot</text>
<wire x1="20.32" y1="38.1" x2="20.32" y2="20.32" width="0.1524" layer="97"/>
<wire x1="20.32" y1="20.32" x2="22.86" y2="20.32" width="0.1524" layer="97"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="7.62" width="0.1524" layer="97"/>
<wire x1="-10.16" y1="7.62" x2="22.86" y2="7.62" width="0.1524" layer="97"/>
<wire x1="-10.16" y1="33.02" x2="-10.16" y2="25.4" width="0.1524" layer="97"/>
<wire x1="5.08" y1="43.18" x2="2.54" y2="43.18" width="0.1524" layer="97"/>
<wire x1="2.54" y1="43.18" x2="2.54" y2="38.1" width="0.1524" layer="97"/>
<wire x1="-5.08" y1="38.1" x2="2.54" y2="38.1" width="0.1524" layer="97"/>
<wire x1="2.54" y1="38.1" x2="2.54" y2="33.02" width="0.1524" layer="97"/>
<wire x1="2.54" y1="33.02" x2="5.08" y2="33.02" width="0.1524" layer="97"/>
<wire x1="15.24" y1="33.02" x2="15.24" y2="38.1" width="0.1524" layer="97"/>
<wire x1="15.24" y1="38.1" x2="15.24" y2="43.18" width="0.1524" layer="97"/>
<wire x1="15.24" y1="38.1" x2="20.32" y2="38.1" width="0.1524" layer="97"/>
<wire x1="-10.16" y1="43.18" x2="-10.16" y2="88.9" width="0.1524" layer="97"/>
<wire x1="-10.16" y1="88.9" x2="22.86" y2="88.9" width="0.1524" layer="97"/>
<text x="15.24" y="25.4" size="1.778" layer="97">gelb</text>
<wire x1="71.12" y1="30.48" x2="93.98" y2="30.48" width="0.1524" layer="97"/>
<wire x1="71.12" y1="33.02" x2="93.98" y2="33.02" width="0.1524" layer="97"/>
<wire x1="124.46" y1="76.2" x2="121.92" y2="76.2" width="0.1524" layer="97"/>
<wire x1="121.92" y1="76.2" x2="121.92" y2="55.88" width="0.1524" layer="97"/>
<wire x1="124.46" y1="78.74" x2="116.84" y2="78.74" width="0.1524" layer="97"/>
<wire x1="116.84" y1="78.74" x2="116.84" y2="73.66" width="0.1524" layer="97"/>
<wire x1="116.84" y1="63.5" x2="116.84" y2="60.96" width="0.1524" layer="97"/>
<wire x1="116.84" y1="60.96" x2="121.92" y2="60.96" width="0.1524" layer="97"/>
<wire x1="124.46" y1="81.28" x2="109.22" y2="81.28" width="0.1524" layer="97"/>
<wire x1="109.22" y1="81.28" x2="99.06" y2="81.28" width="0.1524" layer="97"/>
<wire x1="124.46" y1="83.82" x2="99.06" y2="83.82" width="0.1524" layer="97"/>
<text x="99.06" y="81.28" size="1.4224" layer="97">USB DP</text>
<text x="99.06" y="83.82" size="1.4224" layer="97">USB DM</text>
<wire x1="109.22" y1="81.28" x2="109.22" y2="71.12" width="0.1524" layer="97"/>
<wire x1="109.22" y1="71.12" x2="88.9" y2="71.12" width="0.1524" layer="97"/>
<wire x1="88.9" y1="81.28" x2="88.9" y2="96.52" width="0.1524" layer="97"/>
<wire x1="88.9" y1="96.52" x2="22.86" y2="96.52" width="0.1524" layer="97"/>
<wire x1="22.86" y1="96.52" x2="22.86" y2="88.9" width="0.1524" layer="97"/>
<wire x1="124.46" y1="86.36" x2="111.76" y2="86.36" width="0.1524" layer="97"/>
<wire x1="111.76" y1="86.36" x2="111.76" y2="88.9" width="0.1524" layer="97"/>
<wire x1="111.76" y1="88.9" x2="83.82" y2="88.9" width="0.1524" layer="97"/>
<wire x1="78.74" y1="88.9" x2="71.12" y2="88.9" width="0.1524" layer="97"/>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="71.12" y="63.5"/>
<instance part="LASER" gate="1" x="-10.16" y="22.86"/>
<instance part="GND1" gate="1" x="121.92" y="53.34"/>
<instance part="R1" gate="G$1" x="10.16" y="33.02"/>
<instance part="R2" gate="G$1" x="10.16" y="43.18"/>
<instance part="T1" gate="G$1" x="-7.62" y="38.1" rot="MR0"/>
<instance part="X2" gate="G41" x="129.54" y="81.28"/>
<instance part="R3" gate="G$1" x="116.84" y="68.58" rot="R90"/>
<instance part="R4" gate="G$1" x="88.9" y="76.2" rot="R90"/>
<instance part="D2" gate="G$1" x="81.28" y="88.9" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
