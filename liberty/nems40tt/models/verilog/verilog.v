//****************************************************************************//
// Verilog models generated by SiliconSmart M-2017.03-2 build date: Apr 12, 2017 14:36:58. (SMSC-2) //
// Siliconsmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart //
// Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 23340       //
// Directory: /home/akashl/NEM-Relay-CAD/liberty                              //
//                                                                            //
// File generated on Thu Oct 29 19:42:16 PDT 2020. (SMSC-3)                   //
//****************************************************************************//


`timescale 1ns/1ps



`celldefine
module nem_ohmux_invd0_2i_1b( I0_0, I1_0, S0, S1, ZN_0 );
input I0_0, I1_0, S0, S1;
output ZN_0;

   `ifdef FUNCTIONAL  //  functional //

	nem_ohmux_invd0_2i_1b_func nem_ohmux_invd0_2i_1b_behav_inst(.I0_0(I0_0),.I1_0(I1_0),.S0(S0),.S1(S1),.ZN_0(ZN_0));
   `else

	nem_ohmux_invd0_2i_1b_func nem_ohmux_invd0_2i_1b_inst(.I0_0(I0_0),.I1_0(I1_0),.S0(S0),.S1(S1),.ZN_0(ZN_0));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc I0_0 --> ZN_0
	 (I0_0 => ZN_0) = (1.0,1.0);

	// comb arc I1_0 --> ZN_0
	 (I1_0 => ZN_0) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (ZN_0:S0)
	 (posedge S0 => (ZN_0:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (ZN_0:S0)
	 (negedge S0 => (ZN_0:S0)) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (ZN_0:S1)
	 (posedge S1 => (ZN_0:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (ZN_0:S1)
	 (negedge S1 => (ZN_0:S1)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine
