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
static const char *ng0 = "H:/smt_2/cryptography_engineering/final assignment/crypto_eng/twine - 8 May 2015/ed_round.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);


static void work_a_0795619139_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5496);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 64U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5400);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0795619139_3212880686_p_1(char *t0)
{
    char t16[16];
    char t19[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t17;
    unsigned int t18;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5416);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(90, ng0);
    t4 = (t0 + 1032U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t1 = (unsigned char)0;

LAB19:    if (t1 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3848U);
    t4 = *((char **)t2);
    t2 = (t0 + 9712U);
    t5 = (t0 + 10130);
    t11 = (t16 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 5;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t17 = (5 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t18;
    t3 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t4, t2, t5, t16);
    if (t3 == 1)
        goto LAB23;

LAB24:    t1 = (unsigned char)0;

LAB25:    if (t1 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 3728U);
    t4 = *((char **)t2);
    t2 = (t0 + 9696U);
    t5 = (t0 + 10136);
    t11 = (t16 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 5;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t17 = (5 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t18;
    t3 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t4, t2, t5, t16);
    if (t3 == 1)
        goto LAB29;

LAB30:    t1 = (unsigned char)0;

LAB31:    if (t1 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 3728U);
    t4 = *((char **)t2);
    t2 = (t0 + 9696U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t16, t4, t2, 1);
    t8 = (t0 + 3728U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    t12 = (t16 + 12U);
    t18 = *((unsigned int *)t12);
    t23 = (1U * t18);
    memcpy(t8, t5, t23);

LAB27:
LAB9:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 3848U);
    t4 = *((char **)t2);
    t2 = (t0 + 5624);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 6U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(91, ng0);
    t4 = (t0 + 1672U);
    t11 = *((char **)t4);
    t4 = (t0 + 5560);
    t12 = (t4 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 64U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 10118);
    t5 = (t0 + 3848U);
    t8 = *((char **)t5);
    t5 = (t8 + 0);
    memcpy(t5, t2, 6U);

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 10112);
    t8 = (t0 + 3848U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    memcpy(t8, t2, 6U);
    goto LAB12;

LAB14:    xsi_set_current_line(99, ng0);
    t13 = (t0 + 3848U);
    t14 = *((char **)t13);
    t13 = (t0 + 9712U);
    t15 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t19, t14, t13, 1);
    t20 = (t0 + 3848U);
    t21 = *((char **)t20);
    t20 = (t21 + 0);
    t22 = (t19 + 12U);
    t18 = *((unsigned int *)t22);
    t23 = (1U * t18);
    memcpy(t20, t15, t23);
    goto LAB15;

LAB17:    t2 = (t0 + 3848U);
    t5 = *((char **)t2);
    t2 = (t0 + 9712U);
    t8 = (t0 + 10124);
    t12 = (t16 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 5;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t17 = (5 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t18;
    t7 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t5, t2, t8, t16);
    t1 = t7;
    goto LAB19;

LAB20:    xsi_set_current_line(102, ng0);
    t12 = (t0 + 3848U);
    t14 = *((char **)t12);
    t12 = (t0 + 9712U);
    t15 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t19, t14, t12, 1);
    t20 = (t0 + 3848U);
    t21 = *((char **)t20);
    t20 = (t21 + 0);
    t22 = (t19 + 12U);
    t18 = *((unsigned int *)t22);
    t23 = (1U * t18);
    memcpy(t20, t15, t23);
    goto LAB21;

LAB23:    t12 = (t0 + 1352U);
    t13 = *((char **)t12);
    t6 = *((unsigned char *)t13);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB25;

LAB26:    xsi_set_current_line(105, ng0);
    t21 = (t0 + 2632U);
    t22 = *((char **)t21);
    t21 = (t0 + 5560);
    t25 = (t21 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t22, 64U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 3728U);
    t4 = *((char **)t2);
    t2 = (t0 + 9696U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t16, t4, t2, 1);
    t8 = (t0 + 3728U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    t12 = (t16 + 12U);
    t18 = *((unsigned int *)t12);
    t23 = (1U * t18);
    memcpy(t8, t5, t23);
    goto LAB27;

LAB29:    t12 = (t0 + 3728U);
    t13 = *((char **)t12);
    t12 = (t0 + 9696U);
    t14 = (t0 + 10142);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 5;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t24 = (5 - 0);
    t18 = (t24 * 1);
    t18 = (t18 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t18;
    t6 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t13, t12, t14, t19);
    t1 = t6;
    goto LAB31;

}


extern void work_a_0795619139_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0795619139_3212880686_p_0,(void *)work_a_0795619139_3212880686_p_1};
	xsi_register_didat("work_a_0795619139_3212880686", "isim/tb_twine_isim_beh.exe.sim/work/a_0795619139_3212880686.didat");
	xsi_register_executes(pe);
}
