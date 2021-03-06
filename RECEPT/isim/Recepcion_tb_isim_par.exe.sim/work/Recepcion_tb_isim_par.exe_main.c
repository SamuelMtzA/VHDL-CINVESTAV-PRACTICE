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


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_4130118134_1564065396_2709952325_init();
    simprim_a_4130118134_1564065396_2747279644_init();
    simprim_a_4130118134_1564065396_2718057259_init();
    simprim_a_4130118134_1564065396_3985398905_init();
    simprim_a_4130118134_1564065396_3964548686_init();
    simprim_a_4130118134_1564065396_3993536535_init();
    simprim_a_4130118134_1564065396_4047311936_init();
    simprim_a_4130118134_1564065396_0979486693_init();
    simprim_a_4130118134_1564065396_1792689376_init();
    simprim_a_4130118134_1564065396_1755118265_init();
    simprim_a_4130118134_1564065396_2011133016_init();
    simprim_a_4130118134_1564065396_1973012993_init();
    simprim_a_1598336158_2000130859_2709952325_init();
    simprim_a_2947670314_2000130859_2709952325_init();
    simprim_a_0985740735_2000130859_2709952325_init();
    simprim_a_3318298065_2000130859_2747279644_init();
    simprim_a_0985740735_2000130859_2747279644_init();
    simprim_a_4116652663_2000130859_2747279644_init();
    simprim_a_3270320263_2000130859_2747279644_init();
    simprim_a_2460595409_2000130859_2718057259_init();
    simprim_a_0985740735_2000130859_3985398905_init();
    simprim_a_0173550287_2000130859_3985398905_init();
    simprim_a_0985740735_2000130859_3964548686_init();
    simprim_a_2507824909_2000130859_3993536535_init();
    simprim_a_3558236686_2000130859_4200682365_init();
    simprim_a_3741526215_2000130859_4047311936_init();
    simprim_a_0497638544_2000130859_4047311936_init();
    simprim_a_3145232483_2000130859_4047311936_init();
    simprim_a_0229359786_2000130859_4047311936_init();
    simprim_a_2109581692_2000130859_0979486693_init();
    simprim_a_3326646691_2000130859_0979486693_init();
    simprim_a_3932147493_2000130859_0979486693_init();
    simprim_a_2709627253_2000130859_0979486693_init();
    simprim_a_1723096334_2000130859_1792689376_init();
    simprim_a_3844788919_2000130859_1792689376_init();
    simprim_a_2533970058_2000130859_1792689376_init();
    simprim_a_3088366873_2000130859_1755118265_init();
    simprim_a_0948011402_2000130859_1755118265_init();
    simprim_a_1467781617_2000130859_1755118265_init();
    simprim_a_3835764097_2000130859_1755118265_init();
    simprim_a_0368033664_2000130859_1767805070_init();
    simprim_a_0485670300_2000130859_1767805070_init();
    simprim_a_1181001749_2000130859_1644353459_init();
    simprim_a_2901025878_2000130859_0660928349_init();
    simprim_a_1255536098_2000130859_2011133016_init();
    simprim_a_0530524929_2000130859_2011133016_init();
    simprim_a_1874501026_2000130859_2011133016_init();
    simprim_a_1301906988_2000130859_1973012993_init();
    simprim_a_3403078252_2000130859_1973012993_init();
    simprim_a_3356371959_2000130859_1973012993_init();
    simprim_a_3631502144_2000130859_1973012993_init();
    simprim_a_0501940263_2000130859_3200588196_init();
    simprim_a_0887140716_2000130859_3200588196_init();
    simprim_a_2866304254_1478103974_2709952325_init();
    simprim_a_2866304254_1478103974_2747279644_init();
    simprim_a_2866304254_1478103974_2718057259_init();
    simprim_a_2866304254_1478103974_3985398905_init();
    simprim_a_2866304254_1478103974_3964548686_init();
    simprim_a_2866304254_1478103974_3993536535_init();
    simprim_a_0635194858_1970351474_2709952325_init();
    simprim_a_0635194858_1970351474_2747279644_init();
    simprim_a_0635194858_1970351474_3985398905_init();
    simprim_a_1237896311_1970351474_3985398905_init();
    simprim_a_0635194858_1970351474_3964548686_init();
    simprim_a_1575601587_1970351474_4047311936_init();
    simprim_a_1995528651_1970351474_4047311936_init();
    simprim_a_3930216994_1970351474_1755118265_init();
    simprim_a_2348916419_1970351474_1767805070_init();
    simprim_a_2148751003_1970351474_1644353459_init();
    simprim_a_0200437403_1970351474_2011133016_init();
    simprim_a_0694554524_1970351474_2011133016_init();
    simprim_a_3375946600_1970351474_1973012993_init();
    simprim_a_3395610110_2220797900_3985398905_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_0915285367_2431929443_0078345519_init();
    simprim_a_0915285367_2431929443_2903767546_init();
    simprim_a_0915285367_2431929443_4082044737_init();
    simprim_a_0915285367_2431929443_0433961640_init();
    simprim_a_3156740924_4150518722_2884479777_init();
    simprim_a_3156740924_4150518722_2855256342_init();
    simprim_a_3156740924_4150518722_2825486159_init();
    simprim_a_3156740924_4150518722_0371120833_init();
    simprim_a_2295199258_3300903326_2766042708_init();
    simprim_a_3936907874_4055128042_4047311936_init();
    simprim_a_3592211381_2402822232_1767805070_init();
    simprim_a_3592211381_2402822232_1644353459_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_3508170938_0632001823_init();
    work_a_3065855957_2372691052_init();


    xsi_register_tops("work_a_3065855957_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");

    return xsi_run_simulation(argc, argv);

}
