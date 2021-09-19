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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/cerradura_6/Registro.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0827584957_3212880686_p_0(char *t0)
{
    char t18[16];
    char t19[16];
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
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (2 - 2);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 3072);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(31, ng0);
    t5 = xsi_get_transient_memory(3U);
    memset(t5, 0, 3U);
    t6 = t5;
    memset(t6, (unsigned char)2, 3U);
    t7 = (t0 + 3072);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t5, 3U);
    xsi_driver_first_trans_delta(t7, 1U, 3U, 0LL);
    goto LAB3;

LAB7:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t12 = (3 - 2);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t2 = (t6 + t14);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t19 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 2;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t11 = (0 - 2);
    t20 = (t11 * -1);
    t20 = (t20 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t20;
    t7 = xsi_base_array_concat(t7, t18, t8, (char)97, t2, t19, (char)99, (unsigned char)3, (char)101);
    t20 = (3U + 1U);
    t21 = (4U != t20);
    if (t21 == 1)
        goto LAB12;

LAB13:    t10 = (t0 + 3072);
    t15 = (t10 + 56U);
    t22 = *((char **)t15);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t7, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB9:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t16 = *((unsigned char *)t5);
    t17 = (t16 == (unsigned char)3);
    t3 = t17;
    goto LAB11;

LAB12:    xsi_size_not_matching(4U, t20, 0);
    goto LAB13;

}


extern void work_a_0827584957_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0827584957_3212880686_p_0};
	xsi_register_didat("work_a_0827584957_3212880686", "isim/Cerradura_sim_isim_beh.exe.sim/work/a_0827584957_3212880686.didat");
	xsi_register_executes(pe);
}
