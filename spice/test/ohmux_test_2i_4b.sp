.title <ohmux_test_2i_4b.sp>
.include ../models/nem_ohmux_2i_4b.sp

** Tests one-hot multiplexer using analog inputs **

** Create relay and start at z=0 **
Xmux I0_0 I0_1 I0_2 I0_3 I1_0 I1_1 I1_2 I1_3 S0 S1 Z_0 Z_1 Z_2 Z_3 VDD VB VSS nem_ohmux_2i_4b

** Source voltage **
VI0_0 I0_0 gnd 0.125V
VI0_1 I0_1 gnd 0.25V
VI0_2 I0_2 gnd 0.375V
VI0_3 I0_3 gnd 0.5V
VI1_0 I1_0 gnd 0.625V
VI1_1 I1_1 gnd 0.75V
VI1_2 I1_2 gnd 0.875V
VI1_3 I1_3 gnd 1.0V
VS0 S0 gnd 0V PWL(0s 0V 1ns 1.1V 5000ns 1.1V 5001ns 0V 10000ns 0V)
VS1 S1 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 1.1V 10000ns 1.1V)
RZ_0 Z_0 gnd 1G
RZ_1 Z_1 gnd 1G
RZ_2 Z_2 gnd 1G
RZ_3 Z_3 gnd 1G
VDD VDD gnd 1.1V
VB VB gnd -2.6V
VSS VS gnd 0V

** Options **
.tran 0.0001us 10000ns
.option post=2
.option runlvl=5 accurate method=gear vntol=1f

.end
