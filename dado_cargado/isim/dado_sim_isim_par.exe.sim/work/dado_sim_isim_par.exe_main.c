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
    simprim_a_0915285367_2431929443_1738684948_init();
    simprim_a_0915285367_2431929443_4082044737_init();
    simprim_a_0915285367_2431929443_0433961640_init();
    simprim_a_3156740924_4150518722_2884479777_init();
    simprim_a_3156740924_4150518722_2855256342_init();
    simprim_a_3156740924_4150518722_2825486159_init();
    simprim_a_3592211381_2402822232_2462533843_init();
    simprim_a_3592211381_2402822232_2577076206_init();
    simprim_a_3592211381_2402822232_2555995609_init();
    simprim_a_3592211381_2402822232_1062172089_init();
    simprim_a_3592211381_2402822232_4094928412_init();
    simprim_a_2295199258_3300903326_2766042708_init();
    simprim_a_4130118134_1564065396_3910571684_init();
    simprim_a_1844515892_2000130859_1062172089_init();
    simprim_a_1443167379_2000130859_1062172089_init();
    simprim_a_0205067517_2000130859_1062172089_init();
    simprim_a_2437745892_2000130859_4094928412_init();
    simprim_a_1635866313_1970351474_1062172089_init();
    simprim_a_0921304309_1970351474_1062172089_init();
    simprim_a_1429954080_1970351474_1062172089_init();
    simprim_a_2807612554_1970351474_4094928412_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_0384206778_0632001823_init();
    work_a_1617386371_2372691052_init();


    xsi_register_tops("work_a_1617386371_2372691052");

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
