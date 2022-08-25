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
static const char *ng0 = "C:/Users/K.G/Documents/ProgramasIse/EjerciciosVideos/ALU_4BITS.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_674763465_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1377546970_3212880686_p_0(char *t0)
{
    char t30[16];
    char t40[16];
    char t41[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    t1 = (t0 + 2992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = (2 - 2);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 6232);
    t9 = xsi_mem_cmp(t7, t2, 3U);
    if (t9 == 1)
        goto LAB5;

LAB13:    t10 = (t0 + 6235);
    t12 = xsi_mem_cmp(t10, t2, 3U);
    if (t12 == 1)
        goto LAB6;

LAB14:    t13 = (t0 + 6238);
    t15 = xsi_mem_cmp(t13, t2, 3U);
    if (t15 == 1)
        goto LAB7;

LAB15:    t16 = (t0 + 6241);
    t18 = xsi_mem_cmp(t16, t2, 3U);
    if (t18 == 1)
        goto LAB8;

LAB16:    t19 = (t0 + 6244);
    t21 = xsi_mem_cmp(t19, t2, 3U);
    if (t21 == 1)
        goto LAB9;

LAB17:    t22 = (t0 + 6247);
    t24 = xsi_mem_cmp(t22, t2, 3U);
    if (t24 == 1)
        goto LAB10;

LAB18:    t25 = (t0 + 6250);
    t27 = xsi_mem_cmp(t25, t2, 3U);
    if (t27 == 1)
        goto LAB11;

LAB19:
LAB12:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6128U);
    t2 = xsi_base_array_concat(t2, t40, t7, (char)99, (unsigned char)2, (char)97, t3, t8, (char)101);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t10 = (t0 + 6144U);
    t13 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t30, t2, t40, t11, t10);
    t14 = (t30 + 12U);
    t4 = *((unsigned int *)t14);
    t5 = (1U * t4);
    t34 = (5U != t5);
    if (t34 == 1)
        goto LAB35;

LAB36:    t16 = (t0 + 3920);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t13, 5U);
    xsi_driver_first_trans_fast(t16);

LAB4:    xsi_set_current_line(22, ng0);

LAB39:    t2 = (t0 + 3808);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB40;

LAB1:    return;
LAB5:    xsi_set_current_line(23, ng0);
    t28 = (t0 + 1032U);
    t29 = *((char **)t28);
    t31 = ((IEEE_P_2592010699) + 4024);
    t32 = (t0 + 6128U);
    t28 = xsi_base_array_concat(t28, t30, t31, (char)99, (unsigned char)2, (char)97, t29, t32, (char)101);
    t33 = (1U + 4U);
    t34 = (5U != t33);
    if (t34 == 1)
        goto LAB21;

LAB22:    t35 = (t0 + 3920);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t28, 5U);
    xsi_driver_first_trans_fast(t35);
    goto LAB4;

LAB6:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6144U);
    t2 = xsi_base_array_concat(t2, t30, t7, (char)99, (unsigned char)2, (char)97, t3, t8, (char)101);
    t4 = (1U + 4U);
    t34 = (5U != t4);
    if (t34 == 1)
        goto LAB23;

LAB24:    t10 = (t0 + 3920);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    memcpy(t16, t2, 5U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB7:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6128U);
    t2 = xsi_base_array_concat(t2, t40, t7, (char)99, (unsigned char)2, (char)97, t3, t8, (char)101);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = (t0 + 6144U);
    t10 = xsi_base_array_concat(t10, t41, t13, (char)99, (unsigned char)2, (char)97, t11, t14, (char)101);
    t16 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t30, t2, t40, t10, t41);
    t17 = (t30 + 12U);
    t4 = *((unsigned int *)t17);
    t5 = (1U * t4);
    t34 = (5U != t5);
    if (t34 == 1)
        goto LAB25;

LAB26:    t19 = (t0 + 3920);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    t23 = (t22 + 56U);
    t25 = *((char **)t23);
    memcpy(t25, t16, 5U);
    xsi_driver_first_trans_fast(t19);
    goto LAB4;

LAB8:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6128U);
    t2 = xsi_base_array_concat(t2, t40, t7, (char)99, (unsigned char)2, (char)97, t3, t8, (char)101);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = (t0 + 6144U);
    t10 = xsi_base_array_concat(t10, t41, t13, (char)99, (unsigned char)2, (char)97, t11, t14, (char)101);
    t16 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t30, t2, t40, t10, t41);
    t17 = (t30 + 12U);
    t4 = *((unsigned int *)t17);
    t5 = (1U * t4);
    t34 = (5U != t5);
    if (t34 == 1)
        goto LAB27;

LAB28:    t19 = (t0 + 3920);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    t23 = (t22 + 56U);
    t25 = *((char **)t23);
    memcpy(t25, t16, 5U);
    xsi_driver_first_trans_fast(t19);
    goto LAB4;

LAB9:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6128U);
    t2 = xsi_base_array_concat(t2, t40, t7, (char)99, (unsigned char)2, (char)97, t3, t8, (char)101);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t10 = (t0 + 6144U);
    t13 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t30, t2, t40, t11, t10);
    t14 = (t30 + 12U);
    t4 = *((unsigned int *)t14);
    t5 = (1U * t4);
    t34 = (5U != t5);
    if (t34 == 1)
        goto LAB29;

LAB30:    t16 = (t0 + 3920);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t13, 5U);
    xsi_driver_first_trans_fast(t16);
    goto LAB4;

LAB10:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6128U);
    t2 = xsi_base_array_concat(t2, t40, t7, (char)99, (unsigned char)2, (char)97, t3, t8, (char)101);
    t10 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t30, t2, t40, (unsigned char)3);
    t11 = (t30 + 12U);
    t4 = *((unsigned int *)t11);
    t5 = (1U * t4);
    t34 = (5U != t5);
    if (t34 == 1)
        goto LAB31;

LAB32:    t13 = (t0 + 3920);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    memcpy(t19, t10, 5U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB11:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6128U);
    t2 = xsi_base_array_concat(t2, t40, t7, (char)99, (unsigned char)2, (char)97, t3, t8, (char)101);
    t10 = ieee_p_3620187407_sub_674763465_3965413181(IEEE_P_3620187407, t30, t2, t40, (unsigned char)3);
    t11 = (t30 + 12U);
    t4 = *((unsigned int *)t11);
    t5 = (1U * t4);
    t34 = (5U != t5);
    if (t34 == 1)
        goto LAB33;

LAB34:    t13 = (t0 + 3920);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    memcpy(t19, t10, 5U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB20:;
LAB21:    xsi_size_not_matching(5U, t33, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(5U, t4, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(5U, t5, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(5U, t5, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(5U, t5, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(5U, t5, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(5U, t5, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(5U, t5, 0);
    goto LAB36;

LAB37:    t3 = (t0 + 3808);
    *((int *)t3) = 0;
    goto LAB2;

LAB38:    goto LAB37;

LAB40:    goto LAB38;

}

static void work_a_1377546970_3212880686_p_1(char *t0)
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
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(33, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3984);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3824);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1377546970_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(34, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (4 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 3840);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1377546970_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1377546970_3212880686_p_0,(void *)work_a_1377546970_3212880686_p_1,(void *)work_a_1377546970_3212880686_p_2};
	xsi_register_didat("work_a_1377546970_3212880686", "isim/TB_ALU_4BITS_isim_beh.exe.sim/work/a_1377546970_3212880686.didat");
	xsi_register_executes(pe);
}
