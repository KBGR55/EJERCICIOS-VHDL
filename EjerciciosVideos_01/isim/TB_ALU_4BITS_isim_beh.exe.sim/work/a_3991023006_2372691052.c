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
static const char *ng0 = "C:/Users/K.G/Documents/ProgramasIse/EjerciciosVideos/TB_ALU_4BITS.vhd";
extern char *IEEE_P_0774719531;

char *ieee_p_0774719531_sub_674691591_2162500114(char *, char *, char *, char *, unsigned char );


static void work_a_3991023006_2372691052_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (80 * 1000LL);
    t2 = (t0 + 6132);
    t4 = (t0 + 3728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, t1);
    t9 = (t0 + 3728);
    xsi_driver_intertial_reject(t9, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3991023006_2372691052_p_1(char *t0)
{
    int64 t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (80 * 1000LL);
    t2 = (t0 + 6136);
    t4 = (t0 + 3792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, t1);
    t9 = (t0 + 3792);
    xsi_driver_intertial_reject(t9, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3991023006_2372691052_p_2(char *t0)
{
    char t2[16];
    int64 t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (10 * 1000LL);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 6076U);
    t5 = ieee_p_0774719531_sub_674691591_2162500114(IEEE_P_0774719531, t2, t4, t3, (unsigned char)3);
    t6 = (t2 + 12U);
    t7 = *((unsigned int *)t6);
    t8 = (1U * t7);
    t9 = (3U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3856);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 3U);
    xsi_driver_first_trans_delta(t10, 0U, 3U, t1);
    t15 = (t0 + 3856);
    xsi_driver_intertial_reject(t15, t1, t1);

LAB2:    t16 = (t0 + 3648);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(3U, t8, 0);
    goto LAB6;

}


extern void work_a_3991023006_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3991023006_2372691052_p_0,(void *)work_a_3991023006_2372691052_p_1,(void *)work_a_3991023006_2372691052_p_2};
	xsi_register_didat("work_a_3991023006_2372691052", "isim/TB_ALU_4BITS_isim_beh.exe.sim/work/a_3991023006_2372691052.didat");
	xsi_register_executes(pe);
}
