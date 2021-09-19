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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/contador_6/contador.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );


static void work_a_2187592342_0701481286_p_0(char *t0)
{
    char t13[16];
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
    unsigned char t11;
    unsigned char t12;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3560);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t1 = xsi_get_transient_memory(27U);
    memset(t1, 0, 27U);
    t5 = t1;
    memset(t5, (unsigned char)2, 27U);
    t6 = (t0 + 3656);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 27U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t2 = (t0 + 5880U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t6, t2, 1);
    t8 = (t13 + 12U);
    t14 = *((unsigned int *)t8);
    t15 = (1U * t14);
    t16 = (27U != t15);
    if (t16 == 1)
        goto LAB10;

LAB11:    t9 = (t0 + 3656);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 27U);
    xsi_driver_first_trans_fast(t9);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_size_not_matching(27U, t15, 0);
    goto LAB11;

}

static void work_a_2187592342_0701481286_p_1(char *t0)
{
    char t24[16];
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
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3576);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 5954);
    t6 = (t0 + 3720);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3784);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t15 = (0 - 3);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5896U);
    t5 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t24, t2, t1, 1);
    t6 = (t24 + 12U);
    t16 = *((unsigned int *)t6);
    t17 = (1U * t16);
    t3 = (4U != t17);
    if (t3 == 1)
        goto LAB25;

LAB26:    t7 = (t0 + 3784);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t21 = *((char **)t10);
    memcpy(t21, t5, 4U);
    xsi_driver_first_trans_fast(t7);

LAB21:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1832U);
    t7 = *((char **)t2);
    t15 = (0 - 3);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t2 = (t7 + t18);
    t19 = *((unsigned char *)t2);
    t20 = (t19 == (unsigned char)3);
    if (t20 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5896U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t24, t2, t1, 1);
    t6 = (t24 + 12U);
    t16 = *((unsigned int *)t6);
    t17 = (1U * t16);
    t3 = (4U != t17);
    if (t3 == 1)
        goto LAB18;

LAB19:    t7 = (t0 + 3784);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t21 = *((char **)t10);
    memcpy(t21, t5, 4U);
    xsi_driver_first_trans_fast(t7);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(43, ng0);
    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t8 = (t0 + 3720);
    t10 = (t8 + 56U);
    t21 = *((char **)t10);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 4U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5896U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t24, t2, t1, 1);
    t6 = (t24 + 12U);
    t16 = *((unsigned int *)t6);
    t17 = (1U * t16);
    t3 = (4U != t17);
    if (t3 == 1)
        goto LAB16;

LAB17:    t7 = (t0 + 3784);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t21 = *((char **)t10);
    memcpy(t21, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB14;

LAB16:    xsi_size_not_matching(4U, t17, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(4U, t17, 0);
    goto LAB19;

LAB20:    xsi_set_current_line(50, ng0);
    t5 = (t0 + 1832U);
    t6 = *((char **)t5);
    t5 = (t0 + 3720);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5896U);
    t5 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t24, t2, t1, 1);
    t6 = (t24 + 12U);
    t16 = *((unsigned int *)t6);
    t17 = (1U * t16);
    t3 = (4U != t17);
    if (t3 == 1)
        goto LAB23;

LAB24:    t7 = (t0 + 3784);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t21 = *((char **)t10);
    memcpy(t21, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB21;

LAB23:    xsi_size_not_matching(4U, t17, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(4U, t17, 0);
    goto LAB26;

}


extern void work_a_2187592342_0701481286_init()
{
	static char *pe[] = {(void *)work_a_2187592342_0701481286_p_0,(void *)work_a_2187592342_0701481286_p_1};
	xsi_register_didat("work_a_2187592342_0701481286", "isim/contador_sim_isim_beh.exe.sim/work/a_2187592342_0701481286.didat");
	xsi_register_executes(pe);
}
