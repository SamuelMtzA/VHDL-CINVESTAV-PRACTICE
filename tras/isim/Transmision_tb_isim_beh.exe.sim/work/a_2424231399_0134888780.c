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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/tras/Transmision.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );


static void work_a_2424231399_0134888780_p_0(char *t0)
{
    char t5[16];
    char t18[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6788U);
    t6 = (t0 + 6894);
    t8 = (t5 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 0;
    t12 = (t8 + 4U);
    *((int *)t12) = 7;
    t12 = (t8 + 8U);
    *((int *)t12) = 1;
    t17 = (7 - 0);
    t9 = (t17 * 1);
    t9 = (t9 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t9;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB7;

LAB8:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB11;

LAB12:
LAB3:    t1 = (t0 + 4088);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2288U);
    t6 = *((char **)t1);
    t1 = (t0 + 6804U);
    t7 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t5, t6, t1, 1);
    t8 = (t5 + 12U);
    t9 = *((unsigned int *)t8);
    t10 = (1U * t9);
    t11 = (16U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 4200);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 6882);
    t6 = (t0 + 4264);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 6886);
    t6 = (t0 + 4328);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_size_not_matching(16U, t10, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(37, ng0);
    t12 = (t0 + 2288U);
    t13 = *((char **)t12);
    t12 = (t0 + 6804U);
    t14 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t18, t13, t12, 1);
    t15 = (t18 + 12U);
    t9 = *((unsigned int *)t15);
    t10 = (1U * t9);
    t4 = (16U != t10);
    if (t4 == 1)
        goto LAB9;

LAB10:    t16 = (t0 + 4200);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 16U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 6902);
    t6 = (t0 + 4264);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB9:    xsi_size_not_matching(16U, t10, 0);
    goto LAB10;

LAB11:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t2 = (t0 + 6756U);
    t8 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t5, t7, t2, 1);
    t12 = (t5 + 12U);
    t9 = *((unsigned int *)t12);
    t10 = (1U * t9);
    t24 = (16U != t10);
    if (t24 == 1)
        goto LAB16;

LAB17:    t13 = (t0 + 4200);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t8, 16U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6756U);
    t6 = (t0 + 2288U);
    t7 = *((char **)t6);
    t6 = (t0 + 6804U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t7, t6);
    if (t3 != 0)
        goto LAB18;

LAB20:
LAB19:    goto LAB3;

