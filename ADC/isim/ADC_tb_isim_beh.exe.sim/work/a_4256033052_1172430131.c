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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/ADC/ADC.vhd";



static void work_a_4256033052_1172430131_p_0(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(35, ng0);

LAB3:    t1 = (t0 + 9748);
    t3 = (t0 + 5832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4256033052_1172430131_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(36, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5896);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5736);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4256033052_1172430131_p_2(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(37, ng0);

LAB3:    t1 = (t0 + 9752);
    t3 = (t0 + 5960);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4256033052_1172430131_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    static char *nl0[] = {&&LAB9, &&LAB10, &&LAB11, &&LAB12};

LAB0:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5752);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 2792U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (char *)((nl0) + t9);
    goto **((char **)t4);

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB63;

LAB65:
LAB64:    goto LAB3;

LAB9:    xsi_set_current_line(45, ng0);
    t10 = (t0 + 3568U);
    t11 = *((char **)t10);
    t12 = *((int *)t11);
    t13 = (t12 < 300);
    if (t13 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 6280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);

LAB14:    goto LAB8;

LAB10:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 6024);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t18 = (t12 + 1);
    t2 = (t0 + 3568U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t18;
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3688U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t1 = (t12 < 8);
    if (t1 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3688U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6024);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 6152);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 6280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB17:    goto LAB8;

LAB11:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t18 = (t12 + 1);
    t2 = (t0 + 3568U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t18;
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3688U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t1 = (t12 < 34);
    if (t1 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 3688U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 6280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB27:    goto LAB8;

LAB12:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t18 = (t12 + 1);
    t2 = (t0 + 3568U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t18;
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t3 = (t12 < 500);
    if (t3 == 1)
        goto LAB49;

LAB50:    t1 = (unsigned char)0;

LAB51:    if (t1 != 0)
        goto LAB46;

LAB48:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 3688U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 6472);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 6280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB47:    goto LAB8;

LAB13:    xsi_set_current_line(46, ng0);
    t10 = (t0 + 6024);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 6088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 6152);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 6216);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t18 = (t12 + 1);
    t2 = (t0 + 3568U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t18;
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 6280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    goto LAB14;

LAB16:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3568U);
    t5 = *((char **)t2);
    t18 = *((int *)t5);
    t3 = (t18 < 6);
    if (t3 != 0)
        goto LAB19;

LAB21:    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t1 = (t12 < 12);
    if (t1 != 0)
        goto LAB22;

LAB23:    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t1 = (t12 < 15);
    if (t1 != 0)
        goto LAB24;

LAB25:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3688U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t18 = (t12 + 1);
    t2 = (t0 + 3688U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t18;

LAB20:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 6280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB17;

LAB19:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3112U);
    t8 = *((char **)t2);
    t2 = (t0 + 3688U);
    t10 = *((char **)t2);
    t19 = *((int *)t10);
    t20 = (t19 - 0);
    t21 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t19);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t2 = (t8 + t23);
    t6 = *((unsigned char *)t2);
    t11 = (t0 + 6152);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t6;
    xsi_driver_first_trans_fast_port(t11);
    goto LAB20;

LAB22:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 6088);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB20;

LAB24:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 6088);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB20;

LAB26:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3568U);
    t5 = *((char **)t2);
    t18 = *((int *)t5);
    t3 = (t18 <= 2);
    if (t3 != 0)
        goto LAB29;

LAB31:    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t1 = (t12 < 4);
    if (t1 != 0)
        goto LAB35;

LAB36:    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t1 = (t12 < 6);
    if (t1 != 0)
        goto LAB40;

LAB41:    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t1 = (t12 < 9);
    if (t1 != 0)
        goto LAB42;

LAB43:    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t1 = (t12 < 10);
    if (t1 != 0)
        goto LAB44;

