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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/multiplicacion_spartan6/multiplicador_tb.vhd";



static void work_a_1149771031_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;

LAB0:    t1 = (t0 + 2512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5260);
    t4 = (t0 + 2896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5277);
    t4 = (t0 + 2960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(41, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 5294);
    t4 = (t0 + 2896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 5311);
    t4 = (t0 + 2960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(45, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t9);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 5328);
    t4 = (t0 + 2896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 5345);
    t4 = (t0 + 2960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(49, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t9);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 5362);
    t4 = (t0 + 2896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 5379);
    t4 = (t0 + 2960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(53, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t9);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 5396);
    t4 = (t0 + 2896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 5413);
    t4 = (t0 + 2960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(57, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t9);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 5430);
    t4 = (t0 + 2896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 5447);
    t4 = (t0 + 2960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(60, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t9);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5464);
    t4 = (t0 + 2896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5481);
    t4 = (t0 + 2960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(63, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t9);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5498);
    t4 = (t0 + 2896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5515);
    t4 = (t0 + 2960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(66, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t9);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 5532);
    t4 = (t0 + 2896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 5549);
    t4 = (t0 + 2960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 17U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(68, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t9);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    goto LAB2;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

}


extern void work_a_1149771031_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1149771031_2372691052_p_0};
	xsi_register_didat("work_a_1149771031_2372691052", "isim/multiplicador_sim_isim_par.exe.sim/work/a_1149771031_2372691052.didat");
	xsi_register_executes(pe);
}