LAB13:    t2 = (t0 + 1032U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t23 = (t11 == (unsigned char)3);
    t3 = t23;
    goto LAB15;

LAB16:    xsi_size_not_matching(16U, t10, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(42, ng0);
    t8 = (t0 + 1832U);
    t12 = *((char **)t8);
    t8 = (t0 + 6772U);
    t13 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t5, t12, t8, 1);
    t14 = (t5 + 12U);
    t9 = *((unsigned int *)t14);
    t10 = (1U * t9);
    t4 = (4U != t10);
    if (t4 == 1)
        goto LAB21;

LAB22:    t15 = (t0 + 4264);
    t16 = (t15 + 56U);
    t19 = *((char **)t16);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t13, 4U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(43, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t6 = (t0 + 4200);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6772U);
    t6 = (t0 + 6906);
    t8 = (t5 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 0;
    t12 = (t8 + 4U);
    *((int *)t12) = 3;
    t12 = (t8 + 8U);
    *((int *)t12) = 1;
    t17 = (3 - 0);
    t9 = (t17 * 1);
    t9 = (t9 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t9;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB23;

LAB25:
LAB24:    goto LAB19;

LAB21:    xsi_size_not_matching(4U, t10, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(45, ng0);
    t12 = (t0 + 1992U);
    t13 = *((char **)t12);
    t12 = (t0 + 6788U);
    t14 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t18, t13, t12, 1);
    t15 = (t18 + 12U);
    t9 = *((unsigned int *)t15);
    t10 = (1U * t9);
    t4 = (8U != t10);
    if (t4 == 1)
        goto LAB26;

LAB27:    t16 = (t0 + 4328);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 8U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 6910);
    t6 = (t0 + 4264);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB24;

LAB26:    xsi_size_not_matching(8U, t10, 0);
    goto LAB27;

}

static void work_a_2424231399_0134888780_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    int t53;
    char *t54;
    int t56;
    char *t57;
    int t59;
    char *t60;
    int t62;
    char *t63;
    int t65;
    char *t66;
    int t68;
    char *t69;
    int t71;
    char *t72;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;

LAB0:    t1 = (t0 + 3520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 6914);
    t5 = xsi_mem_cmp(t2, t3, 8U);
    if (t5 == 1)
        goto LAB5;

LAB29:    t6 = (t0 + 6922);
    t8 = xsi_mem_cmp(t6, t3, 8U);
    if (t8 == 1)
        goto LAB6;

LAB30:    t9 = (t0 + 6930);
    t11 = xsi_mem_cmp(t9, t3, 8U);
    if (t11 == 1)
        goto LAB7;

LAB31:    t12 = (t0 + 6938);
    t14 = xsi_mem_cmp(t12, t3, 8U);
    if (t14 == 1)
        goto LAB8;

LAB32:    t15 = (t0 + 6946);
    t17 = xsi_mem_cmp(t15, t3, 8U);
    if (t17 == 1)
        goto LAB9;

LAB33:    t18 = (t0 + 6954);
    t20 = xsi_mem_cmp(t18, t3, 8U);
    if (t20 == 1)
        goto LAB10;

LAB34:    t21 = (t0 + 6962);
    t23 = xsi_mem_cmp(t21, t3, 8U);
    if (t23 == 1)
        goto LAB11;

LAB35:    t24 = (t0 + 6970);
    t26 = xsi_mem_cmp(t24, t3, 8U);
    if (t26 == 1)
        goto LAB12;

LAB36:    t27 = (t0 + 6978);
    t29 = xsi_mem_cmp(t27, t3, 8U);
    if (t29 == 1)
        goto LAB13;

LAB37:    t30 = (t0 + 6986);
    t32 = xsi_mem_cmp(t30, t3, 8U);
    if (t32 == 1)
        goto LAB14;

LAB38:    t33 = (t0 + 6994);
    t35 = xsi_mem_cmp(t33, t3, 8U);
    if (t35 == 1)
        goto LAB15;

LAB39:    t36 = (t0 + 7002);
    t38 = xsi_mem_cmp(t36, t3, 8U);
    if (t38 == 1)
        goto LAB16;

LAB40:    t39 = (t0 + 7010);
    t41 = xsi_mem_cmp(t39, t3, 8U);
    if (t41 == 1)
        goto LAB17;

LAB41:    t42 = (t0 + 7018);
    t44 = xsi_mem_cmp(t42, t3, 8U);
    if (t44 == 1)
        goto LAB18;

LAB42:    t45 = (t0 + 7026);
    t47 = xsi_mem_cmp(t45, t3, 8U);
    if (t47 == 1)
        goto LAB19;

LAB43:    t48 = (t0 + 7034);
    t50 = xsi_mem_cmp(t48, t3, 8U);
    if (t50 == 1)
        goto LAB20;

LAB44:    t51 = (t0 + 7042);
    t53 = xsi_mem_cmp(t51, t3, 8U);
    if (t53 == 1)
        goto LAB21;

LAB45:    t54 = (t0 + 7050);
    t56 = xsi_mem_cmp(t54, t3, 8U);
    if (t56 == 1)
        goto LAB22;

LAB46:    t57 = (t0 + 7058);
    t59 = xsi_mem_cmp(t57, t3, 8U);
    if (t59 == 1)
        goto LAB23;

LAB47:    t60 = (t0 + 7066);
    t62 = xsi_mem_cmp(t60, t3, 8U);
    if (t62 == 1)
        goto LAB24;

LAB48:    t63 = (t0 + 7074);
    t65 = xsi_mem_cmp(t63, t3, 8U);
    if (t65 == 1)
        goto LAB25;

LAB49:    t66 = (t0 + 7082);
    t68 = xsi_mem_cmp(t66, t3, 8U);
    if (t68 == 1)
        goto LAB26;

LAB50:    t69 = (t0 + 7090);
    t71 = xsi_mem_cmp(t69, t3, 8U);
    if (t71 == 1)
        goto LAB27;

LAB51:
LAB28:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7282);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(53, ng0);

