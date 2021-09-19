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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/MEALY.vhd";



static void work_a_1253517061_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t10 = (t4 == (unsigned char)3);
    if (t10 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4200);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2288U);
    t5 = *((char **)t1);
    t1 = (t0 + 4296);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 4360);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(36, ng0);
    t5 = (t0 + 1832U);
    t6 = *((char **)t5);
    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t6, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4360);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB7:    t1 = (t0 + 992U);
    t11 = xsi_signal_has_event(t1);
    t3 = t11;
    goto LAB9;

}

static void work_a_1253517061_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    int t9;
    int t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t1 = (t0 + 4488);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 2288U);
    t3 = *((char **)t1);
    t7 = xsi_mem_cmp(t3, t2, 2U);
    if (t7 == 1)
        goto LAB3;

LAB8:    t1 = (t0 + 2408U);
    t4 = *((char **)t1);
    t8 = xsi_mem_cmp(t4, t2, 2U);
    if (t8 == 1)
        goto LAB4;

LAB9:    t1 = (t0 + 2528U);
    t5 = *((char **)t1);
    t9 = xsi_mem_cmp(t5, t2, 2U);
    if (t9 == 1)
        goto LAB5;

LAB10:    t1 = (t0 + 2648U);
    t6 = *((char **)t1);
    t10 = xsi_mem_cmp(t6, t2, 2U);
    if (t10 == 1)
        goto LAB6;

LAB11:
LAB7:
LAB2:    t1 = (t0 + 4216);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1192U);
    t11 = *((char **)t1);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)2);
    if (t13 != 0)
        goto LAB13;

LAB15:
LAB14:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t12 = *((unsigned char *)t2);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB2;

LAB4:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t12 = *((unsigned char *)t2);
    t13 = (t12 == (unsigned char)2);
    if (t13 != 0)
        goto LAB19;

LAB21:
LAB20:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t12 = *((unsigned char *)t2);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB2;

LAB5:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t12 = *((unsigned char *)t2);
    t13 = (t12 == (unsigned char)2);
    if (t13 != 0)
        goto LAB25;

LAB27:
LAB26:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t12 = *((unsigned char *)t2);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB28;

LAB30:
LAB29:    goto LAB2;

LAB6:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t12 = *((unsigned char *)t2);
    t13 = (t12 == (unsigned char)2);
    if (t13 != 0)
        goto LAB31;

LAB33:
LAB32:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t12 = *((unsigned char *)t2);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB34;

LAB36:
LAB35:    goto LAB2;

LAB12:;
LAB13:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2288U);
    t14 = *((char **)t1);
    t1 = (t0 + 4488);
    t15 = (t1 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t14, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2528U);
    t3 = *((char **)t1);
    t1 = (t0 + 4488);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2288U);
    t3 = *((char **)t1);
    t1 = (t0 + 4488);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB20;

LAB22:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2528U);
    t3 = *((char **)t1);
    t1 = (t0 + 4488);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB25:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2528U);
    t3 = *((char **)t1);
    t1 = (t0 + 4488);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB26;

LAB28:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2648U);
    t3 = *((char **)t1);
    t1 = (t0 + 4488);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB29;

LAB31:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2648U);
    t3 = *((char **)t1);
    t1 = (t0 + 4488);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB34:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2408U);
    t3 = *((char **)t1);
    t1 = (t0 + 4488);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    memcpy(t11, t3, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4424);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB35;

}


extern void work_a_1253517061_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1253517061_2372691052_p_0,(void *)work_a_1253517061_2372691052_p_1};
	xsi_register_didat("work_a_1253517061_2372691052", "isim/m_tb_isim_beh.exe.sim/work/a_1253517061_2372691052.didat");
	xsi_register_executes(pe);
}
