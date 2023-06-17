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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/student1/pkundi/coe758/Project2/Pong/hv_sync.vhd";



static void work_a_1797773397_2193661277_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    int t12;
    int t13;
    unsigned char t14;
    int t15;
    int t16;
    int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(26, ng0);
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
LAB3:    t1 = (t0 + 3552);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 3648);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t12 = *((int *)t6);
    t13 = (639 + 16);
    t14 = (t12 <= t13);
    if (t14 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t15 = *((int *)t7);
    t16 = (639 + 16);
    t17 = (t16 + 96);
    t18 = (t15 > t17);
    t11 = t18;

LAB15:    if (t11 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 3648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

LAB10:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3648);
    t8 = (t2 + 56U);
    t19 = *((char **)t8);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB11;

LAB13:    t11 = (unsigned char)1;
    goto LAB15;

}

static void work_a_1797773397_2193661277_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    int t12;
    int t13;
    unsigned char t14;
    int t15;
    int t16;
    int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(40, ng0);
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
LAB3:    t1 = (t0 + 3568);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 3712);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t12 = *((int *)t6);
    t13 = (479 + 10);
    t14 = (t12 <= t13);
    if (t14 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t15 = *((int *)t7);
    t16 = (479 + 10);
    t17 = (t16 + 2);
    t18 = (t15 > t17);
    t11 = t18;

LAB15:    if (t11 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3712);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

LAB10:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3712);
    t8 = (t2 + 56U);
    t19 = *((char **)t8);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB11;

LAB13:    t11 = (unsigned char)1;
    goto LAB15;

}


extern void work_a_1797773397_2193661277_init()
{
	static char *pe[] = {(void *)work_a_1797773397_2193661277_p_0,(void *)work_a_1797773397_2193661277_p_1};
	xsi_register_didat("work_a_1797773397_2193661277", "isim/Pong_isim_beh.exe.sim/work/a_1797773397_2193661277.didat");
	xsi_register_executes(pe);
}
