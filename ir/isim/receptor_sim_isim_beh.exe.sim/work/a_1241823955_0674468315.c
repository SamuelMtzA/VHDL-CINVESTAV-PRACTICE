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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/ir/receptor.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1241823955_0674468315_p_0(char *t0)
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

LAB0:    xsi_set_current_line(32, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5896);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 5720);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1241823955_0674468315_p_1(char *t0)
{
    char t10[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;

LAB0:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t3 = (t0 + 1992U);
    t7 = *((char **)t3);
    t3 = (t0 + 9284U);
    t8 = (t0 + 9408);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 12;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (12 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t7, t3, t8, t10);
    t2 = t15;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 2472U);
    t16 = *((char **)t12);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)3);
    t1 = t18;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t3 = (t0 + 1152U);
    t2 = xsi_signal_has_event(t3);
    if (t2 == 1)
        goto LAB13;

LAB14:    t1 = (unsigned char)0;

LAB15:    if (t1 != 0)
        goto LAB11;

LAB12:
LAB3:    t3 = (t0 + 5736);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t12 = xsi_get_transient_memory(13U);
    memset(t12, 0, 13U);
    t19 = t12;
    memset(t19, (unsigned char)2, 13U);
    t20 = (t0 + 5960);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t12, 13U);
    xsi_driver_first_trans_fast(t20);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1992U);
    t8 = *((char **)t4);
    t4 = (t0 + 9284U);
    t9 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t10, t8, t4, 1);
    t11 = (t10 + 12U);
    t14 = *((unsigned int *)t11);
    t25 = (1U * t14);
    t15 = (13U != t25);
    if (t15 == 1)
        goto LAB16;

LAB17:    t12 = (t0 + 5960);
    t16 = (t12 + 56U);
    t19 = *((char **)t16);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t9, 13U);
    xsi_driver_first_trans_fast(t12);
    goto LAB3;

LAB13:    t4 = (t0 + 1192U);
    t7 = *((char **)t4);
    t5 = *((unsigned char *)t7);
    t6 = (t5 == (unsigned char)3);
    t1 = t6;
    goto LAB15;

LAB16:    xsi_size_not_matching(13U, t25, 0);
    goto LAB17;

}

static void work_a_1241823955_0674468315_p_2(char *t0)
{
    char t18[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 2472U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t13 = (0U + 1);
    t13 = (t13 - 1);
    t2 = (t0 + 1952U);
    t4 = xsi_signal_has_event_indexed(t2, 0U, t13);
    if (t4 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 5752);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 6024);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t9 = (t0 + 9300U);
    t11 = (t0 + 9421);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 0;
    t20 = (t19 + 4U);
    *((int *)t20) = 4;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t21 = (4 - 0);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t8 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t10, t9, t11, t18);
    if (t8 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB3;

LAB10:    t3 = (t0 + 1992U);
    t6 = *((char **)t3);
    t14 = (12 - 12);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t3 = (t6 + t17);
    t5 = *((unsigned char *)t3);
    t7 = (t5 == (unsigned char)2);
    t1 = t7;
    goto LAB12;

LAB13:    xsi_set_current_line(52, ng0);
    t20 = (t0 + 6024);
    t23 = (t20 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = (unsigned char)3;
    xsi_driver_first_trans_fast(t20);
    goto LAB14;

}

static void work_a_1241823955_0674468315_p_3(char *t0)
{
    char t15[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 2472U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 2592U);
    t4 = xsi_signal_has_event(t2);
    if (t4 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 5768);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 9426);
    t10 = (t0 + 6088);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1832U);
    t9 = *((char **)t3);
    t3 = (t0 + 9268U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t15, t9, t3, 1);
    t11 = (t15 + 12U);
    t16 = *((unsigned int *)t11);
    t17 = (1U * t16);
    t8 = (4U != t17);
    if (t8 == 1)
        goto LAB13;

