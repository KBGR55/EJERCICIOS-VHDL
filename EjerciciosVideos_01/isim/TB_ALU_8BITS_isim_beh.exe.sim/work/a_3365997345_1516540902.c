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
static const char *ng0 = "C:/Users/K.G/Documents/ProgramasIse/EjerciciosVideos/ALU_8BITS.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3365997345_1516540902_p_0(char *t0)
{
    char t11[16];
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
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4930);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 4932);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 4934);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4840U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4856U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t11, t2, t1, t5, t3);
    t8 = (t11 + 12U);
    t22 = *((unsigned int *)t8);
    t23 = (1U * t22);
    t24 = (8U != t23);
    if (t24 == 1)
        goto LAB13;

LAB14:    t9 = (t0 + 3072);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(23, ng0);
    t12 = (t0 + 1032U);
    t13 = *((char **)t12);
    t12 = (t0 + 4840U);
    t14 = (t0 + 1192U);
    t15 = *((char **)t14);
    t14 = (t0 + 4856U);
    t16 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t11, t13, t12, t15, t14);
    t17 = (t0 + 3072);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t16, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB4:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4840U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4856U);
    t6 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t11, t2, t1, t5, t3);
    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4840U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4856U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t11, t2, t1, t5, t3);
    t8 = (t11 + 12U);
    t22 = *((unsigned int *)t8);
    t23 = (1U * t22);
    t24 = (8U != t23);
    if (t24 == 1)
        goto LAB11;

LAB12:    t9 = (t0 + 3072);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB10:;
LAB11:    xsi_size_not_matching(8U, t23, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(8U, t23, 0);
    goto LAB14;

}


extern void work_a_3365997345_1516540902_init()
{
	static char *pe[] = {(void *)work_a_3365997345_1516540902_p_0};
	xsi_register_didat("work_a_3365997345_1516540902", "isim/TB_ALU_8BITS_isim_beh.exe.sim/work/a_3365997345_1516540902.didat");
	xsi_register_executes(pe);
}
