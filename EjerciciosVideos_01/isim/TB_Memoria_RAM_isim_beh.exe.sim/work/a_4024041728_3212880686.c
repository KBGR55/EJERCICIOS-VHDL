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
static const char *ng0 = "C:/Users/K.G/Documents/ProgramasIse/EjerciciosVideos/Memoria_RAM.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_4024041728_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 992U);
    t6 = xsi_signal_has_event(t1);
    if (t6 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(25, ng0);
    t7 = (t0 + 1832U);
    t11 = *((char **)t7);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)2);
    if (t13 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t1 = (t0 + 6264U);
    t16 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t1);
    t17 = (t16 - 0);
    t18 = (t17 * 1);
    xsi_vhdl_check_range_of_index(0, 3, 1, t16);
    t19 = (2U * t18);
    t20 = (0 + t19);
    t8 = (t2 + t20);
    t11 = (t0 + 3776);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    t21 = (t15 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 2U);
    xsi_driver_first_trans_fast_port(t11);

LAB12:    goto LAB6;

LAB8:    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t5 = t10;
    goto LAB10;

LAB11:    xsi_set_current_line(26, ng0);
    t7 = (t0 + 1192U);
    t14 = *((char **)t7);
    t7 = (t0 + 1352U);
    t15 = *((char **)t7);
    t7 = (t0 + 6264U);
    t16 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t15, t7);
    t17 = (t16 - 0);
    t18 = (t17 * 1);
    t19 = (2U * t18);
    t20 = (0U + t19);
    t21 = (t0 + 3712);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 2U);
    xsi_driver_first_trans_delta(t21, t20, 2U, 0LL);
    goto LAB12;

}


extern void work_a_4024041728_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4024041728_3212880686_p_0};
	xsi_register_didat("work_a_4024041728_3212880686", "isim/TB_Memoria_RAM_isim_beh.exe.sim/work/a_4024041728_3212880686.didat");
	xsi_register_executes(pe);
}
