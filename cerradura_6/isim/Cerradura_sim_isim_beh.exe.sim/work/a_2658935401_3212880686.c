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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/cerradura_6/Multiplexor.vhd";
extern char *IEEE_P_3620187407;



static void work_a_2658935401_3212880686_p_0(char *t0)
{
    char t5[16];
    char t20[16];
    char t34[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t35;
    char *t36;
    int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5452U);
    t3 = (t0 + 5510);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 1672U);
    t17 = *((char **)t16);
    t16 = (t0 + 5452U);
    t18 = (t0 + 5512);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 1;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (1 - 0);
    t9 = (t23 * 1);
    t9 = (t9 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t9;
    t24 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t16, t18, t20);
    if (t24 != 0)
        goto LAB5;

LAB6:    t30 = (t0 + 1672U);
    t31 = *((char **)t30);
    t30 = (t0 + 5452U);
    t32 = (t0 + 5514);
    t35 = (t34 + 0U);
    t36 = (t35 + 0U);
    *((int *)t36) = 0;
    t36 = (t35 + 4U);
    *((int *)t36) = 1;
    t36 = (t35 + 8U);
    *((int *)t36) = 1;
    t37 = (1 - 0);
    t9 = (t37 * 1);
    t9 = (t9 + 1);
    t36 = (t35 + 12U);
    *((unsigned int *)t36) = t9;
    t38 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t31, t30, t32, t34);
    if (t38 != 0)
        goto LAB7;

LAB8:
LAB9:    t44 = (t0 + 1512U);
    t45 = *((char **)t44);
    t44 = (t0 + 3392);
    t46 = (t44 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t45, 4U);
    xsi_driver_first_trans_fast_port(t44);

LAB2:    t50 = (t0 + 3312);
    *((int *)t50) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1032U);
    t11 = *((char **)t7);
    t7 = (t0 + 3392);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    t22 = (t0 + 1192U);
    t25 = *((char **)t22);
    t22 = (t0 + 3392);
    t26 = (t22 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB7:    t36 = (t0 + 1352U);
    t39 = *((char **)t36);
    t36 = (t0 + 3392);
    t40 = (t36 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t39, 4U);
    xsi_driver_first_trans_fast_port(t36);
    goto LAB2;

LAB10:    goto LAB2;

}


extern void work_a_2658935401_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2658935401_3212880686_p_0};
	xsi_register_didat("work_a_2658935401_3212880686", "isim/Cerradura_sim_isim_beh.exe.sim/work/a_2658935401_3212880686.didat");
	xsi_register_executes(pe);
}
