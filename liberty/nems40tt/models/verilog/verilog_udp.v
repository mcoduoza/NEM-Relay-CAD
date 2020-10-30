//****************************************************************************//
// Verilog models generated by SiliconSmart M-2017.03-2 build date: Apr 12, 2017 14:36:58. (SMSC-2) //
// Siliconsmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart //
// Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 23340       //
// Directory: /home/akashl/NEM-Relay-CAD/liberty                              //
//                                                                            //
// File generated on Thu Oct 29 19:42:16 PDT 2020. (SMSC-3)                   //
//****************************************************************************//


`timescale 1ns/1ps

// udp_data_begin


primitive UDP_nems40tt_nem_ohmux_invd0_2i_1b_UDP_1( Z_0, S0, S1, I0_0, I1_0 );
  output Z_0;
  input S0, S1, I0_0, I1_0;
  table
  //S0, S1, I0_0, I1_0: Z_0
    1  0  1  ?: 1;
    0  1  ?  1: 1;
    1  0  0  ?: 0;
    0  1  ?  0: 0;
    1  1  ?  ?: x;
    0  0  ?  ?: x;
  endtable
endprimitive


`celldefine
module nem_ohmux_invd0_2i_1b_func( I0_0, I1_0, S0, S1, ZN_0 );
input I0_0, I1_0, S0, S1;
output ZN_0;

	not MGM_BG_0( ZN_0, Z_0 );

	UDP_nems40tt_nem_ohmux_invd0_2i_1b_UDP_1( Z_0, S0, S1, I0_0, I1_0 );

endmodule
`endcelldefine
// udp_data_end
