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

/* This file is designed for use with ISim build 0x6dd86d03 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/.Xilinx/IDP/time_multiplexer_4digit.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3565957405_3212880686_p_0(char *t0)
{
    char t21[16];
    char t22[16];
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
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2028);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 3651);
    t6 = (t0 + 2080);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 960U);
    t6 = *((char **)t2);
    t13 = (0 - 3);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t2 = (t6 + t16);
    t17 = *((unsigned char *)t2);
    t7 = (t0 + 960U);
    t8 = *((char **)t7);
    t18 = (3 - 3);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t7 = (t8 + t20);
    t10 = ((IEEE_P_2592010699) + 2332);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 3;
    t24 = (t23 + 4U);
    *((int *)t24) = 1;
    t24 = (t23 + 8U);
    *((int *)t24) = -1;
    t25 = (1 - 3);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t9 = xsi_base_array_concat(t9, t21, t10, (char)99, t17, (char)97, t7, t22, (char)101);
    t26 = (1U + 3U);
    t27 = (4U != t26);
    if (t27 == 1)
        goto LAB10;

LAB11:    t24 = (t0 + 2080);
    t28 = (t24 + 32U);
    t29 = *((char **)t28);
    t30 = (t29 + 40U);
    t31 = *((char **)t30);
    memcpy(t31, t9, 4U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_size_not_matching(4U, t26, 0);
    goto LAB11;

}

static void work_a_3565957405_3212880686_p_1(char *t0)
{
    char t64[16];
    char t66[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;
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
    char *t56;
    char *t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned char t62;
    char *t63;
    char *t65;
    char *t67;
    char *t68;
    int t69;
    unsigned int t70;
    unsigned char t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 3655);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 3659);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 3663);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 3667);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3671);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 5U);

LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1132U);
    t2 = *((char **)t1);
    t16 = (4 - 4);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = (t0 + 3676);
    t4 = xsi_mem_cmp(t3, t1, 4U);
    if (t4 == 1)
        goto LAB14;

LAB31:    t6 = (t0 + 3680);
    t7 = xsi_mem_cmp(t6, t1, 4U);
    if (t7 == 1)
        goto LAB15;

LAB32:    t9 = (t0 + 3684);
    t10 = xsi_mem_cmp(t9, t1, 4U);
    if (t10 == 1)
        goto LAB16;

LAB33:    t12 = (t0 + 3688);
    t13 = xsi_mem_cmp(t12, t1, 4U);
    if (t13 == 1)
        goto LAB17;

LAB34:    t15 = (t0 + 3692);
    t21 = xsi_mem_cmp(t15, t1, 4U);
    if (t21 == 1)
        goto LAB18;

LAB35:    t20 = (t0 + 3696);
    t23 = xsi_mem_cmp(t20, t1, 4U);
    if (t23 == 1)
        goto LAB19;

LAB36:    t24 = (t0 + 3700);
    t26 = xsi_mem_cmp(t24, t1, 4U);
    if (t26 == 1)
        goto LAB20;

LAB37:    t27 = (t0 + 3704);
    t29 = xsi_mem_cmp(t27, t1, 4U);
    if (t29 == 1)
        goto LAB21;

LAB38:    t30 = (t0 + 3708);
    t32 = xsi_mem_cmp(t30, t1, 4U);
    if (t32 == 1)
        goto LAB22;

LAB39:    t33 = (t0 + 3712);
    t35 = xsi_mem_cmp(t33, t1, 4U);
    if (t35 == 1)
        goto LAB23;

LAB40:    t36 = (t0 + 3716);
    t38 = xsi_mem_cmp(t36, t1, 4U);
    if (t38 == 1)
        goto LAB24;

LAB41:    t39 = (t0 + 3720);
    t41 = xsi_mem_cmp(t39, t1, 4U);
    if (t41 == 1)
        goto LAB25;

LAB42:    t42 = (t0 + 3724);
    t44 = xsi_mem_cmp(t42, t1, 4U);
    if (t44 == 1)
        goto LAB26;

LAB43:    t45 = (t0 + 3728);
    t47 = xsi_mem_cmp(t45, t1, 4U);
    if (t47 == 1)
        goto LAB27;

LAB44:    t48 = (t0 + 3732);
    t50 = xsi_mem_cmp(t48, t1, 4U);
    if (t50 == 1)
        goto LAB28;

LAB45:    t51 = (t0 + 3736);
    t53 = xsi_mem_cmp(t51, t1, 4U);
    if (t53 == 1)
        goto LAB29;

LAB46:
LAB30:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3852);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB80;

LAB81:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);

LAB13:    t1 = (t0 + 2036);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(55, ng0);
    t14 = (t0 + 776U);
    t15 = *((char **)t14);
    t16 = (19 - 4);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t14 = (t15 + t18);
    t19 = (t0 + 1132U);
    t20 = *((char **)t19);
    t19 = (t20 + 0);
    memcpy(t19, t14, 5U);
    goto LAB2;

LAB4:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t16 = (19 - 9);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 5U);
    goto LAB2;

LAB5:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t16 = (19 - 14);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 5U);
    goto LAB2;

LAB6:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t16 = (19 - 19);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 5U);
    goto LAB2;

LAB12:;
LAB14:    xsi_set_current_line(64, ng0);
    t54 = (t0 + 3740);
    t56 = (t0 + 1132U);
    t57 = *((char **)t56);
    t58 = (0 - 4);
    t59 = (t58 * -1);
    t60 = (1U * t59);
    t61 = (0 + t60);
    t56 = (t57 + t61);
    t62 = *((unsigned char *)t56);
    t65 = ((IEEE_P_2592010699) + 2332);
    t67 = (t66 + 0U);
    t68 = (t67 + 0U);
    *((int *)t68) = 0;
    t68 = (t67 + 4U);
    *((int *)t68) = 6;
    t68 = (t67 + 8U);
    *((int *)t68) = 1;
    t69 = (6 - 0);
    t70 = (t69 * 1);
    t70 = (t70 + 1);
    t68 = (t67 + 12U);
    *((unsigned int *)t68) = t70;
    t63 = xsi_base_array_concat(t63, t64, t65, (char)97, t54, t66, (char)99, t62, (char)101);
    t70 = (7U + 1U);
    t71 = (8U != t70);
    if (t71 == 1)
        goto LAB48;

LAB49:    t68 = (t0 + 2116);
    t72 = (t68 + 32U);
    t73 = *((char **)t72);
    t74 = (t73 + 40U);
    t75 = *((char **)t74);
    memcpy(t75, t63, 8U);
    xsi_driver_first_trans_fast_port(t68);
    goto LAB13;

LAB15:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 3747);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB50;

LAB51:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB16:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3754);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB52;

LAB53:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB17:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3761);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB54;

LAB55:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB18:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3768);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB56;

LAB57:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB19:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3775);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB58;

LAB59:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB20:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3782);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB60;

LAB61:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB21:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3789);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB62;

LAB63:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB22:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3796);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB64;

LAB65:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB23:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 3803);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB66;

LAB67:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB24:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3810);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB68;

LAB69:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB25:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 3817);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB70;

LAB71:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB26:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 3824);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB72;

LAB73:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB27:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 3831);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB74;

LAB75:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB28:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 3838);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB76;

LAB77:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB29:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 3845);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t4 = (0 - 4);
    t16 = (t4 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t5 + t18);
    t62 = *((unsigned char *)t3);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t66 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 6;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t7 = (6 - 0);
    t59 = (t7 * 1);
    t59 = (t59 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t59;
    t6 = xsi_base_array_concat(t6, t64, t8, (char)97, t1, t66, (char)99, t62, (char)101);
    t59 = (7U + 1U);
    t71 = (8U != t59);
    if (t71 == 1)
        goto LAB78;

LAB79:    t11 = (t0 + 2116);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t19 = *((char **)t15);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB13;

LAB47:;
LAB48:    xsi_size_not_matching(8U, t70, 0);
    goto LAB49;

LAB50:    xsi_size_not_matching(8U, t59, 0);
    goto LAB51;

LAB52:    xsi_size_not_matching(8U, t59, 0);
    goto LAB53;

LAB54:    xsi_size_not_matching(8U, t59, 0);
    goto LAB55;

LAB56:    xsi_size_not_matching(8U, t59, 0);
    goto LAB57;

LAB58:    xsi_size_not_matching(8U, t59, 0);
    goto LAB59;

LAB60:    xsi_size_not_matching(8U, t59, 0);
    goto LAB61;

LAB62:    xsi_size_not_matching(8U, t59, 0);
    goto LAB63;

LAB64:    xsi_size_not_matching(8U, t59, 0);
    goto LAB65;

LAB66:    xsi_size_not_matching(8U, t59, 0);
    goto LAB67;

LAB68:    xsi_size_not_matching(8U, t59, 0);
    goto LAB69;

LAB70:    xsi_size_not_matching(8U, t59, 0);
    goto LAB71;

LAB72:    xsi_size_not_matching(8U, t59, 0);
    goto LAB73;

LAB74:    xsi_size_not_matching(8U, t59, 0);
    goto LAB75;

LAB76:    xsi_size_not_matching(8U, t59, 0);
    goto LAB77;

LAB78:    xsi_size_not_matching(8U, t59, 0);
    goto LAB79;

LAB80:    xsi_size_not_matching(8U, t59, 0);
    goto LAB81;

}


extern void work_a_3565957405_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3565957405_3212880686_p_0,(void *)work_a_3565957405_3212880686_p_1};
	xsi_register_didat("work_a_3565957405_3212880686", "isim/Frequency_Metre_isim_beh.exe.sim/work/a_3565957405_3212880686.didat");
	xsi_register_executes(pe);
}
