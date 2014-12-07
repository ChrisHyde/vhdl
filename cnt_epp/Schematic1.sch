*version 9.1 3803756169
u 891
Z? 2
HB? 9
D? 2
U? 20
@libraries
@analysis
.AC 1 1 0
+0 101
+1 10
+2 1.00K
.DC 1 0 0 0 1 1
.MC 1 2 1 1 0 1 0 1 1 0
.SAVEBIAS 1 0 0 0 0
.LOADBIAS 1 
.LIB C:\Program Files\OrCAD_Demo\PSpice\Schematics_Samples\DigSim\Frqchk\frqchkx.lib
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 31766 
@status
c 114:11:06:12:17:12;1417864632
*page 1 0 256 160 ma
@ports
@parts
part 5 7474 300 160 h
a 0 s 11 0 40 80 hln 100 PART=7474
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 a 9 0 40 8 hln 100 REFDES=U1A
part 8 7409 480 130 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=AND
a 0 xp 9 0 40 0 hln 100 REFDES=ANDA
a 0 s 11 0 40 50 hln 100 PART=7409
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
part 7 7416 380 160 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=NOT
a 0 x 0:13 0 0 0 hln 100 GATE=Q
a 1 xp 9 0 26 8 hln 100 REFDES=NOTQ
a 0 s 11 0 40 40 hln 100 PART=7416
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
part 141 7409 640 160 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=AND
a 0 xp 9 0 40 0 hln 100 REFDES=ANDA
a 0 s 11 0 40 50 hln 100 PART=7409
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
block 237 blocksym237 880 60 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=HB3
a 0 ap 9 0 0 0 hln 100 REFDES=HB3
*symbol blocksym237
d 
@type p
@attributes
a 0 sp 9 0 0 0 hln 100 REFDES=HB?
a 0 s 0 0 0 0 hln 100 PART=
@pins
p 2 30 60 hcb 100 CLK l 30 60 v
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 31 58 hln 100 PIN=
p 2 2 15 hlb 100 D l 0 10 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 8 hln 100 PIN=
p 2 38 15 hrb 100 Q l 40 10 u
a 0 s 0:13 0 0 0 hln 100 ERC=o
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 41 8 hln 100 PIN=
p 2 2 55 hlb 100 RST l 0 50 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 48 hln 100 PIN=
@graphics 40 60 0 0 10
r 0 0 0 40 60
*end blocksym
block 258 blocksym237 880 140 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=HB4
a 0 ap 9 0 0 0 hln 100 REFDES=HB4
*symbol blocksym258
d 
@type p
@attributes
a 0 sp 9 0 0 0 hln 100 REFDES=HB?
a 0 s 0 0 0 0 hln 100 PART=
@pins
p 2 2 35 hlb 100 CE l 0 30 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 28 hln 100 PIN=
p 2 2 55 hlb 100 RST l 0 50 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 48 hln 100 PIN=
p 2 38 15 hrb 100 Q l 40 10 u
a 0 s 0:13 0 0 0 hln 100 ERC=o
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 41 8 hln 100 PIN=
p 2 2 15 hlb 100 D l 0 10 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 8 hln 100 PIN=
p 2 30 60 hcb 100 CLK l 30 60 v
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 31 58 hln 100 PIN=
@graphics 40 60 0 0 10
r 0 0 0 40 60
*end blocksym
block 275 blocksym237 880 230 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=HB5
a 0 ap 9 0 0 0 hln 100 REFDES=HB5
*symbol blocksym275
d 
@type p
@attributes
a 0 sp 9 0 0 0 hln 100 REFDES=HB?
a 0 s 0 0 0 0 hln 100 PART=
@pins
p 2 30 60 hcb 100 CLK l 30 60 v
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 31 58 hln 100 PIN=
p 2 2 55 hlb 100 RST l 0 50 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 48 hln 100 PIN=
p 2 38 15 hrb 100 Q l 40 10 u
a 0 s 0:13 0 0 0 hln 100 ERC=o
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 41 8 hln 100 PIN=
p 2 2 15 hlb 100 D l 0 10 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 8 hln 100 PIN=
@graphics 40 60 0 0 10
r 0 0 0 40 60
*end blocksym
part 83 7474 300 350 h
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U7
a 0 a 9 0 40 8 hln 100 REFDES=U7A
a 0 s 11 0 40 80 hln 100 PART=7474
part 79 7416 380 350 h
a 0 x 0:13 0 0 0 hln 100 GATE=Q
a 1 xp 9 0 28 8 hln 100 REFDES=NOTQ
a 0 s 11 0 40 40 hln 100 PART=7416
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 x 0:13 0 0 0 hln 100 PKGREF=NOT
part 159 7409 640 310 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=AND
a 0 xp 9 0 40 0 hln 100 REFDES=ANDA
a 0 s 11 0 40 50 hln 100 PART=7409
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
block 289 blocksym237 880 340 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=HB6
a 0 ap 9 0 0 0 hln 100 REFDES=HB6
*symbol blocksym289
d 
@type p
@attributes
a 0 sp 9 0 0 0 hln 100 REFDES=HB?
a 0 s 0 0 0 0 hln 100 PART=
@pins
p 2 30 60 hcb 100 CLK l 30 60 v
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 31 58 hln 100 PIN=
p 2 2 55 hlb 100 RST l 0 50 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 48 hln 100 PIN=
p 2 38 15 hrb 100 Q l 40 10 u
a 0 s 0:13 0 0 0 hln 100 ERC=o
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 41 8 hln 100 PIN=
p 2 2 35 hlb 100 CE l 0 30 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 28 hln 100 PIN=
p 2 2 15 hlb 100 D l 0 10 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 8 hln 100 PIN=
@graphics 40 60 0 0 10
r 0 0 0 40 60
*end blocksym
part 82 7409 480 320 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=AND
a 0 xp 9 0 40 0 hln 100 REFDES=ANDA
a 0 s 11 0 40 50 hln 100 PART=7409
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
part 138 7416 580 190 h
a 0 s 11 0 40 40 hln 100 PART=7416
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U10
a 1 a 9 0 40 0 hln 100 REFDES=U10A
part 6 74426 750 230 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=tri-state
a 0 xp 9 0 30 20 hln 100 REFDES=tri-stateA
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 sp 11 0 30 48 hln 100 PART=74426
part 156 7416 580 300 h
a 0 s 11 0 40 40 hln 100 PART=7416
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U12
a 1 a 9 0 40 0 hln 100 REFDES=U12A
block 804 blocksym237 360 240 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=HB8
a 0 ap 9 0 0 0 hln 100 REFDES=HB8
*symbol blocksym804
d 
@type p
@attributes
a 0 sp 9 0 0 0 hln 100 REFDES=HB?
a 0 s 0 0 0 0 hln 100 PART=
@pins
p 2 30 60 hcb 100 CLK l 30 60 v
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 31 58 hln 100 PIN=
p 2 2 55 hlb 100 RST l 0 50 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 48 hln 100 PIN=
p 2 38 15 hrb 100 Q l 40 10 u
a 0 s 0:13 0 0 0 hln 100 ERC=o
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 41 8 hln 100 PIN=
p 2 2 35 hlb 100 CE l 0 30 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 28 hln 100 PIN=
p 2 2 15 hlb 100 D l 0 10 h
a 0 s 0:13 0 0 0 hln 100 ERC=i
a 0 s 0:13 0 0 0 hln 100 FLOAT=n
a 0 s 1 0 1 8 hln 100 PIN=
@graphics 40 60 0 0 10
r 0 0 0 40 60
*end blocksym
part 865 7409 260 420 h
a 0 s 11 0 40 50 hln 100 PART=7409
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=AND
a 0 xp 9 0 40 0 hln 100 REFDES=ANDA
part 882 7432 350 440 h
a 0 sp 11 0 40 50 hln 100 PART=7432
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U19
a 0 ap 9 0 40 0 hln 100 REFDES=U19A
part 873 7409 260 470 h
a 0 s 11 0 40 50 hln 100 PART=7409
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=AND
a 0 xp 9 0 40 0 hln 100 REFDES=ANDA
@conn
w 111
s 600 160 640 160 355
s 600 140 600 160 354
s 550 140 600 140 142
w 155
s 480 160 480 150 57
s 430 160 480 160 52
w 11
s 380 160 360 160 49
w 145
s 630 190 640 190 144
s 640 190 640 180 146
w 688
s 740 260 740 600 218
s 740 600 110 600 220
s 750 260 740 260 216
w 784
s 170 60 150 60 783
w 786
s 170 100 150 100 785
w 709
s 710 170 720 170 225
s 720 170 720 70 227
s 880 70 840 70 243
s 880 170 840 170 299
s 840 70 720 70 799
s 840 170 840 70 301
w 269
s 880 190 860 190 268
w 295
s 880 390 860 390 294
w 281
s 880 280 860 280 280
w 248
s 880 110 860 110 247
w 252
s 910 120 910 130 251
w 283
s 910 290 910 300 282
w 297
s 910 400 910 410 296
w 260
s 910 200 910 210 259
w 250
s 1010 70 920 70 249
w 267
s 1010 150 920 150 266
w 277
s 1010 240 920 240 276
w 291
s 1010 350 920 350 290
w 298
s 850 240 880 240 308
s 710 320 850 320 235
s 850 320 850 240 717
s 880 370 850 370 304
s 850 370 850 320 306
w 161
s 640 310 640 300 583
s 640 300 630 300 588
s 650 310 640 310 164
w 154
s 360 350 380 350 75
w 70
s 480 350 480 340 73
s 430 350 480 350 81
w 151
s 550 330 640 330 538
w 858
s 400 250 470 250 857
s 470 250 470 570 859
s 470 570 110 570 861
w 867
s 260 350 260 420 497
s 260 350 260 320 808
s 260 350 270 350 399
s 260 320 250 320 711
s 270 350 300 350 837
s 270 310 270 350 105
s 250 320 110 320 842
s 250 320 250 250 840
s 440 310 270 310 103
s 250 250 360 250 843
s 440 320 440 310 101
s 480 320 440 320 99
w 805
s 110 180 240 180 657
s 270 180 270 160 352
s 270 160 300 160 182
s 270 160 270 110 651
s 480 110 270 110 53
s 480 110 480 130 64
s 240 180 270 180 811
s 240 180 240 470 501
s 240 470 260 470 433
s 260 470 270 470 874
w 846
s 360 270 310 270 845
s 560 190 560 230 202
s 560 230 310 230 724
s 750 230 560 230 372
s 580 190 560 190 136
s 560 230 560 300 499
s 580 300 560 300 157
s 310 230 210 230 849
s 310 270 310 230 847
s 210 230 110 230 870
s 210 230 210 440 868
s 210 440 260 440 871
s 210 440 210 490 876
s 210 490 260 490 878
w 875
s 410 450 420 450 476
s 430 450 430 510 478
s 430 510 110 510 480
s 420 450 430 450 883
w 465
s 320 430 330 430 464
s 330 430 330 440 466
s 360 440 350 440 884
s 350 440 330 440 886
w 888
s 350 460 330 460 887
s 330 460 330 480 889
b 379
s 830 540 830 350 386
s 110 540 830 540 378
s 830 260 830 150 766
s 830 260 800 260 384
s 830 150 880 150 382
s 830 350 830 260 794
s 880 350 830 350 390
@junction
j 710 170
+ p 141 Y
+ w 709
j 640 160
+ p 141 A
+ w 111
j 430 160
+ p 7 Y
+ w 155
j 380 160
+ p 7 A
+ w 11
j 630 190
+ p 138 Y
+ w 145
j 640 180
+ p 141 B
+ w 145
j 750 260
+ p 6 A
+ w 688
j 800 260
+ p 6 Y
+ b 379
j 830 260
+ b 379
+ b 379
j 880 150
+ p 258 D
+ b 379
j 880 350
+ p 289 D
+ b 379
j 830 350
+ b 379
+ b 379
j 880 190
+ p 258 RST
+ w 269
j 880 390
+ p 289 RST
+ w 295
j 880 280
+ p 275 RST
+ w 281
j 880 110
+ p 237 RST
+ w 248
j 910 120
+ p 237 CLK
+ w 252
j 910 290
+ p 275 CLK
+ w 283
j 910 400
+ p 289 CLK
+ w 297
j 910 200
+ p 258 CLK
+ w 260
j 880 70
+ p 237 D
+ w 709
j 880 170
+ p 258 CE
+ w 709
j 840 70
+ w 709
+ w 709
j 880 240
+ p 275 D
+ w 298
j 920 70
+ p 237 Q
+ w 250
j 920 150
+ p 258 Q
+ w 267
j 920 240
+ p 275 Q
+ w 277
j 920 350
+ p 289 Q
+ w 291
j 710 320
+ p 159 Y
+ w 298
j 880 370
+ p 289 CE
+ w 298
j 850 320
+ w 298
+ w 298
j 640 310
+ p 159 A
+ w 161
j 630 300
+ p 156 Y
+ w 161
j 360 350
+ p 83 Q
+ w 154
j 380 350
+ p 79 A
+ w 154
j 480 340
+ p 82 B
+ w 70
j 430 350
+ p 79 Y
+ w 70
j 550 330
+ p 82 Y
+ w 151
j 640 330
+ p 159 B
+ w 151
j 300 160
+ p 5 D
+ w 805
j 360 160
+ p 5 Q
+ w 11
j 480 130
+ p 8 A
+ w 805
j 550 140
+ p 8 Y
+ w 111
j 480 150
+ p 8 B
+ w 155
j 360 250
+ p 804 D
+ w 867
j 360 270
+ p 804 CE
+ w 846
j 300 350
+ p 83 D
+ w 867
j 260 350
+ w 867
+ w 867
j 270 350
+ w 867
+ w 867
j 480 320
+ p 82 A
+ w 867
j 250 320
+ w 867
+ w 867
j 560 230
+ w 846
+ w 846
j 580 190
+ p 138 A
+ w 846
j 750 230
+ p 6 G
+ w 846
j 580 300
+ p 156 A
+ w 846
j 310 230
+ w 846
+ w 846
j 270 160
+ w 805
+ w 805
j 240 180
+ w 805
+ w 805
j 400 250
+ p 804 Q
+ w 858
j 260 420
+ p 865 A
+ w 867
j 330 430
+ p 865 Y
+ w 465
j 210 230
+ w 846
+ w 846
j 260 440
+ p 865 B
+ w 846
j 260 470
+ p 873 A
+ w 805
j 210 440
+ w 846
+ w 846
j 260 490
+ p 873 B
+ w 846
j 420 450
+ p 882 Y
+ w 875
j 350 440
+ p 882 A
+ w 465
j 350 460
+ p 882 B
+ w 888
j 330 480
+ p 873 Y
+ w 888
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A4
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 127 t 5 750 75 780 90 0 3
S11
t 699 t 5 10 41 150 10 0 10 d_info:,255/0/0,,,,,,,,3,,,,18, 
EPP_DEVICE
t 697 t 5 180 41 320 10 0 7 d_info:,255/0/0,,,,,,,,3,,,,18, 
CNT_EPP
t 126 t 5 560 145 579 161 0 3541
S1----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:15 11/04/2014 
-- Design Name: 
-- Module Name:    cnt_epp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnt_epp is
  port (
    CLK      : in    std_logic;
    RST      : in    std_logic;
    ASTRB    : in    std_logic;
    DSTRB    : in    std_logic;
    DATA     : inout std_logic_vector(7 downto 0);
    PWRITE   : in    std_logic;
    PWAIT    : out   std_logic;
    DATO_RD  : in    std_logic_vector(7 downto 0);
    CE_RD    : out   std_logic;
    DIR      : out   std_logic_vector (7 downto 0);
    DIR_VLD  : out   std_logic;
    DATO     : out   std_logic_vector (7 downto 0);
    DATO_VLD : out   std_logic);