LAB45:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3688U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t18 = (t12 + 1);
    t2 = (t0 + 3688U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t18;

LAB30:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 6280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB27;

LAB29:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3688U);
    t8 = *((char **)t2);
    t19 = *((int *)t8);
    t6 = (t19 == 0);
    if (t6 != 0)
        goto LAB32;

LAB34:
LAB33:    goto LAB30;

LAB32:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 6216);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB33;

LAB35:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3688U);
    t5 = *((char **)t2);
    t18 = *((int *)t5);
    t3 = (t18 == 0);
    if (t3 != 0)
        goto LAB37;

LAB39:
LAB38:    goto LAB30;

LAB37:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 6216);
    t8 = (t2 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB38;

LAB40:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 6088);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB30;

LAB42:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t3 = *((unsigned char *)t5);
    t2 = (t0 + 3688U);
    t8 = *((char **)t2);
    t18 = *((int *)t8);
    t19 = (t18 - 33);
    t21 = (t19 * -1);
    t22 = (1 * t21);
    t23 = (0U + t22);
    t2 = (t0 + 6344);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t3;
    xsi_driver_first_trans_delta(t2, t23, 1, 0LL);
    goto LAB30;

LAB44:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 6088);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB30;

LAB46:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1352U);
    t8 = *((char **)t2);
    t2 = (t0 + 9760);
    t18 = xsi_mem_cmp(t2, t8, 2U);
    if (t18 == 1)
        goto LAB53;

LAB58:    t11 = (t0 + 9762);
    t19 = xsi_mem_cmp(t11, t8, 2U);
    if (t19 == 1)
        goto LAB54;

LAB59:    t15 = (t0 + 9764);
    t20 = xsi_mem_cmp(t15, t8, 2U);
    if (t20 == 1)
        goto LAB55;

LAB60:    t17 = (t0 + 9766);
    t25 = xsi_mem_cmp(t17, t8, 2U);
    if (t25 == 1)
        goto LAB56;

LAB61:
LAB57:    xsi_set_current_line(117, ng0);
    t2 = xsi_get_transient_memory(7U);
    memset(t2, 0, 7U);
    t4 = t2;
    memset(t4, (unsigned char)2, 7U);
    t5 = (t0 + 6408);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);

LAB52:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 6280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB47;

LAB49:    t2 = (t0 + 2952U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB51;

LAB53:    xsi_set_current_line(113, ng0);
    t26 = (t0 + 3272U);
    t27 = *((char **)t26);
    t21 = (33 - 31);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t26 = (t27 + t23);
    t28 = (t0 + 6408);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 7U);
    xsi_driver_first_trans_fast_port(t28);
    goto LAB52;

LAB54:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 3272U);
    t4 = *((char **)t2);
    t21 = (33 - 24);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t2 = (t4 + t23);
    t5 = (t0 + 6408);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB52;

LAB55:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3272U);
    t4 = *((char **)t2);
    t21 = (33 - 15);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t2 = (t4 + t23);
    t5 = (t0 + 6408);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB52;

LAB56:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 3272U);
    t4 = *((char **)t2);
    t21 = (33 - 8);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t2 = (t4 + t23);
    t5 = (t0 + 6408);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB52;

LAB62:;
LAB63:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 3568U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 6280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(132, ng0);
    t2 = xsi_get_transient_memory(7U);
    memset(t2, 0, 7U);
    t4 = t2;
    memset(t4, (unsigned char)2, 7U);
    t5 = (t0 + 6408);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t2, 7U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB64;

}


extern void work_a_4256033052_1172430131_init()
{
	static char *pe[] = {(void *)work_a_4256033052_1172430131_p_0,(void *)work_a_4256033052_1172430131_p_1,(void *)work_a_4256033052_1172430131_p_2,(void *)work_a_4256033052_1172430131_p_3};
	xsi_register_didat("work_a_4256033052_1172430131", "isim/ADC_tb_isim_beh.exe.sim/work/a_4256033052_1172430131.didat");
	xsi_register_executes(pe);
}
