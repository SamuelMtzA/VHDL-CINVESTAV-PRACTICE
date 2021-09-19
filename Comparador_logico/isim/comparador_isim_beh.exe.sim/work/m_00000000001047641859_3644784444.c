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
static const char *ng0 = "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/Comparador_logico/comparador.v";
static unsigned int ng1[] = {4U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {1U, 0U};



static void Cont_12_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char t26[8];
    char t27[8];
    char t31[8];
    char t59[8];
    char t91[8];
    char t92[8];
    char t96[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t93;
    char *t94;
    char *t95;
    char *t97;
    char *t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    char *t129;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(12, ng0);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    t2 = (t0 + 1208U);
    t6 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t5 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB5;

LAB4:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t5) > *((unsigned int *)t6))
        goto LAB6;

LAB7:    memset(t4, 0, 8);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t10) != 0)
        goto LAB11;

LAB12:    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t17);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB13;

LAB14:    t22 = *((unsigned int *)t4);
    t23 = (~(t22));
    t24 = *((unsigned int *)t17);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t17) > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t4) > 0)
        goto LAB19;

LAB20:    memcpy(t3, t26, 8);

LAB21:    t116 = (t0 + 2928);
    t117 = (t116 + 56U);
    t118 = *((char **)t117);
    t119 = (t118 + 56U);
    t120 = *((char **)t119);
    memset(t120, 0, 8);
    t121 = 7U;
    t122 = t121;
    t123 = (t3 + 4);
    t124 = *((unsigned int *)t3);
    t121 = (t121 & t124);
    t125 = *((unsigned int *)t123);
    t122 = (t122 & t125);
    t126 = (t120 + 4);
    t127 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t127 | t121);
    t128 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t128 | t122);
    xsi_driver_vfirst_trans(t116, 0, 2);
    t129 = (t0 + 2848);
    *((int *)t129) = 1;

LAB1:    return;
LAB5:    t9 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t7) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t4) = 1;
    goto LAB12;

LAB11:    t16 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB12;

LAB13:    t21 = ((char*)((ng1)));
    goto LAB14;

LAB15:    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = (t0 + 1208U);
    t30 = *((char **)t28);
    memset(t31, 0, 8);
    t28 = (t29 + 4);
    t32 = (t30 + 4);
    t33 = *((unsigned int *)t29);
    t34 = *((unsigned int *)t30);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t32);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t32);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB25;

LAB22:    if (t42 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t31) = 1;

LAB25:    memset(t27, 0, 8);
    t46 = (t31 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (~(t47));
    t49 = *((unsigned int *)t31);
    t50 = (t49 & t48);
    t51 = (t50 & 1U);
    if (t51 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t46) != 0)
        goto LAB28;

LAB29:    t53 = (t27 + 4);
    t54 = *((unsigned int *)t27);
    t55 = *((unsigned int *)t53);
    t56 = (t54 || t55);
    if (t56 > 0)
        goto LAB30;

LAB31:    t87 = *((unsigned int *)t27);
    t88 = (~(t87));
    t89 = *((unsigned int *)t53);
    t90 = (t88 || t89);
    if (t90 > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t53) > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t27) > 0)
        goto LAB36;

LAB37:    memcpy(t26, t91, 8);

LAB38:    goto LAB16;

LAB17:    xsi_vlog_unsigned_bit_combine(t3, 32, t21, 32, t26, 32);
    goto LAB21;

LAB19:    memcpy(t3, t21, 8);
    goto LAB21;

LAB24:    t45 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB25;

LAB26:    *((unsigned int *)t27) = 1;
    goto LAB29;

LAB28:    t52 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB29;

