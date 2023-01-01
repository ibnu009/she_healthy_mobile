import 'dart:ui' as ui;

import 'package:flutter/material.dart';


//Copy this CustomPainter code to the Bottom of the File
class EmptyBackground extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.5256240,size.height*0.9974000);
    path_0.cubicTo(size.width*0.7873926,size.height*0.9974000,size.width*0.9995950,size.height*0.7741261,size.width*0.9995950,size.height*0.4987000);
    path_0.cubicTo(size.width*0.9995950,size.height*0.2232757,size.width*0.7873926,0,size.width*0.5256240,0);
    path_0.cubicTo(size.width*0.2638570,0,size.width*0.05165289,size.height*0.2232757,size.width*0.05165289,size.height*0.4987000);
    path_0.cubicTo(size.width*0.05165289,size.height*0.7741261,size.width*0.2638570,size.height*0.9974000,size.width*0.5256240,size.height*0.9974000);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.5219711,size.height*-16.23891), Offset(size.width*0.5316818,size.height*1.588970), [Color(0xffF3F2F2).withOpacity(0.3),Color(0xffEEF0F2).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
    path_1.moveTo(size.width*0.7997727,size.height*0.1799930);
    path_1.lineTo(size.width*0.3729864,size.height*0.1799930);
    path_1.cubicTo(size.width*0.3463843,size.height*0.1799930,size.width*0.3248190,size.height*0.2026835,size.width*0.3248190,size.height*0.2306735);
    path_1.lineTo(size.width*0.8479380,size.height*0.2306735);
    path_1.cubicTo(size.width*0.8479380,size.height*0.2026835,size.width*0.8263719,size.height*0.1799930,size.width*0.7997727,size.height*0.1799930);
    path_1.close();

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.shader = ui.Gradient.linear(Offset(size.width*0.3242264,size.height*0.1916896), Offset(size.width*0.8481983,size.height*0.2305639), [Color(0xffE5E5EA).withOpacity(1),Color(0xffC4C4C4).withOpacity(1)], [0,1]);
canvas.drawPath(path_1,paint_1_fill);

Path path_2 = Path();
    path_2.moveTo(size.width*0.3248190,size.height*0.2292970);
    path_2.lineTo(size.width*0.8479380,size.height*0.2292970);
    path_2.lineTo(size.width*0.8479380,size.height*0.6485000);
    path_2.cubicTo(size.width*0.8479380,size.height*0.6671391,size.width*0.8409008,size.height*0.6850130,size.width*0.8283760,size.height*0.6981913);
    path_2.cubicTo(size.width*0.8158512,size.height*0.7113696,size.width*0.7988636,size.height*0.7187739,size.width*0.7811488,size.height*0.7187739);
    path_2.lineTo(size.width*0.3916091,size.height*0.7187739);
    path_2.cubicTo(size.width*0.3738955,size.height*0.7187739,size.width*0.3569070,size.height*0.7113696,size.width*0.3443814,size.height*0.6981913);
    path_2.cubicTo(size.width*0.3318558,size.height*0.6850130,size.width*0.3248190,size.height*0.6671391,size.width*0.3248190,size.height*0.6485000);
    path_2.lineTo(size.width*0.3248190,size.height*0.2292970);
    path_2.close();

Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
paint_2_fill.shader = ui.Gradient.linear(Offset(size.width*0.3091120,size.height*0.5963478), Offset(size.width*1.064843,size.height*0.6104826), [Colors.white.withOpacity(1),Color(0xffC7C7C7).withOpacity(1)], [0,1]);
canvas.drawPath(path_2,paint_2_fill);

Path path_3 = Path();
    path_3.moveTo(size.width*0.7580165,size.height*0.2822352);
    path_3.lineTo(size.width*0.4149091,size.height*0.2822352);
    path_3.cubicTo(size.width*0.4077640,size.height*0.2822352,size.width*0.4019715,size.height*0.2883230,size.width*0.4019715,size.height*0.2958335);
    path_3.cubicTo(size.width*0.4019715,size.height*0.3033435,size.width*0.4077640,size.height*0.3094317,size.width*0.4149091,size.height*0.3094317);
    path_3.lineTo(size.width*0.7580165,size.height*0.3094317);
    path_3.cubicTo(size.width*0.7651612,size.height*0.3094317,size.width*0.7709545,size.height*0.3033435,size.width*0.7709545,size.height*0.2958335);
    path_3.cubicTo(size.width*0.7709545,size.height*0.2883230,size.width*0.7651612,size.height*0.2822352,size.width*0.7580165,size.height*0.2822352);
    path_3.close();

Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
paint_3_fill.shader = ui.Gradient.linear(Offset(size.width*0.3863657,size.height*0.3083100), Offset(size.width*0.7927810,size.height*0.3083100), [Color(0xffC4C4C4).withOpacity(1),Color(0xffEEF0F2).withOpacity(1)], [0,1]);
canvas.drawPath(path_3,paint_3_fill);

Path path_4 = Path();
    path_4.moveTo(size.width*0.7580165,size.height*0.3977922);
    path_4.lineTo(size.width*0.4149091,size.height*0.3977922);
    path_4.cubicTo(size.width*0.4077640,size.height*0.3977922,size.width*0.4019715,size.height*0.4038804,size.width*0.4019715,size.height*0.4113904);
    path_4.cubicTo(size.width*0.4019715,size.height*0.4189004,size.width*0.4077640,size.height*0.4249887,size.width*0.4149091,size.height*0.4249887);
    path_4.lineTo(size.width*0.7580165,size.height*0.4249887);
    path_4.cubicTo(size.width*0.7651612,size.height*0.4249887,size.width*0.7709545,size.height*0.4189004,size.width*0.7709545,size.height*0.4113904);
    path_4.cubicTo(size.width*0.7709545,size.height*0.4038804,size.width*0.7651612,size.height*0.3977922,size.width*0.7580165,size.height*0.3977922);
    path_4.close();

Paint paint_4_fill = Paint()..style=PaintingStyle.fill;
paint_4_fill.shader = ui.Gradient.linear(Offset(size.width*0.3863657,size.height*0.4238670), Offset(size.width*0.7927810,size.height*0.4238670), [Color(0xffC4C4C4).withOpacity(1),Color(0xffEEF0F2).withOpacity(1)], [0,1]);
canvas.drawPath(path_4,paint_4_fill);

Path path_5 = Path();
    path_5.moveTo(size.width*0.7580165,size.height*0.5133304);
    path_5.lineTo(size.width*0.4149091,size.height*0.5133304);
    path_5.cubicTo(size.width*0.4077640,size.height*0.5133304,size.width*0.4019715,size.height*0.5194217,size.width*0.4019715,size.height*0.5269304);
    path_5.cubicTo(size.width*0.4019715,size.height*0.5344391,size.width*0.4077640,size.height*0.5405304,size.width*0.4149091,size.height*0.5405304);
    path_5.lineTo(size.width*0.7580165,size.height*0.5405304);
    path_5.cubicTo(size.width*0.7651612,size.height*0.5405304,size.width*0.7709545,size.height*0.5344391,size.width*0.7709545,size.height*0.5269304);
    path_5.cubicTo(size.width*0.7709545,size.height*0.5194217,size.width*0.7651612,size.height*0.5133304,size.width*0.7580165,size.height*0.5133304);
    path_5.close();

Paint paint_5_fill = Paint()..style=PaintingStyle.fill;
paint_5_fill.shader = ui.Gradient.linear(Offset(size.width*0.3863657,size.height*0.5394087), Offset(size.width*0.7927810,size.height*0.5394087), [Color(0xffC4C4C4).withOpacity(1),Color(0xffEEF0F2).withOpacity(1)], [0,1]);
canvas.drawPath(path_5,paint_5_fill);

Path path_6 = Path();
    path_6.moveTo(size.width*0.7580165,size.height*0.6288913);
    path_6.lineTo(size.width*0.4149091,size.height*0.6288913);
    path_6.cubicTo(size.width*0.4077645,size.height*0.6288913,size.width*0.4019719,size.height*0.6349783,size.width*0.4019719,size.height*0.6424870);
    path_6.cubicTo(size.width*0.4019719,size.height*0.6499957,size.width*0.4077645,size.height*0.6560870,size.width*0.4149091,size.height*0.6560870);
    path_6.lineTo(size.width*0.7580165,size.height*0.6560870);
    path_6.cubicTo(size.width*0.7651653,size.height*0.6560870,size.width*0.7709545,size.height*0.6499957,size.width*0.7709545,size.height*0.6424870);
    path_6.cubicTo(size.width*0.7709545,size.height*0.6349783,size.width*0.7651653,size.height*0.6288913,size.width*0.7580165,size.height*0.6288913);
    path_6.close();

Paint paint_6_fill = Paint()..style=PaintingStyle.fill;
paint_6_fill.shader = ui.Gradient.linear(Offset(size.width*0.3863661,size.height*0.6549652), Offset(size.width*0.7927810,size.height*0.6549652), [Color(0xffC4C4C4).withOpacity(1),Color(0xffEEF0F2).withOpacity(1)], [0,1]);
canvas.drawPath(path_6,paint_6_fill);

Path path_7 = Path();
    path_7.moveTo(size.width*0.4125860,size.height*0.4885522);
    path_7.lineTo(size.width*0.2298864,size.height*0.4885522);
    path_7.cubicTo(size.width*0.2152087,size.height*0.4885522,size.width*0.2033099,size.height*0.5010739,size.width*0.2033099,size.height*0.5165174);
    path_7.lineTo(size.width*0.2033099,size.height*0.7912783);
    path_7.cubicTo(size.width*0.2033099,size.height*0.8067217,size.width*0.2152087,size.height*0.8192435,size.width*0.2298864,size.height*0.8192435);
    path_7.lineTo(size.width*0.4125860,size.height*0.8192435);
    path_7.cubicTo(size.width*0.4272645,size.height*0.8192435,size.width*0.4391612,size.height*0.8067217,size.width*0.4391612,size.height*0.7912783);
    path_7.lineTo(size.width*0.4391612,size.height*0.5165174);
    path_7.cubicTo(size.width*0.4391612,size.height*0.5010739,size.width*0.4272645,size.height*0.4885522,size.width*0.4125860,size.height*0.4885522);
    path_7.close();

Paint paint_7_fill = Paint()..style=PaintingStyle.fill;
paint_7_fill.shader = ui.Gradient.linear(Offset(size.width*0.1962285,size.height*0.7365304), Offset(size.width*0.6482769,size.height*0.7755957), [Colors.white.withOpacity(1),Color(0xffE5E5EA).withOpacity(1)], [0,1]);
canvas.drawPath(path_7,paint_7_fill);

Path path_8 = Path();
    path_8.moveTo(size.width*0.3921988,size.height*0.6260000);
    path_8.lineTo(size.width*0.2502731,size.height*0.6260000);
    path_8.cubicTo(size.width*0.2454938,size.height*0.6260000,size.width*0.2416198,size.height*0.6300783,size.width*0.2416198,size.height*0.6351087);
    path_8.lineTo(size.width*0.2416198,size.height*0.6351348);
    path_8.cubicTo(size.width*0.2416198,size.height*0.6401652,size.width*0.2454938,size.height*0.6442391,size.width*0.2502731,size.height*0.6442391);
    path_8.lineTo(size.width*0.3921988,size.height*0.6442391);
    path_8.cubicTo(size.width*0.3969777,size.height*0.6442391,size.width*0.4008521,size.height*0.6401652,size.width*0.4008521,size.height*0.6351348);
    path_8.lineTo(size.width*0.4008521,size.height*0.6351087);
    path_8.cubicTo(size.width*0.4008521,size.height*0.6300783,size.width*0.3969777,size.height*0.6260000,size.width*0.3921988,size.height*0.6260000);
    path_8.close();

Paint paint_8_fill = Paint()..style=PaintingStyle.fill;
paint_8_fill.shader = ui.Gradient.linear(Offset(size.width*0.4193306,size.height*0.6447870), Offset(size.width*0.2278793,size.height*0.6447870), [Color(0xffEEF0F2).withOpacity(1),Color(0xff757575).withOpacity(1)], [0,1]);
canvas.drawPath(path_8,paint_8_fill);

Path path_9 = Path();
    path_9.moveTo(size.width*0.3922798,size.height*0.7543478);
    path_9.lineTo(size.width*0.2515740,size.height*0.7543478);
    path_9.cubicTo(size.width*0.2468360,size.height*0.7543478,size.width*0.2429946,size.height*0.7582957,size.width*0.2429946,size.height*0.7631696);
    path_9.lineTo(size.width*0.2429946,size.height*0.7631957);
    path_9.cubicTo(size.width*0.2429946,size.height*0.7680696,size.width*0.2468360,size.height*0.7720174,size.width*0.2515740,size.height*0.7720174);
    path_9.lineTo(size.width*0.3922798,size.height*0.7720174);
    path_9.cubicTo(size.width*0.3970178,size.height*0.7720174,size.width*0.4008587,size.height*0.7680696,size.width*0.4008587,size.height*0.7631957);
    path_9.lineTo(size.width*0.4008587,size.height*0.7631696);
    path_9.cubicTo(size.width*0.4008587,size.height*0.7582957,size.width*0.3970178,size.height*0.7543478,size.width*0.3922798,size.height*0.7543478);
    path_9.close();

Paint paint_9_fill = Paint()..style=PaintingStyle.fill;
paint_9_fill.shader = ui.Gradient.linear(Offset(size.width*0.4191777,size.height*0.7725435), Offset(size.width*0.2293727,size.height*0.7725435), [Color(0xffEEF0F2).withOpacity(1),Color(0xff757575).withOpacity(1)], [0,1]);
canvas.drawPath(path_9,paint_9_fill);

Path path_10 = Path();
    path_10.moveTo(size.width*0.3922798,size.height*0.6871957);
    path_10.lineTo(size.width*0.2515740,size.height*0.6871957);
    path_10.cubicTo(size.width*0.2468360,size.height*0.6871957,size.width*0.2429946,size.height*0.6911435,size.width*0.2429946,size.height*0.6960130);
    path_10.lineTo(size.width*0.2429946,size.height*0.6960435);
    path_10.cubicTo(size.width*0.2429946,size.height*0.7009174,size.width*0.2468360,size.height*0.7048652,size.width*0.2515740,size.height*0.7048652);
    path_10.lineTo(size.width*0.3922798,size.height*0.7048652);
    path_10.cubicTo(size.width*0.3970178,size.height*0.7048652,size.width*0.4008587,size.height*0.7009174,size.width*0.4008587,size.height*0.6960435);
    path_10.lineTo(size.width*0.4008587,size.height*0.6960130);
    path_10.cubicTo(size.width*0.4008587,size.height*0.6911435,size.width*0.3970178,size.height*0.6871957,size.width*0.3922798,size.height*0.6871957);
    path_10.close();

Paint paint_10_fill = Paint()..style=PaintingStyle.fill;
paint_10_fill.shader = ui.Gradient.linear(Offset(size.width*0.4191777,size.height*0.7053913), Offset(size.width*0.2293727,size.height*0.7053913), [Color(0xffEEF0F2).withOpacity(1),Color(0xff757575).withOpacity(1)], [0,1]);
canvas.drawPath(path_10,paint_10_fill);

Path path_11 = Path();
    path_11.moveTo(size.width*0.3021657,size.height*0.5309783);
    path_11.lineTo(size.width*0.2606913,size.height*0.5309783);
    path_11.cubicTo(size.width*0.2515045,size.height*0.5309783,size.width*0.2440570,size.height*0.5388130,size.width*0.2440570,size.height*0.5484826);
    path_11.lineTo(size.width*0.2440570,size.height*0.5605913);
    path_11.cubicTo(size.width*0.2440570,size.height*0.5702565,size.width*0.2515045,size.height*0.5780913,size.width*0.2606913,size.height*0.5780913);
    path_11.lineTo(size.width*0.3021657,size.height*0.5780913);
    path_11.cubicTo(size.width*0.3113529,size.height*0.5780913,size.width*0.3188004,size.height*0.5702565,size.width*0.3188004,size.height*0.5605913);
    path_11.lineTo(size.width*0.3188004,size.height*0.5484826);
    path_11.cubicTo(size.width*0.3188004,size.height*0.5388130,size.width*0.3113529,size.height*0.5309783,size.width*0.3021657,size.height*0.5309783);
    path_11.close();

Paint paint_11_fill = Paint()..style=PaintingStyle.fill;
paint_11_fill.shader = ui.Gradient.linear(Offset(size.width*0.3706289,size.height*0.5776391), Offset(size.width*0.2345975,size.height*0.5776391), [Color(0xffEEF0F2).withOpacity(1),Color(0xffC7C7C7).withOpacity(1)], [0.243799,1]);
canvas.drawPath(path_11,paint_11_fill);

Path path_12 = Path();
    path_12.moveTo(size.width*0.4222355,size.height*0.2378557);
    path_12.cubicTo(size.width*0.4222438,size.height*0.2218665,size.width*0.4192603,size.height*0.2060322,size.width*0.4134545,size.height*0.1912570);
    path_12.cubicTo(size.width*0.4076450,size.height*0.1764822,size.width*0.3991260,size.height*0.1630565,size.width*0.3883839,size.height*0.1517474);
    path_12.cubicTo(size.width*0.3776413,size.height*0.1404383,size.width*0.3648860,size.height*0.1314678,size.width*0.3508467,size.height*0.1253483);
    path_12.cubicTo(size.width*0.3368074,size.height*0.1192287,size.width*0.3217599,size.height*0.1160809,size.width*0.3065636,size.height*0.1160835);
    path_12.cubicTo(size.width*0.2913690,size.height*0.1160835,size.width*0.2763236,size.height*0.1192339,size.width*0.2622868,size.height*0.1253548);
    path_12.cubicTo(size.width*0.2482500,size.height*0.1314752,size.width*0.2354971,size.height*0.1404465,size.width*0.2247570,size.height*0.1517552);
    path_12.cubicTo(size.width*0.2140169,size.height*0.1630639,size.width*0.2054996,size.height*0.1764887,size.width*0.1996926,size.height*0.1912622);
    path_12.cubicTo(size.width*0.1938855,size.height*0.2060357,size.width*0.1909025,size.height*0.2218687,size.width*0.1909136,size.height*0.2378557);
    path_12.cubicTo(size.width*0.1909107,size.height*0.2538374,size.width*0.1939000,size.height*0.2696630,size.width*0.1997107,size.height*0.2844291);
    path_12.cubicTo(size.width*0.2055215,size.height*0.2991948,size.width*0.2140397,size.height*0.3126117,size.width*0.2247793,size.height*0.3239135);
    path_12.cubicTo(size.width*0.2355186,size.height*0.3352152,size.width*0.2482686,size.height*0.3441804,size.width*0.2623012,size.height*0.3502970);
    path_12.cubicTo(size.width*0.2763339,size.height*0.3564135,size.width*0.2913744,size.height*0.3595617,size.width*0.3065636,size.height*0.3595617);
    path_12.lineTo(size.width*0.5018636,size.height*0.3595617);
    path_12.lineTo(size.width*0.4612727,size.height*0.3245904);
    path_12.cubicTo(size.width*0.4490702,size.height*0.3140752,size.width*0.4392355,size.height*0.3008404,size.width*0.4324876,size.height*0.2858409);
    path_12.cubicTo(size.width*0.4257355,size.height*0.2708417,size.width*0.4222355,size.height*0.2544522,size.width*0.4222355,size.height*0.2378557);
    path_12.close();

Paint paint_12_fill = Paint()..style=PaintingStyle.fill;
paint_12_fill.shader = ui.Gradient.linear(Offset(size.width*0.2180901,size.height*0.2536087), Offset(size.width*0.4597934,size.height*0.3712452), [Color(0xffEEF0F2).withOpacity(1),Color(0xffC4C4C4).withOpacity(1)], [0,1]);
canvas.drawPath(path_12,paint_12_fill);

Path path_13 = Path();
    path_13.moveTo(size.width*0.3261409,size.height*0.2768174);
    path_13.cubicTo(size.width*0.3261409,size.height*0.2590252,size.width*0.3135752,size.height*0.2446022,size.width*0.2980748,size.height*0.2446022);
    path_13.cubicTo(size.width*0.2825744,size.height*0.2446022,size.width*0.2700087,size.height*0.2590252,size.width*0.2700087,size.height*0.2768174);
    path_13.lineTo(size.width*0.3261409,size.height*0.2768174);
    path_13.close();

Paint paint_13_fill = Paint()..style=PaintingStyle.fill;
paint_13_fill.color = Color(0xff666666).withOpacity(1.0);
canvas.drawPath(path_13,paint_13_fill);

Path path_14 = Path();
    path_14.moveTo(size.width*0.2598029,size.height*0.2365604);
    path_14.cubicTo(size.width*0.2668488,size.height*0.2365604,size.width*0.2725603,size.height*0.2305509,size.width*0.2725603,size.height*0.2231378);
    path_14.cubicTo(size.width*0.2725603,size.height*0.2157243,size.width*0.2668488,size.height*0.2097148,size.width*0.2598029,size.height*0.2097148);
    path_14.cubicTo(size.width*0.2527574,size.height*0.2097148,size.width*0.2470455,size.height*0.2157243,size.width*0.2470455,size.height*0.2231378);
    path_14.cubicTo(size.width*0.2470455,size.height*0.2305509,size.width*0.2527574,size.height*0.2365604,size.width*0.2598029,size.height*0.2365604);
    path_14.close();

Paint paint_14_fill = Paint()..style=PaintingStyle.fill;
paint_14_fill.shader = ui.Gradient.linear(Offset(size.width*0.2598029,size.height*0.2097148), Offset(size.width*0.2598029,size.height*0.2365604), [Color(0xff979797).withOpacity(1),Color(0xffC4C4C4).withOpacity(1)], [0,1]);
canvas.drawPath(path_14,paint_14_fill);

Path path_15 = Path();
    path_15.moveTo(size.width*0.3363471,size.height*0.2365604);
    path_15.cubicTo(size.width*0.3433926,size.height*0.2365604,size.width*0.3491045,size.height*0.2305509,size.width*0.3491045,size.height*0.2231378);
    path_15.cubicTo(size.width*0.3491045,size.height*0.2157243,size.width*0.3433926,size.height*0.2097148,size.width*0.3363471,size.height*0.2097148);
    path_15.cubicTo(size.width*0.3293012,size.height*0.2097148,size.width*0.3235897,size.height*0.2157243,size.width*0.3235897,size.height*0.2231378);
    path_15.cubicTo(size.width*0.3235897,size.height*0.2305509,size.width*0.3293012,size.height*0.2365604,size.width*0.3363471,size.height*0.2365604);
    path_15.close();

Paint paint_15_fill = Paint()..style=PaintingStyle.fill;
paint_15_fill.shader = ui.Gradient.linear(Offset(size.width*0.3363471,size.height*0.2097148), Offset(size.width*0.3363471,size.height*0.2365604), [Color(0xff979797).withOpacity(1),Color(0xffC4C4C4).withOpacity(1)], [0,1]);
canvas.drawPath(path_15,paint_15_fill);

Path path_16 = Path();
    path_16.moveTo(size.width*0.7851240,size.height*0.8525609);
    path_16.cubicTo(size.width*0.7851240,size.height*0.8438826,size.width*0.7895248,size.height*0.8358565,size.width*0.7966736,size.height*0.8315174);
    path_16.lineTo(size.width*0.8503512,size.height*0.7989087);
    path_16.cubicTo(size.width*0.8575000,size.height*0.7945652,size.width*0.8663017,size.height*0.7945652,size.width*0.8734504,size.height*0.7989087);
    path_16.lineTo(size.width*0.9271281,size.height*0.8315174);
    path_16.cubicTo(size.width*0.9342727,size.height*0.8358565,size.width*0.9386777,size.height*0.8438826,size.width*0.9386777,size.height*0.8525609);
    path_16.lineTo(size.width*0.9386777,size.height*0.9177826);
    path_16.cubicTo(size.width*0.9386777,size.height*0.9264609,size.width*0.9342727,size.height*0.9344870,size.width*0.9271281,size.height*0.9388261);
    path_16.lineTo(size.width*0.8734504,size.height*0.9714348);
    path_16.cubicTo(size.width*0.8663017,size.height*0.9757783,size.width*0.8575000,size.height*0.9757783,size.width*0.8503512,size.height*0.9714348);
    path_16.lineTo(size.width*0.7966736,size.height*0.9388261);
    path_16.cubicTo(size.width*0.7895248,size.height*0.9344870,size.width*0.7851240,size.height*0.9264609,size.width*0.7851240,size.height*0.9177826);
    path_16.lineTo(size.width*0.7851240,size.height*0.8525609);
    path_16.close();

Paint paint_16_fill = Paint()..style=PaintingStyle.fill;
paint_16_fill.color = Color(0xffC7C7C7).withOpacity(1.0);
canvas.drawPath(path_16,paint_16_fill);

Path path_17 = Path();
    path_17.moveTo(size.width*0.0008307934,size.height*0.3795157);
    path_17.cubicTo(size.width*0.0008307934,size.height*0.3708335,size.width*0.005232934,size.height*0.3628113,size.width*0.01237901,size.height*0.3584700);
    path_17.lineTo(size.width*0.06605868,size.height*0.3258609);
    path_17.cubicTo(size.width*0.07320496,size.height*0.3215200,size.width*0.08200909,size.height*0.3215200,size.width*0.08915537,size.height*0.3258609);
    path_17.lineTo(size.width*0.1428351,size.height*0.3584700);
    path_17.cubicTo(size.width*0.1499810,size.height*0.3628109,size.width*0.1543831,size.height*0.3708335,size.width*0.1543831,size.height*0.3795157);
    path_17.lineTo(size.width*0.1543831,size.height*0.4447348);
    path_17.cubicTo(size.width*0.1543831,size.height*0.4534174,size.width*0.1499810,size.height*0.4614391,size.width*0.1428351,size.height*0.4657783);
    path_17.lineTo(size.width*0.08915537,size.height*0.4983870);
    path_17.cubicTo(size.width*0.08200909,size.height*0.5027304,size.width*0.07320496,size.height*0.5027304,size.width*0.06605868,size.height*0.4983870);
    path_17.lineTo(size.width*0.01237901,size.height*0.4657783);
    path_17.cubicTo(size.width*0.005232934,size.height*0.4614391,size.width*0.0008307810,size.height*0.4534174,size.width*0.0008307851,size.height*0.4447348);
    path_17.lineTo(size.width*0.0008307934,size.height*0.3795157);
    path_17.close();

Paint paint_17_fill = Paint()..style=PaintingStyle.fill;
paint_17_fill.color = Color(0xffEEF0F2).withOpacity(1.0);
canvas.drawPath(path_17,paint_17_fill);

Path path_18 = Path();
    path_18.moveTo(size.width*0.8768636,size.height*0.1864865);
    path_18.cubicTo(size.width*0.8768636,size.height*0.1820474,size.width*0.8791157,size.height*0.1779452,size.width*0.8827686,size.height*0.1757257);
    path_18.lineTo(size.width*0.9102149,size.height*0.1590526);
    path_18.cubicTo(size.width*0.9138678,size.height*0.1568330,size.width*0.9183719,size.height*0.1568330,size.width*0.9220248,size.height*0.1590526);
    path_18.lineTo(size.width*0.9494711,size.height*0.1757257);
    path_18.cubicTo(size.width*0.9531240,size.height*0.1779452,size.width*0.9553760,size.height*0.1820474,size.width*0.9553760,size.height*0.1864865);
    path_18.lineTo(size.width*0.9553760,size.height*0.2198330);
    path_18.cubicTo(size.width*0.9553760,size.height*0.2242722,size.width*0.9531240,size.height*0.2283743,size.width*0.9494711,size.height*0.2305939);
    path_18.lineTo(size.width*0.9220248,size.height*0.2472670);
    path_18.cubicTo(size.width*0.9183719,size.height*0.2494865,size.width*0.9138678,size.height*0.2494865,size.width*0.9102149,size.height*0.2472670);
    path_18.lineTo(size.width*0.8827686,size.height*0.2305939);
    path_18.cubicTo(size.width*0.8791157,size.height*0.2283743,size.width*0.8768636,size.height*0.2242722,size.width*0.8768636,size.height*0.2198330);
    path_18.lineTo(size.width*0.8768636,size.height*0.1864865);
    path_18.close();

Paint paint_18_fill = Paint()..style=PaintingStyle.fill;
paint_18_fill.color = Color(0xffEEEEEE).withOpacity(1.0);
canvas.drawPath(path_18,paint_18_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}