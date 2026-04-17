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
static const char *ng0 = "C:/Users/CUSTOMER/Desktop/UWI/2021-2022/Semester I/ECNG2004/IDP/Upgrades/Code/IDPv1.1/time_multiplexer_4digit.vhd";
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
    t1 = (t0 + 4354);
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
    int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    int t52;
    char *t53;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 4358);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 4362);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 4366);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 4370);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 4374);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 4U);

LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1132U);
    t2 = *((char **)t1);
    t1 = (t0 + 4378);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB14;

LAB31:    t5 = (t0 + 4382);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB15;

LAB32:    t8 = (t0 + 4386);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB16;

LAB33:    t11 = (t0 + 4390);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB17;

LAB34:    t14 = (t0 + 4394);
    t21 = xsi_mem_cmp(t14, t2, 4U);
    if (t21 == 1)
        goto LAB18;

LAB35:    t19 = (t0 + 4398);
    t22 = xsi_mem_cmp(t19, t2, 4U);
    if (t22 == 1)
        goto LAB19;

LAB36:    t23 = (t0 + 4402);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB20;

LAB37:    t26 = (t0 + 4406);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB21;

LAB38:    t29 = (t0 + 4410);
    t31 = xsi_mem_cmp(t29, t2, 4U);
    if (t31 == 1)
        goto LAB22;

LAB39:    t32 = (t0 + 4414);
    t34 = xsi_mem_cmp(t32, t2, 4U);
    if (t34 == 1)
        goto LAB23;

LAB40:    t35 = (t0 + 4418);
    t37 = xsi_mem_cmp(t35, t2, 4U);
    if (t37 == 1)
        goto LAB24;

LAB41:    t38 = (t0 + 4422);
    t40 = xsi_mem_cmp(t38, t2, 4U);
    if (t40 == 1)
        goto LAB25;

LAB42:    t41 = (t0 + 4426);
    t43 = xsi_mem_cmp(t41, t2, 4U);
    if (t43 == 1)
        goto LAB26;

LAB43:    t44 = (t0 + 4430);
    t46 = xsi_mem_cmp(t44, t2, 4U);
    if (t46 == 1)
        goto LAB27;

LAB44:    t47 = (t0 + 4434);
    t49 = xsi_mem_cmp(t47, t2, 4U);
    if (t49 == 1)
        goto LAB28;

LAB45:    t50 = (t0 + 4438);
    t52 = xsi_mem_cmp(t50, t2, 4U);
    if (t52 == 1)
        goto LAB29;

LAB46:
LAB30:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4554);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);

LAB13:    t1 = (t0 + 2036);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(55, ng0);
    t14 = (t0 + 776U);
    t15 = *((char **)t14);
    t16 = (15 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t14 = (t15 + t18);
    t19 = (t0 + 1132U);
    t20 = *((char **)t19);
    t19 = (t20 + 0);
    memcpy(t19, t14, 4U);
    goto LAB2;

LAB4:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t16 = (15 - 7);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 4U);
    goto LAB2;

LAB5:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t16 = (15 - 11);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 4U);
    goto LAB2;

LAB6:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t16 = (15 - 15);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = (t0 + 1132U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 4U);
    goto LAB2;

LAB12:;
LAB14:    xsi_set_current_line(64, ng0);
    t53 = (t0 + 4442);
    t55 = (t0 + 2116);
    t56 = (t55 + 32U);
    t57 = *((char **)t56);
    t58 = (t57 + 40U);
    t59 = *((char **)t58);
    memcpy(t59, t53, 7U);
    xsi_driver_first_trans_fast_port(t55);
    goto LAB13;

LAB15:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4449);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB16:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 4456);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB17:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4463);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB18:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 4470);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB19:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4477);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB20:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4484);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB21:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4491);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB22:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 4498);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB23:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4505);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB24:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 4512);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB25:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4519);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB26:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4526);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB27:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 4533);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB28:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 4540);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB29:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 4547);
    t3 = (t0 + 2116);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB47:;
}


extern void work_a_3565957405_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3565957405_3212880686_p_0,(void *)work_a_3565957405_3212880686_p_1};
	xsi_register_didat("work_a_3565957405_3212880686", "isim/basic_sys_tb_isim_beh.exe.sim/work/a_3565957405_3212880686.didat");
	xsi_register_executes(pe);
}
