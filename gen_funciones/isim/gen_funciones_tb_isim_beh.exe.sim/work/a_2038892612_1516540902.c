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
static const char *ng0 = "C:/Users/christopher/Dropbox/workspace/modelado14/gen_funciones/cnt_dpram.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_2038892612_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6184);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6056);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2038892612_1516540902_p_1(char *t0)
{
    char t24[16];
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
    unsigned char t15;
    unsigned int t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(48, ng0);
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
LAB3:    t1 = (t0 + 6072);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 6248);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3112U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB22;

LAB23:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3592U);
    t7 = *((char **)t2);
    t2 = (t0 + 10663);
    t15 = 1;
    if (8U == 8U)
        goto LAB16;

LAB17:    t15 = 0;

LAB18:    if (t15 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 10568U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t24, t2, t1, 1);
    t6 = (t0 + 6248);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 8U);
    xsi_driver_first_trans_fast(t6);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(53, ng0);
    t17 = (t0 + 10671);
    t19 = (t0 + 6248);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 8U);
    xsi_driver_first_trans_fast(t19);
    goto LAB14;

LAB16:    t16 = 0;

LAB19:    if (t16 < 8U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t9 = (t7 + t16);
    t10 = (t2 + t16);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB17;

LAB21:    t16 = (t16 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 6248);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB11;

}

static void work_a_2038892612_1516540902_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 6312);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6088);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2038892612_1516540902_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned char t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    static char *nl0[] = {&&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB15};

LAB0:    xsi_set_current_line(68, ng0);
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
LAB3:    t1 = (t0 + 6104);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 6376);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 6440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 6504);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 6568);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(73, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 6632);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(74, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 6696);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 6760);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2632U);
    t6 = *((char **)t2);
    t12 = *((unsigned char *)t6);
    t2 = (char *)((nl0) + t12);
    goto **((char **)t2);

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    t3 = t11;
    goto LAB9;

LAB10:    goto LAB3;

LAB11:    xsi_set_current_line(81, ng0);
    t7 = (t0 + 6504);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 6568);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 6760);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6696);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t10 = (t4 == (unsigned char)3);
    if (t10 == 1)
        goto LAB19;

LAB20:    t3 = (unsigned char)0;

LAB21:    if (t3 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB10;

LAB12:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t10 = (t4 == (unsigned char)3);
    if (t10 == 1)
        goto LAB40;

LAB41:    t3 = (unsigned char)0;

LAB42:    if (t3 != 0)
        goto LAB37;

LAB39:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t10 = (t4 == (unsigned char)3);
    if (t10 == 1)
        goto LAB51;

LAB52:    t3 = (unsigned char)0;

LAB53:    if (t3 != 0)
        goto LAB49;

LAB50:
LAB38:    goto LAB10;

LAB13:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 6440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 6376);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB14:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 6760);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 6376);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB15:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3888U);
    t5 = *((char **)t1);
    t3 = 1;
    if (8U == 8U)
        goto LAB63;

LAB64:    t3 = 0;

LAB65:    if (t3 != 0)
        goto LAB60;

LAB62:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4008U);
    t5 = *((char **)t1);
    t3 = 1;
    if (8U == 8U)
        goto LAB71;

LAB72:    t3 = 0;

LAB73:    if (t3 != 0)
        goto LAB69;

LAB70:
LAB61:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6632);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 6440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 6760);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 6376);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB16:    xsi_set_current_line(86, ng0);
    t18 = (t0 + 6376);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)1;
    xsi_driver_first_trans_fast(t18);
    goto LAB17;

LAB19:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 3888U);
    t6 = *((char **)t1);
    t12 = 1;
    if (8U == 8U)
        goto LAB25;

LAB26:    t12 = 0;

LAB27:    if (t12 == 1)
        goto LAB22;

LAB23:    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t8 = (t0 + 4008U);
    t13 = *((char **)t8);
    t16 = 1;
    if (8U == 8U)
        goto LAB31;

LAB32:    t16 = 0;

LAB33:    t11 = t16;

LAB24:    t3 = t11;
    goto LAB21;

LAB22:    t11 = (unsigned char)1;
    goto LAB24;

LAB25:    t15 = 0;

LAB28:    if (t15 < 8U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t1 = (t5 + t15);
    t7 = (t6 + t15);
    if (*((unsigned char *)t1) != *((unsigned char *)t7))
        goto LAB26;

LAB30:    t15 = (t15 + 1);
    goto LAB28;

LAB31:    t17 = 0;

LAB34:    if (t17 < 8U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t8 = (t9 + t17);
    t14 = (t13 + t17);
    if (*((unsigned char *)t8) != *((unsigned char *)t14))
        goto LAB32;

LAB36:    t17 = (t17 + 1);
    goto LAB34;

LAB37:    xsi_set_current_line(92, ng0);
    t8 = (t0 + 6376);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast(t8);
    goto LAB38;

LAB40:    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t1 = (t0 + 2952U);
    t6 = *((char **)t1);
    t11 = 1;
    if (8U == 8U)
        goto LAB43;

LAB44:    t11 = 0;

LAB45:    t3 = t11;
    goto LAB42;

LAB43:    t15 = 0;

LAB46:    if (t15 < 8U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t1 = (t5 + t15);
    t7 = (t6 + t15);
    if (*((unsigned char *)t1) != *((unsigned char *)t7))
        goto LAB44;

LAB48:    t15 = (t15 + 1);
    goto LAB46;

LAB49:    xsi_set_current_line(94, ng0);
    t8 = (t0 + 6376);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB38;

LAB51:    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t1 = (t0 + 2952U);
    t6 = *((char **)t1);
    t11 = 1;
    if (8U == 8U)
        goto LAB54;

LAB55:    t11 = 0;

LAB56:    t3 = (!(t11));
    goto LAB53;

LAB54:    t15 = 0;

LAB57:    if (t15 < 8U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t1 = (t5 + t15);
    t7 = (t6 + t15);
    if (*((unsigned char *)t1) != *((unsigned char *)t7))
        goto LAB55;

LAB59:    t15 = (t15 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(110, ng0);
    t7 = (t0 + 6504);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB61;

LAB63:    t15 = 0;

LAB66:    if (t15 < 8U)
        goto LAB67;
    else
        goto LAB65;

LAB67:    t1 = (t2 + t15);
    t6 = (t5 + t15);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB64;

LAB68:    t15 = (t15 + 1);
    goto LAB66;

LAB69:    xsi_set_current_line(112, ng0);
    t7 = (t0 + 6568);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB61;

LAB71:    t15 = 0;

LAB74:    if (t15 < 8U)
        goto LAB75;
    else
        goto LAB73;

LAB75:    t1 = (t2 + t15);
    t6 = (t5 + t15);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB72;

LAB76:    t15 = (t15 + 1);
    goto LAB74;

}


extern void work_a_2038892612_1516540902_init()
{
	static char *pe[] = {(void *)work_a_2038892612_1516540902_p_0,(void *)work_a_2038892612_1516540902_p_1,(void *)work_a_2038892612_1516540902_p_2,(void *)work_a_2038892612_1516540902_p_3};
	xsi_register_didat("work_a_2038892612_1516540902", "isim/gen_funciones_tb_isim_beh.exe.sim/work/a_2038892612_1516540902.didat");
	xsi_register_executes(pe);
}