end ;

architecture rtl of cnt_epp is

   signal S1:std_logic; 
	signal S11:std_logic;
	signal Q:std_logic;
	
	signal S2:std_logic; 
	signal S22:std_logic;
	signal Q2:std_logic;
	
	
begin

------------------ADDRESS---------------------------------
   AddrBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q <= ASTRB;	      
    end if;
   end process;


   S1<= ASTRB and not Q;
	S11<=S1 and not PWRITE;
	
	
	AddrBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DIR_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DIR_VLD <= S11;	      
    end if;
   end process;
	
	
  AddrBiestableD3:process (CLK,RST,S11)
    begin
	 if (RST='1') then
	      DIR <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S11='1') then
		   DIR <= DATA;	     
         end if;			
    end if;
   end process;
	
	
   --tristate
	

DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='0')) else (others => 'Z');
------------------END ADDRESS----------------------------



-----------------DATA------------------------------------
	   DataBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q2 <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q2 <= DSTRB;	      
    end if;
   end process;
	
	
	 S2<= DSTRB and not Q2;
	S22<=S2 and not PWRITE;

DataBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DATO_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DATO_VLD <= S22;	      
    end if;
   end process;
	
	
  DataBiestableD3:process (CLK,RST,S22)
    begin
	 if (RST='1') then
	      DATO <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S22='1') then
		   DATO <= DATA;	     
         end if;			
    end if;
   end process;
	
	
 
	
DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='1')) else (others => 'Z');
	
--------------------END DATA----------------------------
  PWAITbiestableD:process (CLK,RST)
    begin
	 if (RST='1') then
	      PWAIT <= '0';
	 elsif (CLK'event and CLK='1')then
			PWAIT <= (not(ASTRB)) and (not(DSTRB));         		
    end if;
   end process;


end rtl;


t 421 t 5 720 295 750 310 0 7000
S22
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:15 11/04/2014 
-- Design Name: 
-- Module Name:    cnt_epp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnt_epp is
  port (
    CLK      : in    std_logic;
    RST      : in    std_logic;
    ASTRB    : in    std_logic;
    DSTRB    : in    std_logic;
    DATA     : inout std_logic_vector(7 downto 0);
    PWRITE   : in    std_logic;
    PWAIT    : out   std_logic;
    DATO_RD  : in    std_logic_vector(7 downto 0);
    CE_RD    : out   std_logic;
    DIR      : out   std_logic_vector (7 downto 0);
    DIR_VLD  : out   std_logic;
    DATO     : out   std_logic_vector (7 downto 0);
    DATO_VLD : out   std_logic);
end ;

architecture rtl of cnt_epp is

   signal S1:std_logic; 
	signal S11:std_logic;
	signal Q:std_logic;
	
	signal S2:std_logic; 
	signal S22:std_logic;
	signal Q2:std_logic;
	
	
begin

------------------ADDRESS---------------------------------
   AddrBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q <= ASTRB;	      
    end if;
   end process;


   S1<= ASTRB and not Q;
	S11<=S1 and not PWRITE;
	
	
	AddrBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DIR_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DIR_VLD <= S11;	      
    end if;
   end process;
	
	
  AddrBiestableD3:process (CLK,RST,S11)
    begin
	 if (RST='1') then
	      DIR <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S11='1') then
		   DIR <= DATA;	     
         end if;			
    end if;
   end process;
	
	
   --tristate
	

DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='0')) else (others => 'Z');
------------------END ADDRESS----------------------------



-----------------DATA------------------------------------
	   DataBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q2 <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q2 <= DSTRB;	      
    end if;
   end process;
	
	
	 S2<= DSTRB and not Q2;
	S22<=S2 and not PWRITE;

DataBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DATO_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DATO_VLD <= S22;	      
    end if;
   end process;
	
	
  DataBiestableD3:process (CLK,RST,S22)
    begin
	 if (RST='1') then
	      DATO <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S22='1') then
		   DATO <= DATA;	     
         end if;			
    end if;
   end process;
	
	
 
	
DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='1')) else (others => 'Z');
	
--------------------END DATA----------------------------
  PWAITbiestableD:process (CLK,RST)
    begin
	 if (RST='1') then
	      PWAIT <= '0';
	 elsif (CLK'event and CLK='1')then
			PWAIT <= (not(ASTRB)) and (not(DSTRB));         		
    end if;
   end process;


end rtl;
2
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:15 11/04/2014 
-- Design Name: 
-- Module Name:    cnt_epp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnt_epp is
  port (
    CLK      : in    std_logic;
    RST      : in    std_logic;
    ASTRB    : in    std_logic;
    DSTRB    : in    std_logic;
    DATA     : inout std_logic_vector(7 downto 0);
    PWRITE   : in    std_logic;
    PWAIT    : out   std_logic;
    DATO_RD  : in    std_logic_vector(7 downto 0);
    CE_RD    : out   std_logic;
    DIR      : out   std_logic_vector (7 downto 0);
    DIR_VLD  : out   std_logic;
    DATO     : out   std_logic_vector (7 downto 0);
    DATO_VLD : out   std_logic);
end ;

architecture rtl of cnt_epp is

   signal S1:std_logic; 
	signal S11:std_logic;
	signal Q:std_logic;
	
	signal S2:std_logic; 
	signal S22:std_logic;
	signal Q2:std_logic;
	
	
begin

------------------ADDRESS---------------------------------
   AddrBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q <= ASTRB;	      
    end if;
   end process;


   S1<= ASTRB and not Q;
	S11<=S1 and not PWRITE;
	
	
	AddrBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DIR_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DIR_VLD <= S11;	      
    end if;
   end process;
	
	
  AddrBiestableD3:process (CLK,RST,S11)
    begin
	 if (RST='1') then
	      DIR <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S11='1') then
		   DIR <= DATA;	     
         end if;			
    end if;
   end process;
	
	
   --tristate
	

DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='0')) else (others => 'Z');
------------------END ADDRESS----------------------------



-----------------DATA------------------------------------
	   DataBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q2 <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q2 <= DSTRB;	      
    end if;
   end process;
	
	
	 S2<= DSTRB and not Q2;
	S22<=S2 and not PWRITE;

DataBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DATO_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DATO_VLD <= S22;	      
    end if;
   end process;
	
	
  DataBiestableD3:process (CLK,RST,S22)
    begin
	 if (RST='1') then
	      DATO <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S22='1') then
		   DATO <= DATA;	     
         end if;			
    end if;
   end process;
	
	
 
	
DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='1')) else (others => 'Z');
	
--------------------END DATA----------------------------
  PWAITbiestableD:process (CLK,RST)
    begin
	 if (RST='1') then
	      PWAIT <= '0';
	 elsif (CLK'event and CLK='1')then
			PWAIT <= (not(ASTRB)) and (not(DSTRB));         		
    end if;
   end process;


end rtl;


t 707 t 5 180 155 250 180 0 8 d_info:,,,,,,,,,,,,,11, 
ASTRB_IN
r 698 r 0 20 40 110 550 d_info:,255/0/0,4,,,,,,,,,,,, 
t 703 t 5 30 180 110 160 0 9 d_info:,,,,,,,,,,,,,11, 
ASTRB_OUT
t 702 t 5 30 215 120 240 0 10 d_info:,,,,,,,,,,,,,11, 
PWRITE_OUT
t 706 t 5 180 205 250 230 0 9 d_info:,,,,,,,,,,,,,11, 
PWRITE_IN
t 708 t 5 180 575 270 600 0 10 d_info:,,,,,,,,,,,,,11, 
DATO_RD_IN
t 755 t 5 110 515 30 540 0 10 d_info:,,,,,,,,,,,,,11, 
DATA_INOUT
t 754 t 5 180 515 270 540 0 10 d_info:,,,,,,,,,,,,,11, 
DATA_INOUT
r 606 r 0 180 40 1000 620 d_info:,255/0/0,4,,,,,,,,,,,, 
v 767 v 0 170 170 d_info:,0/128/0,,,4/1/10/6,,,,,,,,,, 
180 180
170 190
170 170
;
v 768 v 0 170 220 d_info:,0/128/0,,,4/1/10/6,,,,,,,,,, 
180 230
170 240
170 220
;
v 769 v 0 170 310 d_info:,0/128/0,,,4/1/10/6,,,,,,,,,, 
180 320
170 330
170 310
;
v 770 v 0 170 590 d_info:,0/128/0,,,4/1/10/6,,,,,,,,,, 
180 600
170 610
170 590
;
v 772 v 0 110 540 d_info:,0/0/128,2,,4/1/6/6,,,,,,,,,, 
120 530
120 550
110 540
;
v 771 v 0 170 530 d_info:,0/0/128,2,,4/1/10/6,,,,,,,,,, 
180 540
170 550
170 530
;
v 775 v 0 170 50 d_info:,0/128/0,,,4/1/10/6,,,,,,,,,, 
180 60
170 70
170 50
;
v 776 v 0 170 90 d_info:,0/128/0,,,4/1/10/6,,,,,,,,,, 
180 100
170 110
170 90
;
v 777 v 0 1010 60 d_info:,0/128/0,,,4/1/10/6,,,,,,,,,, 
1020 70
1010 80
1010 60
;
v 778 v 0 1010 140 d_info:,0/128/0,,,4/1/10/6,,,,,,,,,, 
1020 150
1010 160
1010 140
;
v 779 v 0 1010 230 d_info:,0/128/0,,,4/1/10/6,,,,,,,,,, 
1020 240
1010 250
1010 230
;
v 780 v 0 1010 340 d_info:,0/128/0,,,4/1/10/6,,,,,,,,,, 
1020 350
1010 360
1010 340
;
t 781 t 5 180 45 250 70 0 3 d_info:,,,,,,,,,,,,,11, 
CLK
t 782 t 5 180 85 250 110 0 3 d_info:,,,,,,,,,,,,,11, 
RST
t 787 t 5 920 45 1010 70 0 11 d_info:,,,,,,,,,,,,,11, 
DIR_VLD_OUT
t 790 t 5 930 325 1000 350 0 8 d_info:,,,,,,,,,,,,,11, 
DATO_OUT
t 788 t 5 1000 150 930 120 0 7 d_info:,,,,,,,,,,,,,11, 
DIR_OUT
t 789 t 5 920 215 1020 240 0 12 d_info:,,,,,,,,,,,,,11, 
DATO_VLD_OUT
t 194 t 5 590 335 609 351 0 7081
S2----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:15 11/04/2014 
-- Design Name: 
-- Module Name:    cnt_epp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnt_epp is
  port (
    CLK      : in    std_logic;
    RST      : in    std_logic;
    ASTRB    : in    std_logic;
    DSTRB    : in    std_logic;
    DATA     : inout std_logic_vector(7 downto 0);
    PWRITE   : in    std_logic;
    PWAIT    : out   std_logic;
    DATO_RD  : in    std_logic_vector(7 downto 0);
    CE_RD    : out   std_logic;
    DIR      : out   std_logic_vector (7 downto 0);
    DIR_VLD  : out   std_logic;
    DATO     : out   std_logic_vector (7 downto 0);
    DATO_VLD : out   std_logic);
end ;

architecture rtl of cnt_epp is

   signal S1:std_logic; 
	signal S11:std_logic;
	signal Q:std_logic;
	
	signal S2:std_logic; 
	signal S22:std_logic;
	signal Q2:std_logic;
	
	
begin

------------------ADDRESS---------------------------------
   AddrBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q <= ASTRB;	      
    end if;
   end process;


   S1<= ASTRB and not Q;
	S11<=S1 and not PWRITE;
	
	
	AddrBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DIR_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DIR_VLD <= S11;	      
    end if;
   end process;
	
	
  AddrBiestableD3:process (CLK,RST,S11)
    begin
	 if (RST='1') then
	      DIR <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S11='1') then
		   DIR <= DATA;	     
         end if;			
    end if;
   end process;
	
	
   --tristate
	

DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='0')) else (others => 'Z');
------------------END ADDRESS----------------------------



-----------------DATA------------------------------------
	   DataBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q2 <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q2 <= DSTRB;	      
    end if;
   end process;
	
	
	 S2<= DSTRB and not Q2;
	S22<=S2 and not PWRITE;

DataBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DATO_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DATO_VLD <= S22;	      
    end if;
   end process;
	
	
  DataBiestableD3:process (CLK,RST,S22)
    begin
	 if (RST='1') then
	      DATO <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S22='1') then
		   DATO <= DATA;	     
         end if;			
    end if;
   end process;
	
	
 
	
DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='1')) else (others => 'Z');
	
--------------------END DATA----------------------------
  PWAITbiestableD:process (CLK,RST)
    begin
	 if (RST='1') then
	      PWAIT <= '0';
	 elsif (CLK'event and CLK='1')then
			PWAIT <= (not(ASTRB)) and (not(DSTRB));         		
    end if;
   end process;


end rtl;
2
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:15 11/04/2014 
-- Design Name: 
-- Module Name:    cnt_epp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnt_epp is
  port (
    CLK      : in    std_logic;
    RST      : in    std_logic;
    ASTRB    : in    std_logic;
    DSTRB    : in    std_logic;
    DATA     : inout std_logic_vector(7 downto 0);
    PWRITE   : in    std_logic;
    PWAIT    : out   std_logic;
    DATO_RD  : in    std_logic_vector(7 downto 0);
    CE_RD    : out   std_logic;
    DIR      : out   std_logic_vector (7 downto 0);
    DIR_VLD  : out   std_logic;
    DATO     : out   std_logic_vector (7 downto 0);
    DATO_VLD : out   std_logic);
end ;

architecture rtl of cnt_epp is

   signal S1:std_logic; 
	signal S11:std_logic;
	signal Q:std_logic;
	
	signal S2:std_logic; 
	signal S22:std_logic;
	signal Q2:std_logic;
	
	
begin

------------------ADDRESS---------------------------------
   AddrBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q <= ASTRB;	      
    end if;
   end process;


   S1<= ASTRB and not Q;
	S11<=S1 and not PWRITE;
	
	
	AddrBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DIR_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DIR_VLD <= S11;	      
    end if;
   end process;
	
	
  AddrBiestableD3:process (CLK,RST,S11)
    begin
	 if (RST='1') then
	      DIR <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S11='1') then
		   DIR <= DATA;	     
         end if;			
    end if;
   end process;
	
	
   --tristate
	

DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='0')) else (others => 'Z');
------------------END ADDRESS----------------------------



-----------------DATA------------------------------------
	   DataBiestableD1:process (CLK,RST)
    begin
	 if (RST='1') then
	      Q2 <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   Q2 <= DSTRB;	      
    end if;
   end process;
	
	
	 S2<= DSTRB and not Q2;
	S22<=S2 and not PWRITE;

DataBiestableD2:process (CLK,RST)
    begin
	 if (RST='1') then
	      DATO_VLD <= '0';
	 elsif (CLK'event and CLK='1')then	    
		   DATO_VLD <= S22;	      
    end if;
   end process;
	
	
  DataBiestableD3:process (CLK,RST,S22)
    begin
	 if (RST='1') then
	      DATO <= (others=>'0');
	 elsif (CLK'event and CLK='1')then
			if (S22='1') then
		   DATO <= DATA;	     
         end if;			
    end if;
   end process;
	
	
 
	
DATA<= DATO_RD when ((PWRITE= '1') and (DSTRB='1')) else (others => 'Z');
	
--------------------END DATA----------------------------
  PWAITbiestableD:process (CLK,RST)
    begin
	 if (RST='1') then
	      PWAIT <= '0';
	 elsif (CLK'event and CLK='1')then
			PWAIT <= (not(ASTRB)) and (not(DSTRB));         		
    end if;
   end process;


end rtl;


t 705 t 5 180 305 260 330 0 8 d_info:,,,,,,,,,,,,,11, 
DSTRB_IN
t 701 t 5 30 305 110 330 0 9 d_info:,,,,,,,,,,,,,11, 
DSTRB_OUT
v 863 v 0 120 560 d_info:,0/128/0,,,4/1/6/6,,,,,,,,,, 
110 570
120 580
120 560
;
t 864 t 5 180 555 270 580 0 9 d_info:,,,,,,,,,,,,,11, 
CE_RD_OUT
v 774 v 0 120 500 d_info:,0/128/0,,,4/1/6/6,,,,,,,,,, 
110 510
120 520
120 500
;
t 700 t 5 100 495 40 520 0 8 d_info:,,,,,,,,,,,,,11, 
PWAIT_IN
t 704 t 5 250 495 180 520 0 9 d_info:,,,,,,,,,,,,,11, 
PWAIT_OUT
