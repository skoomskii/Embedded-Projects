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
static const char *ng0 = "C:/.Xilinx/IDP/frequency_divider.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_0032968822_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    int t11;
    char *t12;

LAB0:    xsi_set_current_line(28, ng0);
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
LAB3:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1316U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 == 0);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    t1 = (t0 + 2916);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1316U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 5;
    xsi_set_current_line(30, ng0);
    t1 = (t0 + 2992);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1316U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t10 - 1);
    t2 = (t0 + 1316U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t11;
    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB9;

LAB10:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1316U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 5;
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 2992);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t12 = *((char **)t7);
    *((unsigned char *)t12) = t4;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

}

static void work_a_0032968822_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    int t11;
    char *t12;

LAB0:    xsi_set_current_line(45, ng0);
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
LAB3:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1384U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 == 0);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    t1 = (t0 + 2924);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1384U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 10000;
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3028);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1384U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t10 - 1);
    t2 = (t0 + 1384U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t11;
    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB9;

LAB10:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1384U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 10000;
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3028);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t12 = *((char **)t7);
    *((unsigned char *)t12) = t4;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

}

static void work_a_0032968822_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    int t11;
    char *t12;

LAB0:    xsi_set_current_line(62, ng0);
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
LAB3:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1452U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 == 0);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    t1 = (t0 + 2932);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1452U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 5000;
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3064);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1452U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t10 - 1);
    t2 = (t0 + 1452U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t11;
    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB9;

LAB10:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1452U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 5000;
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3064);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t12 = *((char **)t7);
    *((unsigned char *)t12) = t4;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

}

static void work_a_0032968822_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    int t11;
    char *t12;

LAB0:    xsi_set_current_line(79, ng0);
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
LAB3:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1520U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 == 0);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    t1 = (t0 + 2940);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1520U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 500;
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3100);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1520U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t10 - 1);
    t2 = (t0 + 1520U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t11;
    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB9;

LAB10:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1520U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 500;
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3100);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t12 = *((char **)t7);
    *((unsigned char *)t12) = t4;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

}

static void work_a_0032968822_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    int t11;
    char *t12;

LAB0:    xsi_set_current_line(96, ng0);
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
LAB3:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1588U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 == 0);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    t1 = (t0 + 2948);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1588U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 50;
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1588U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t10 - 1);
    t2 = (t0 + 1588U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t11;
    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB9;

LAB10:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1588U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 50;
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3136);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t12 = *((char **)t7);
    *((unsigned char *)t12) = t4;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

}


extern void work_a_0032968822_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0032968822_3212880686_p_0,(void *)work_a_0032968822_3212880686_p_1,(void *)work_a_0032968822_3212880686_p_2,(void *)work_a_0032968822_3212880686_p_3,(void *)work_a_0032968822_3212880686_p_4};
	xsi_register_didat("work_a_0032968822_3212880686", "isim/Frequency_Metre_isim_beh.exe.sim/work/a_0032968822_3212880686.didat");
	xsi_register_executes(pe);
}