LAB14:    t12 = (t0 + 6088);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB3;

LAB10:    t3 = (t0 + 2632U);
    t6 = *((char **)t3);
    t5 = *((unsigned char *)t6);
    t7 = (t5 == (unsigned char)2);
    t1 = t7;
    goto LAB12;

LAB13:    xsi_size_not_matching(4U, t17, 0);
    goto LAB14;

}

static void work_a_1241823955_0674468315_p_4(char *t0)
{
    char t21[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 2472U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t15 = (0U + 1);
    t15 = (t15 - 1);
    t2 = (t0 + 1952U);
    t4 = xsi_signal_has_event_indexed(t2, 0U, t15);
    if (t4 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 5784);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(73, ng0);
    t2 = xsi_get_transient_memory(5U);
    memset(t2, 0, 5U);
    t9 = t2;
    memset(t9, (unsigned char)2, 5U);
    t10 = (t0 + 6152);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 5U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(74, ng0);
    t2 = xsi_get_transient_memory(5U);
    memset(t2, 0, 5U);
    t3 = t2;
    memset(t3, (unsigned char)2, 5U);
    t6 = (t0 + 6216);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(76, ng0);
    t9 = (t0 + 2632U);
    t10 = *((char **)t9);
    t8 = *((unsigned char *)t10);
    t20 = (t8 == (unsigned char)3);
    if (t20 != 0)
        goto LAB13;

LAB15:    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB18;

LAB19:
LAB14:    goto LAB3;

LAB10:    t3 = (t0 + 1992U);
    t6 = *((char **)t3);
    t16 = (12 - 12);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t3 = (t6 + t19);
    t5 = *((unsigned char *)t3);
    t7 = (t5 == (unsigned char)2);
    t1 = t7;
    goto LAB12;

LAB13:    xsi_set_current_line(77, ng0);
    t9 = (t0 + 2152U);
    t11 = *((char **)t9);
    t9 = (t0 + 9300U);
    t12 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t21, t11, t9, 1);
    t13 = (t21 + 12U);
    t22 = *((unsigned int *)t13);
    t23 = (1U * t22);
    t24 = (5U != t23);
    if (t24 == 1)
        goto LAB16;

LAB17:    t14 = (t0 + 6152);
    t25 = (t14 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t12, 5U);
    xsi_driver_first_trans_fast(t14);
    goto LAB14;

LAB16:    xsi_size_not_matching(5U, t23, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2152U);
    t6 = *((char **)t2);
    t2 = (t0 + 6216);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t6, 5U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t2 = xsi_get_transient_memory(5U);
    memset(t2, 0, 5U);
    t3 = t2;
    memset(t3, (unsigned char)2, 5U);
    t6 = (t0 + 6152);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB14;

}

