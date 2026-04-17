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
static const char *ng0 = "C:/.Xilinx/IDP/modulo10_counter.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0146954563_3212880686_p_0(char *t0)
{
    char t15[16];
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
    char *t16;
    int t17;
    unsigned int t18;
    unsigned char t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;

LAB0:    xsi_set_current_line(46, ng0);
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
LAB3:    t1 = (t0 + 2196);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3671);
    t6 = (t0 + 2256);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1052U);
    t7 = *((char **)t2);
    t2 = (t0 + 3640U);
    t8 = (t0 + 3675);
    t10 = (t15 + 0U);
    t16 = (t10 + 0U);
    *((int *)t16) = 0;
    t16 = (t10 + 4U);
    *((int *)t16) = 3;
    t16 = (t10 + 8U);
    *((int *)t16) = 1;
    t17 = (3 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t10 + 12U);
    *((unsigned int *)t16) = t18;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t7, t2, t8, t15);
    if (t19 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 3640U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t15, t2, t1, 1);
    t6 = (t15 + 12U);
    t18 = *((unsigned int *)t6);
    t26 = (1U * t18);
    t3 = (4U != t26);
    if (t3 == 1)
        goto LAB16;

LAB17:    t7 = (t0 + 2256);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t16 = *((char **)t10);
    memcpy(t16, t5, 4U);
    xsi_driver_first_trans_fast(t7);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(51, ng0);
    t16 = (t0 + 3679);
    t21 = (t0 + 2256);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    memcpy(t25, t16, 4U);
    xsi_driver_first_trans_fast(t21);
    goto LAB14;

LAB16:    xsi_size_not_matching(4U, t26, 0);
    goto LAB17;

}

static void work_a_0146954563_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2292);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2204);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0146954563_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned char t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1052U);
    t9 = *((char **)t8);
    t10 = (2 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t14);
    t16 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t15);
    t17 = (t0 + 1052U);
    t18 = *((char **)t17);
    t19 = (1 - 3);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t17 = (t18 + t22);
    t23 = *((unsigned char *)t17);
    t24 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t23);
    t25 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t16, t24);
    t26 = (t0 + 1052U);
    t27 = *((char **)t26);
    t28 = (0 - 3);
    t29 = (t28 * -1);
    t30 = (1U * t29);
    t31 = (0 + t30);
    t26 = (t27 + t31);
    t32 = *((unsigned char *)t26);
    t33 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t25, t32);
    t34 = (t0 + 2328);
    t35 = (t34 + 32U);
    t36 = *((char **)t35);
    t37 = (t36 + 40U);
    t38 = *((char **)t37);
    *((unsigned char *)t38) = t33;
    xsi_driver_first_trans_fast_port(t34);

LAB2:    t39 = (t0 + 2212);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0146954563_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0146954563_3212880686_p_0,(void *)work_a_0146954563_3212880686_p_1,(void *)work_a_0146954563_3212880686_p_2};
	xsi_register_didat("work_a_0146954563_3212880686", "isim/sweep_upgrade_tb_isim_beh.exe.sim/work/a_0146954563_3212880686.didat");
	xsi_register_executes(pe);
}
