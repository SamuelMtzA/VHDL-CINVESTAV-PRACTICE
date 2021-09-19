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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/cerradura_6/Contador.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_2187592342_3212880686_p_0(char *t0)
{
    char t20[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;

LAB0:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t7 = (2 - 2);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t2 = (t6 + t10);
    t11 = *((unsigned char *)t2);
    t12 = (t11 == (unsigned char)3);
    t1 = t12;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 992U);
    t4 = xsi_signal_has_event(t2);
    if (t4 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 2832);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t13 = xsi_get_transient_memory(3U);
    memset(t13, 0, 3U);
    t14 = t13;
    memset(t14, (unsigned char)2, 3U);
    t15 = (t0 + 2912);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 3U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1352U);
    t13 = *((char **)t3);
    t3 = (t0 + 4660U);
    t14 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t20, t13, t3, 1);
    t15 = (t20 + 12U);
    t8 = *((unsigned int *)t15);
    t9 = (1U * t8);
    t12 = (3U != t9);
    if (t12 == 1)
        goto LAB13;

LAB14:    t16 = (t0 + 2912);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t21 = *((char **)t19);
    memcpy(t21, t14, 3U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB3;

LAB10:    t3 = (t0 + 1032U);
    t6 = *((char **)t3);
    t5 = *((unsigned char *)t6);
    t11 = (t5 == (unsigned char)2);
    t1 = t11;
    goto LAB12;

LAB13:    xsi_size_not_matching(3U, t9, 0);
    goto LAB14;

}


extern void work_a_2187592342_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2187592342_3212880686_p_0};
	xsi_register_didat("work_a_2187592342_3212880686", "isim/Cerradura_sim_isim_beh.exe.sim/work/a_2187592342_3212880686.didat");
	xsi_register_executes(pe);
}