LAB55:    t2 = (t0 + 4104);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB56;

LAB1:    return;
LAB5:    xsi_set_current_line(54, ng0);
    t72 = (t0 + 7098);
    t74 = (t0 + 4392);
    t75 = (t74 + 56U);
    t76 = *((char **)t75);
    t77 = (t76 + 56U);
    t78 = *((char **)t77);
    memcpy(t78, t72, 8U);
    xsi_driver_first_trans_fast(t74);
    goto LAB4;

LAB6:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7106);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7114);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7122);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7130);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7138);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7146);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7154);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7162);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7170);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7178);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB16:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7186);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB17:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7194);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB18:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7202);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB19:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7210);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB20:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7218);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB21:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7226);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB22:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7234);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB23:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7242);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB24:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7250);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB25:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7258);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB26:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7266);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB27:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7274);
    t4 = (t0 + 4392);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB52:;
LAB53:    t3 = (t0 + 4104);
    *((int *)t3) = 0;
    goto LAB2;

LAB54:    goto LAB53;

LAB56:    goto LAB54;

}

static void work_a_2424231399_0134888780_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned char t44;

LAB0:    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 7290);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB17:    t6 = (t0 + 7294);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB18:    t9 = (t0 + 7298);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB19:    t12 = (t0 + 7302);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB20:    t15 = (t0 + 7306);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB21:    t18 = (t0 + 7310);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB22:    t21 = (t0 + 7314);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB23:    t24 = (t0 + 7318);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB24:    t27 = (t0 + 7322);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB25:    t30 = (t0 + 7326);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB14;

LAB26:    t33 = (t0 + 7330);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB15;

LAB27:
LAB16:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(80, ng0);

LAB31:    t2 = (t0 + 4120);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB32;

LAB1:    return;
LAB5:    xsi_set_current_line(81, ng0);
    t36 = (t0 + 4456);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t36);
    goto LAB4;

LAB6:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t5 = (0 - 7);
    t41 = (t5 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t2 = (t3 + t43);
    t44 = *((unsigned char *)t2);
    t4 = (t0 + 4456);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t44;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t5 = (1 - 7);
    t41 = (t5 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t2 = (t3 + t43);
    t44 = *((unsigned char *)t2);
    t4 = (t0 + 4456);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t44;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t5 = (2 - 7);
    t41 = (t5 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t2 = (t3 + t43);
    t44 = *((unsigned char *)t2);
    t4 = (t0 + 4456);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t44;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t5 = (3 - 7);
    t41 = (t5 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t2 = (t3 + t43);
    t44 = *((unsigned char *)t2);
    t4 = (t0 + 4456);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t44;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t5 = (4 - 7);
    t41 = (t5 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t2 = (t3 + t43);
    t44 = *((unsigned char *)t2);
    t4 = (t0 + 4456);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t44;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t5 = (5 - 7);
    t41 = (t5 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t2 = (t3 + t43);
    t44 = *((unsigned char *)t2);
    t4 = (t0 + 4456);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t44;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t5 = (6 - 7);
    t41 = (t5 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t2 = (t3 + t43);
    t44 = *((unsigned char *)t2);
    t4 = (t0 + 4456);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t44;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t5 = (7 - 7);
    t41 = (t5 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t2 = (t3 + t43);
    t44 = *((unsigned char *)t2);
    t4 = (t0 + 4456);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t44;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB28:;
LAB29:    t3 = (t0 + 4120);
    *((int *)t3) = 0;
    goto LAB2;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

}


extern void work_a_2424231399_0134888780_init()
{
	static char *pe[] = {(void *)work_a_2424231399_0134888780_p_0,(void *)work_a_2424231399_0134888780_p_1,(void *)work_a_2424231399_0134888780_p_2};
	xsi_register_didat("work_a_2424231399_0134888780", "isim/Transmision_tb_isim_beh.exe.sim/work/a_2424231399_0134888780.didat");
	xsi_register_executes(pe);
}
