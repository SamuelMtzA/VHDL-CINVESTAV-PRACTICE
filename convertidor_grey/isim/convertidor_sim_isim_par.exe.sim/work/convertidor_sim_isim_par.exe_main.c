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

char *VL_P_2533777724;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004134447467_2073120511_init();
    simprims_ver_m_00000000000648012491_3151998091_2149639921_init();
    simprims_ver_m_00000000000648012491_3151998091_0112497759_init();
    simprims_ver_m_00000000000648012491_3151998091_2636502601_init();
    simprims_ver_m_00000000000648012491_3151998091_1450771948_init();
    simprims_ver_m_00000000001867363923_1692233196_2149639921_init();
    simprims_ver_m_00000000001867363923_1692233196_0112497759_init();
    simprims_ver_m_00000000001867363923_1692233196_2636502601_init();
    simprims_ver_m_00000000001867363923_1692233196_1450771948_init();
    simprims_ver_m_00000000003359274523_2662658903_4186496172_init();
    simprims_ver_m_00000000003359274523_2662658903_1429921281_init();
    simprims_ver_m_00000000003359274523_2662658903_3265646376_init();
    simprims_ver_m_00000000003359274523_2662658903_1610602264_init();
    simprims_ver_m_00000000000240393974_1199645112_4186496172_init();
    simprims_ver_m_00000000000240393974_1199645112_1429921281_init();
    simprims_ver_m_00000000000240393974_1199645112_3265646376_init();
    simprims_ver_m_00000000000240393974_1199645112_1610602264_init();
    simprims_ver_m_00000000001255213976_2021654676_4186496172_init();
    simprims_ver_m_00000000001255213976_2021654676_1429921281_init();
    simprims_ver_m_00000000001255213976_2021654676_3265646376_init();
    simprims_ver_m_00000000001255213976_2021654676_1610602264_init();
    simprims_ver_m_00000000001255213976_2021654676_2149639921_init();
    simprims_ver_m_00000000001255213976_2021654676_0112497759_init();
    simprims_ver_m_00000000001255213976_2021654676_2636502601_init();
    simprims_ver_m_00000000001255213976_2021654676_1450771948_init();
    simprims_ver_m_00000000003598591109_1595077949_0471286396_init();
    simprims_ver_m_00000000003598591109_2174163173_3205766657_init();
    simprims_ver_m_00000000003598591109_1595077949_3205766657_init();
    simprims_ver_m_00000000000126354981_1080494567_init();
    work_m_00000000003474468124_4073578283_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    vl_p_2533777724_init();
    work_a_0345506196_2372691052_init();


    xsi_register_tops("work_a_0345506196_2372691052");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