LAB30:    t57 = ((char*)((ng2)));
    t58 = ((char*)((ng3)));
    t60 = *((unsigned int *)t57);
    t61 = *((unsigned int *)t58);
    t62 = (t60 | t61);
    *((unsigned int *)t59) = t62;
    t63 = (t57 + 4);
    t64 = (t58 + 4);
    t65 = (t59 + 4);
    t66 = *((unsigned int *)t63);
    t67 = *((unsigned int *)t64);
    t68 = (t66 | t67);
    *((unsigned int *)t65) = t68;
    t69 = *((unsigned int *)t65);
    t70 = (t69 != 0);
    if (t70 == 1)
        goto LAB39;

LAB40:
LAB41:    goto LAB31;

LAB32:    t93 = (t0 + 1048U);
    t94 = *((char **)t93);
    t93 = (t0 + 1208U);
    t95 = *((char **)t93);
    memset(t96, 0, 8);
    t93 = (t94 + 4);
    if (*((unsigned int *)t93) != 0)
        goto LAB43;

LAB42:    t97 = (t95 + 4);
    if (*((unsigned int *)t97) != 0)
        goto LAB43;

LAB46:    if (*((unsigned int *)t94) < *((unsigned int *)t95))
        goto LAB44;

LAB45:    memset(t92, 0, 8);
    t99 = (t96 + 4);
    t100 = *((unsigned int *)t99);
    t101 = (~(t100));
    t102 = *((unsigned int *)t96);
    t103 = (t102 & t101);
    t104 = (t103 & 1U);
    if (t104 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t99) != 0)
        goto LAB49;

LAB50:    t106 = (t92 + 4);
    t107 = *((unsigned int *)t92);
    t108 = *((unsigned int *)t106);
    t109 = (t107 || t108);
    if (t109 > 0)
        goto LAB51;

LAB52:    t111 = *((unsigned int *)t92);
    t112 = (~(t111));
    t113 = *((unsigned int *)t106);
    t114 = (t112 || t113);
    if (t114 > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t106) > 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t92) > 0)
        goto LAB57;

LAB58:    memcpy(t91, t115, 8);

LAB59:    goto LAB33;

LAB34:    xsi_vlog_unsigned_bit_combine(t26, 32, t59, 32, t91, 32);
    goto LAB38;

LAB36:    memcpy(t26, t59, 8);
    goto LAB38;

LAB39:    t71 = *((unsigned int *)t59);
    t72 = *((unsigned int *)t65);
    *((unsigned int *)t59) = (t71 | t72);
    t73 = (t57 + 4);
    t74 = (t58 + 4);
    t75 = *((unsigned int *)t73);
    t76 = (~(t75));
    t77 = *((unsigned int *)t57);
    t78 = (t77 & t76);
    t79 = *((unsigned int *)t74);
    t80 = (~(t79));
    t81 = *((unsigned int *)t58);
    t82 = (t81 & t80);
    t83 = (~(t78));
    t84 = (~(t82));
    t85 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t85 & t83);
    t86 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t86 & t84);
    goto LAB41;

LAB43:    t98 = (t96 + 4);
    *((unsigned int *)t96) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB45;

LAB44:    *((unsigned int *)t96) = 1;
    goto LAB45;

LAB47:    *((unsigned int *)t92) = 1;
    goto LAB50;

LAB49:    t105 = (t92 + 4);
    *((unsigned int *)t92) = 1;
    *((unsigned int *)t105) = 1;
    goto LAB50;

LAB51:    t110 = ((char*)((ng4)));
    goto LAB52;

LAB53:    t115 = ((char*)((ng2)));
    goto LAB54;

LAB55:    xsi_vlog_unsigned_bit_combine(t91, 32, t110, 32, t115, 32);
    goto LAB59;

LAB57:    memcpy(t91, t110, 8);
    goto LAB59;

}


extern void work_m_00000000001047641859_3644784444_init()
{
	static char *pe[] = {(void *)Cont_12_0};
	xsi_register_didat("work_m_00000000001047641859_3644784444", "isim/comparador_isim_beh.exe.sim/work/m_00000000001047641859_3644784444.didat");
	xsi_register_executes(pe);
}
