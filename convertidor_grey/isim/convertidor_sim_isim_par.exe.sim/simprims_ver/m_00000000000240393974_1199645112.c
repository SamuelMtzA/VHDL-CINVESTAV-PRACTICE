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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static int ng0[] = {1, 0};



static void Gate_28_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 2344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t6, 0, 8);
    t7 = 1U;
    t8 = t7;
    t9 = ((((char*)((ng0)))) + 0);
    t10 = ((((char*)((ng0)))) + 4);
    t11 = *((unsigned int *)t9);
    t7 = (t7 & t11);
    t12 = *((unsigned int *)t10);
    t8 = (t8 & t12);
    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 | t7);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t8);
    t16 = (t0 + 2728);
    xsi_driver_vfirst_trans(t16, 0, 0);

LAB1:    return;
}


extern void simprims_ver_m_00000000000240393974_1199645112_4186496172_init()
{
	static char *pe[] = {(void *)Gate_28_0};
	xsi_register_didat("simprims_ver_m_00000000000240393974_1199645112_4186496172", "isim/convertidor_sim_isim_par.exe.sim/simprims_ver/m_00000000000240393974_1199645112_4186496172.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000240393974_1199645112_1429921281_init()
{
	static char *pe[] = {(void *)Gate_28_0};
	xsi_register_didat("simprims_ver_m_00000000000240393974_1199645112_1429921281", "isim/convertidor_sim_isim_par.exe.sim/simprims_ver/m_00000000000240393974_1199645112_1429921281.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000240393974_1199645112_3265646376_init()
{
	static char *pe[] = {(void *)Gate_28_0};
	xsi_register_didat("simprims_ver_m_00000000000240393974_1199645112_3265646376", "isim/convertidor_sim_isim_par.exe.sim/simprims_ver/m_00000000000240393974_1199645112_3265646376.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000000240393974_1199645112_1610602264_init()
{
	static char *pe[] = {(void *)Gate_28_0};
	xsi_register_didat("simprims_ver_m_00000000000240393974_1199645112_1610602264", "isim/convertidor_sim_isim_par.exe.sim/simprims_ver/m_00000000000240393974_1199645112_1610602264.didat");
	xsi_register_executes(pe);
}