static void work_a_1241823955_0674468315_p_5(char *t0)
{
    char t20[16];
    char t27[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t28;
    char *t29;
    int t30;
    unsigned char t31;
    char *t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 2472U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t15 = (0U + 1);
    t15 = (t15 - 1);
    t2 = (t0 + 1952U);
    t5 = xsi_signal_has_event_indexed(t2, 0U, t15);
    if (t5 == 1)
        goto LAB13;

LAB14:    t4 = (unsigned char)0;

LAB15:    if (t4 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 5800);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(92, ng0);
    t2 = xsi_get_transient_memory(13U);
    memset(t2, 0, 13U);
    t9 = t2;
    memset(t9, (unsigned char)2, 13U);
    t10 = (t0 + 6280);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 13U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(95, ng0);
    t14 = (t0 + 2312U);
    t24 = *((char **)t14);
    t14 = (t0 + 9316U);
    t25 = (t0 + 9434);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 3;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (3 - 0);
    t22 = (t30 * 1);
    t22 = (t22 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t22;
    t31 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t24, t14, t25, t27);
    if (t31 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t16 = *((int *)t3);
    t21 = (t16 - 12);
    t15 = (t21 * -1);
    t17 = (1 * t15);
    t18 = (0U + t17);
    t2 = (t0 + 6280);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, t18, 1, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t16 = *((int *)t3);
    t21 = (t16 + 1);
    t2 = (t0 + 2928U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t21;

LAB17:    goto LAB3;

LAB10:    t9 = (t0 + 2312U);
    t10 = *((char **)t9);
    t9 = (t0 + 9316U);
    t11 = (t0 + 9430);
    t13 = (t20 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 3;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t21 = (3 - 0);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t22;
    t23 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t10, t9, t11, t20);
    t1 = t23;
    goto LAB12;

LAB13:    t3 = (t0 + 1992U);
    t6 = *((char **)t3);
    t16 = (12 - 12);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t3 = (t6 + t19);
    t7 = *((unsigned char *)t3);
    t8 = (t7 == (unsigned char)3);
    t4 = t8;
    goto LAB15;

LAB16:    xsi_set_current_line(96, ng0);
    t29 = (t0 + 2928U);
    t32 = *((char **)t29);
    t33 = *((int *)t32);
    t34 = (t33 - 12);
    t22 = (t34 * -1);
    t35 = (1 * t22);
    t36 = (0U + t35);
    t29 = (t0 + 6280);
    t37 = (t29 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = (unsigned char)2;
    xsi_driver_first_trans_delta(t29, t36, 1, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t16 = *((int *)t3);
    t21 = (t16 + 1);
    t2 = (t0 + 2928U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t21;
    goto LAB17;

}

static void work_a_1241823955_0674468315_p_6(char *t0)
{
    char t18[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned char t17;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t11 = (0U + 1);
    t11 = (t11 - 1);
    t1 = (t0 + 1952U);
    t4 = xsi_signal_has_event_indexed(t1, 0U, t11);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(109, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t5 = t1;
    memset(t5, (unsigned char)2, 7U);
    t6 = (t0 + 6344);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(111, ng0);
    t6 = (t0 + 1832U);
    t7 = *((char **)t6);
    t6 = (t0 + 9268U);
    t8 = (t0 + 9438);
    t10 = (t18 + 0U);
    t19 = (t10 + 0U);
    *((int *)t19) = 0;
    t19 = (t10 + 4U);
    *((int *)t19) = 3;
    t19 = (t10 + 8U);
    *((int *)t19) = 1;
    t20 = (3 - 0);
    t21 = (t20 * 1);
    t21 = (t21 + 1);
    t19 = (t10 + 12U);
    *((unsigned int *)t19) = t21;
    t22 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t7, t6, t8, t18);
    if (t22 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t12 = (12 - 12);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t2 = (t5 + t15);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)2);
    t3 = t17;
    goto LAB9;

LAB10:    xsi_set_current_line(112, ng0);
    t19 = (t0 + 1672U);
    t23 = *((char **)t19);
    t21 = (12 - 7);
    t24 = (t21 * 1U);
    t25 = (0 + t24);
    t19 = (t23 + t25);
    t26 = (t0 + 6344);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t19, 7U);
    xsi_driver_first_trans_fast_port(t26);
    goto LAB11;

}


extern void work_a_1241823955_0674468315_init()
{
	static char *pe[] = {(void *)work_a_1241823955_0674468315_p_0,(void *)work_a_1241823955_0674468315_p_1,(void *)work_a_1241823955_0674468315_p_2,(void *)work_a_1241823955_0674468315_p_3,(void *)work_a_1241823955_0674468315_p_4,(void *)work_a_1241823955_0674468315_p_5,(void *)work_a_1241823955_0674468315_p_6};
	xsi_register_didat("work_a_1241823955_0674468315", "isim/receptor_sim_isim_beh.exe.sim/work/a_1241823955_0674468315.didat");
	xsi_register_executes(pe);
}
