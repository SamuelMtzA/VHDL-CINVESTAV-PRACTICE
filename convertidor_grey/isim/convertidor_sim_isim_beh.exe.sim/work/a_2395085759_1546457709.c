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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/convertidor_grey/convertidor.vhd";



static void work_a_2395085759_1546457709_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(23, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = xsi_vhdl_bitvec_srl(t1, t3, 4U, 1);
    t4 = xsi_vhdl_bitvec_xor(t4, t2, 4U, t1, 4U);
    t5 = (4U != 4U);
    if (t5 == 1)
        goto LAB5;

LAB6:    t6 = (t0 + 2752);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 2672);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB6;

}


extern void work_a_2395085759_1546457709_init()
{
	static char *pe[] = {(void *)work_a_2395085759_1546457709_p_0};
	xsi_register_didat("work_a_2395085759_1546457709", "isim/convertidor_sim_isim_beh.exe.sim/work/a_2395085759_1546457709.didat");
	xsi_register_executes(pe);
}
