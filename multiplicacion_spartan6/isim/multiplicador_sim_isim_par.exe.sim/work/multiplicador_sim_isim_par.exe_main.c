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
char *IEEE_P_0774719531;


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
    ieee_p_0774719531_init();
    simprim_a_0915285367_2431929443_3993726888_init();
    simprim_a_0915285367_2431929443_0650740271_init();
    simprim_a_0915285367_2431929443_0764790034_init();
    simprim_a_0915285367_2431929443_3264973230_init();
    simprim_a_0915285367_2431929443_3235723255_init();
    simprim_a_0915285367_2431929443_3314688370_init();
    simprim_a_0915285367_2431929443_3352600363_init();
    simprim_a_0915285367_2431929443_3323393308_init();
    simprim_a_0915285367_2431929443_3847694485_init();
    simprim_a_0915285367_2431929443_1379562623_init();
    simprim_a_0915285367_2431929443_1350355494_init();
    simprim_a_0915285367_2431929443_2001808291_init();
    simprim_a_0915285367_2431929443_1964479994_init();
    simprim_a_0915285367_2431929443_1960181709_init();
    simprim_a_0915285367_2431929443_1905977672_init();
    simprim_a_0915285367_2431929443_2196146988_init();
    simprim_a_0915285367_2431929443_2883074833_init();
    simprim_a_0915285367_2431929443_2929143188_init();
    simprim_a_0915285367_2431929443_3176071683_init();
    simprim_a_0915285367_2431929443_0880553409_init();
    simprim_a_0915285367_2431929443_3293596485_init();
    simprim_a_0915285367_2431929443_1054998731_init();
    simprim_a_0915285367_2431929443_3834987170_init();
    simprim_a_0915285367_2431929443_0596022442_init();
    simprim_a_0915285367_2431929443_1408769608_init();
    simprim_a_0915285367_2431929443_0574946973_init();
    simprim_a_0915285367_2431929443_1809260925_init();
    simprim_a_0915285367_2431929443_0537018564_init();
    simprim_a_0915285367_2431929443_3904941379_init();
    simprim_a_0915285367_2431929443_0566242035_init();
    simprim_a_0915285367_2431929443_3909273460_init();
    simprim_a_0915285367_2431929443_0613366902_init();
    simprim_a_0915285367_2431929443_3964522993_init();
    simprim_a_0915285367_2431929443_3985619910_init();
    simprim_a_0915285367_2431929443_4022928799_init();
    simprim_a_0915285367_2431929443_0433961640_init();
    simprim_a_3156740924_4150518722_0324127812_init();
    simprim_a_3156740924_4150518722_3350324633_init();
    simprim_a_3156740924_4150518722_1059089148_init();
    simprim_a_3156740924_4150518722_3240058304_init();
    simprim_a_3156740924_4150518722_3444224545_init();
    simprim_a_3156740924_4150518722_3431520278_init();
    simprim_a_3156740924_4150518722_2078639356_init();
    simprim_a_3156740924_4150518722_2100184599_init();
    simprim_a_3156740924_4150518722_2137585742_init();
    simprim_a_3156740924_4150518722_1170263316_init();
    simprim_a_3156740924_4150518722_2125107833_init();
    simprim_a_3156740924_4150518722_1141024547_init();
    simprim_a_3156740924_4150518722_1979110724_init();
    simprim_a_3156740924_4150518722_1331617822_init();
    simprim_a_3156740924_4150518722_4252805745_init();
    simprim_a_3156740924_4150518722_1083169681_init();
    simprim_a_3156740924_4150518722_1318881833_init();
    simprim_a_3156740924_4150518722_4129353036_init();
    simprim_a_3156740924_4150518722_1120495048_init();
    simprim_a_3156740924_4150518722_4193375939_init();
    simprim_a_3156740924_4150518722_3947133229_init();
    simprim_a_3156740924_4150518722_1124798463_init();
    simprim_a_3156740924_4150518722_4164140276_init();
    simprim_a_3156740924_4150518722_3934655258_init();
    simprim_a_3156740924_4150518722_1178868090_init();
    simprim_a_3156740924_4150518722_4201972397_init();
    simprim_a_3156740924_4150518722_1199993677_init();
    simprim_a_3156740924_4150518722_4223101082_init();
    simprim_a_3156740924_4150518722_4277698079_init();
    simprim_a_3156740924_4150518722_4281996328_init();
    simprim_a_3156740924_4150518722_2884479777_init();
    simprim_a_3156740924_4150518722_2855256342_init();
    simprim_a_3156740924_4150518722_2825486159_init();
    simprim_a_3156740924_4150518722_0371120833_init();
    simprim_a_2665988219_3425387368_3176071683_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_2764649485_0632001823_init();
    work_a_1149771031_2372691052_init();


    xsi_register_tops("work_a_1149771031_2372691052");

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
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");

    return xsi_run_simulation(argc, argv);

}
