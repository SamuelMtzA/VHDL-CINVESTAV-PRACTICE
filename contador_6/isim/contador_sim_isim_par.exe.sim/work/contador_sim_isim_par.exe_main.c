/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *SIMPRIM_P_0947159679;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_0915285367_2431929443_0078345519_init();
    simprim_a_0915285367_2431929443_2196146988_init();
    simprim_a_0915285367_2431929443_4082044737_init();
    simprim_a_0915285367_2431929443_0433961640_init();
    simprim_a_3156740924_4150518722_2884479777_init();
    simprim_a_3156740924_4150518722_2855256342_init();
    simprim_a_3156740924_4150518722_2825486159_init();
    simprim_a_3156740924_4150518722_0371120833_init();
    simprim_a_2295199258_3300903326_2766042708_init();
    simprim_a_3592211381_2402822232_3230577155_init();
    simprim_a_3592211381_2402822232_2594905100_init();
    simprim_a_3592211381_2402822232_1782564078_init();
    simprim_a_4130118134_1564065396_3317802118_init();
    simprim_a_0860940424_1564065396_3440981973_init();
    simprim_a_0860940424_1564065396_0245200675_init();
    simprim_a_4130118134_1564065396_0105243760_init();
    simprim_a_0860940424_1564065396_4145239717_init();
    simprim_a_4130118134_1564065396_2694937980_init();
    simprim_a_4130118134_1564065396_0882316883_init();
    simprim_a_4130118134_1564065396_1011844352_init();
    simprim_a_0860940424_1564065396_1811787481_init();
    simprim_a_3112261496_2000130859_3317802118_init();
    simprim_a_3847086469_2000130859_3440981973_init();
    simprim_a_2887087757_2000130859_0245200675_init();
    simprim_a_2840751153_2000130859_0105243760_init();
    simprim_a_0173550287_2000130859_4145239717_init();
    simprim_a_1088272097_2000130859_2694937980_init();
    simprim_a_1934509803_2000130859_0882316883_init();
    simprim_a_4109596283_2000130859_1011844352_init();
    simprim_a_0574080225_2000130859_1011844352_init();
    simprim_a_1455289515_2000130859_1011844352_init();
    simprim_a_1011265518_2000130859_1011844352_init();
    simprim_a_0759248257_2000130859_1811787481_init();
    simprim_a_4029238389_2000130859_1811787481_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_2187592342_0632001823_init();
    work_a_2691102104_2372691052_init();


    xsi_register_tops("work_a_2691102104_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
