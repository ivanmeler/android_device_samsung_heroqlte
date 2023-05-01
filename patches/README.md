bionic patch used in development
to be replaced with something like this
https://review.lineageos.org/c/LineageOS/android_device_xiaomi_msm8996-common/+/224764

log with patch applied bellow
```
*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***
LineageOS Version: '18.1-20230501-UNOFFICIAL-heroqlte'
Build fingerprint: 'samsung/heroqltezc/heroqltechn:8.0.0/R16NW/G9300ZCS5CTA1:user/release-keys'
Revision: '15'
ABI: 'arm'
Timestamp: 2023-05-01 20:56:06+0200
pid: 4163, tid: 4312, name: cameraserver  >>> /system/bin/cameraserver <<<
uid: 1047
signal 6 (SIGABRT), code -1 (SI_QUEUE), fault addr --------
Abort message: 'stack corruption detected (-fstack-protector)'
    r0  00000000  r1  000010d8  r2  00000006  r3  e797aef0
    r4  e797af04  r5  e797aee8  r6  00001043  r7  0000016b
    r8  e797aef0  r9  e797af00  r10 e797af20  r11 e797af10
    ip  000010d8  sp  e797aec0  lr  edbc3861  pc  edbc3874

backtrace:
      #00 pc 00038874  /apex/com.android.runtime/lib/bionic/libc.so (abort+172) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 000464f3  /apex/com.android.runtime/lib/bionic/libc.so (__stack_chk_fail+10) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 000bbed5  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCameraDisplay::vsyncEventReceiverCamera(int, int, void*)+72) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #03 pc 00011f15  /system/lib/libutils.so (android::Looper::pollInner(int)+696) (BuildId: 2fb179aed2791695f9ce7e382aa6e55e)
      #04 pc 00011c07  /system/lib/libutils.so (android::Looper::pollOnce(int, int*, int*, void**)+62) (BuildId: 2fb179aed2791695f9ce7e382aa6e55e)
      #05 pc 000bbb33  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCameraDisplay::vsyncThreadCamera(void*)+158) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #06 pc 0008175f  /apex/com.android.runtime/lib/bionic/libc.so (__pthread_start(void*)+40) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #07 pc 00039d85  /apex/com.android.runtime/lib/bionic/libc.so (__start_thread+30) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)

memory near r1:
    000010b8 -------- -------- -------- --------  ................
    000010c8 -------- -------- -------- --------  ................
    000010d8 -------- -------- -------- --------  ................
    000010e8 -------- -------- -------- --------  ................
    000010f8 -------- -------- -------- --------  ................
    00001108 -------- -------- -------- --------  ................
    00001118 -------- -------- -------- --------  ................
    00001128 -------- -------- -------- --------  ................
    00001138 -------- -------- -------- --------  ................
    00001148 -------- -------- -------- --------  ................
    00001158 -------- -------- -------- --------  ................
    00001168 -------- -------- -------- --------  ................
    00001178 -------- -------- -------- --------  ................
    00001188 -------- -------- -------- --------  ................
    00001198 -------- -------- -------- --------  ................
    000011a8 -------- -------- -------- --------  ................

memory near r3 ([anon:stack_and_tls:4312]):
    e797aed0 00000000 00000000 00000000 00000000  ................
    e797aee0 00000000 00000000 ffffffdf ffffffff  ................
    e797aef0 00000000 00000000 ffffffff 00001043  ............C...
    e797af00 00000417 00000000 00000000 00000000  ................
    e797af10 00000000 00000000 00000000 00000000  ................
    e797af20 00000000 00000000 00000000 00000000  ................
    e797af30 00000000 00000000 00000000 00000000  ................
    e797af40 00000000 00000000 00000000 00000000  ................
    e797af50 00000000 00000000 00000000 00000000  ................
    e797af60 00000000 00000000 00000000 00000000  ................
    e797af70 00000000 00000000 00000000 00000000  ................
    e797af80 0000000a ec885427 e7a82880 e797afb0  ....'T...(......
    e797af90 e7a828f4 7673796e eb101910 00000000  .(..nysv........
    e797afa0 0000000a edbd14f7 e7a828f4 e93eded9  .........(....>.
    e797afb0 7673796e 00000000 00000000 00000000  nysv............
    e797afc0 35b27f5e 000000ed 00003412 00000000  ^..5.....4......

memory near r4 ([anon:stack_and_tls:4312]):
    e797aee4 00000000 ffffffdf ffffffff 00000000  ................
    e797aef4 00000000 ffffffff 00001043 00000417  ........C.......
    e797af04 00000000 00000000 00000000 00000000  ................
    e797af14 00000000 00000000 00000000 00000000  ................
    e797af24 00000000 00000000 00000000 00000000  ................
    e797af34 00000000 00000000 00000000 00000000  ................
    e797af44 00000000 00000000 00000000 00000000  ................
    e797af54 00000000 00000000 00000000 00000000  ................
    e797af64 00000000 00000000 00000000 00000000  ................
    e797af74 00000000 00000000 00000000 0000000a  ................
    e797af84 ec885427 e7a82880 e797afb0 e7a828f4  'T...(.......(..
    e797af94 7673796e eb101910 00000000 0000000a  nysv............
    e797afa4 edbd14f7 e7a828f4 e93eded9 7673796e  .....(....>.nysv
    e797afb4 00000000 00000000 00000000 35b27f5e  ............^..5
    e797afc4 000000ed 00003412 00000000 36a6a35e  .....4......^..6
    e797afd4 000000ed 00000000 ee341b20 eb10195c  ........ .4.\...

memory near r5 ([anon:stack_and_tls:4312]):
    e797aec8 e797af50 e797af60 00000000 00000000  P...`...........
    e797aed8 00000000 00000000 00000000 00000000  ................
    e797aee8 ffffffdf ffffffff 00000000 00000000  ................
    e797aef8 ffffffff 00001043 00000417 00000000  ....C...........
    e797af08 00000000 00000000 00000000 00000000  ................
    e797af18 00000000 00000000 00000000 00000000  ................
    e797af28 00000000 00000000 00000000 00000000  ................
    e797af38 00000000 00000000 00000000 00000000  ................
    e797af48 00000000 00000000 00000000 00000000  ................
    e797af58 00000000 00000000 00000000 00000000  ................
    e797af68 00000000 00000000 00000000 00000000  ................
    e797af78 00000000 00000000 0000000a ec885427  ............'T..
    e797af88 e7a82880 e797afb0 e7a828f4 7673796e  .(.......(..nysv
    e797af98 eb101910 00000000 0000000a edbd14f7  ................
    e797afa8 e7a828f4 e93eded9 7673796e 00000000  .(....>.nysv....
    e797afb8 00000000 00000000 35b27f5e 000000ed  ........^..5....

memory near r6:
    00001020 -------- -------- -------- --------  ................
    00001030 -------- -------- -------- --------  ................
    00001040 -------- -------- -------- --------  ................
    00001050 -------- -------- -------- --------  ................
    00001060 -------- -------- -------- --------  ................
    00001070 -------- -------- -------- --------  ................
    00001080 -------- -------- -------- --------  ................
    00001090 -------- -------- -------- --------  ................
    000010a0 -------- -------- -------- --------  ................
    000010b0 -------- -------- -------- --------  ................
    000010c0 -------- -------- -------- --------  ................
    000010d0 -------- -------- -------- --------  ................
    000010e0 -------- -------- -------- --------  ................
    000010f0 -------- -------- -------- --------  ................
    00001100 -------- -------- -------- --------  ................
    00001110 -------- -------- -------- --------  ................

memory near r8 ([anon:stack_and_tls:4312]):
    e797aed0 00000000 00000000 00000000 00000000  ................
    e797aee0 00000000 00000000 ffffffdf ffffffff  ................
    e797aef0 00000000 00000000 ffffffff 00001043  ............C...
    e797af00 00000417 00000000 00000000 00000000  ................
    e797af10 00000000 00000000 00000000 00000000  ................
    e797af20 00000000 00000000 00000000 00000000  ................
    e797af30 00000000 00000000 00000000 00000000  ................
    e797af40 00000000 00000000 00000000 00000000  ................
    e797af50 00000000 00000000 00000000 00000000  ................
    e797af60 00000000 00000000 00000000 00000000  ................
    e797af70 00000000 00000000 00000000 00000000  ................
    e797af80 0000000a ec885427 e7a82880 e797afb0  ....'T...(......
    e797af90 e7a828f4 7673796e eb101910 00000000  .(..nysv........
    e797afa0 0000000a edbd14f7 e7a828f4 e93eded9  .........(....>.
    e797afb0 7673796e 00000000 00000000 00000000  nysv............
    e797afc0 35b27f5e 000000ed 00003412 00000000  ^..5.....4......

memory near r9 ([anon:stack_and_tls:4312]):
    e797aee0 00000000 00000000 ffffffdf ffffffff  ................
    e797aef0 00000000 00000000 ffffffff 00001043  ............C...
    e797af00 00000417 00000000 00000000 00000000  ................
    e797af10 00000000 00000000 00000000 00000000  ................
    e797af20 00000000 00000000 00000000 00000000  ................
    e797af30 00000000 00000000 00000000 00000000  ................
    e797af40 00000000 00000000 00000000 00000000  ................
    e797af50 00000000 00000000 00000000 00000000  ................
    e797af60 00000000 00000000 00000000 00000000  ................
    e797af70 00000000 00000000 00000000 00000000  ................
    e797af80 0000000a ec885427 e7a82880 e797afb0  ....'T...(......
    e797af90 e7a828f4 7673796e eb101910 00000000  .(..nysv........
    e797afa0 0000000a edbd14f7 e7a828f4 e93eded9  .........(....>.
    e797afb0 7673796e 00000000 00000000 00000000  nysv............
    e797afc0 35b27f5e 000000ed 00003412 00000000  ^..5.....4......
    e797afd0 36a6a35e 000000ed 00000000 ee341b20  ^..6........ .4.

memory near r10 ([anon:stack_and_tls:4312]):
    e797af00 00000417 00000000 00000000 00000000  ................
    e797af10 00000000 00000000 00000000 00000000  ................
    e797af20 00000000 00000000 00000000 00000000  ................
    e797af30 00000000 00000000 00000000 00000000  ................
    e797af40 00000000 00000000 00000000 00000000  ................
    e797af50 00000000 00000000 00000000 00000000  ................
    e797af60 00000000 00000000 00000000 00000000  ................
    e797af70 00000000 00000000 00000000 00000000  ................
    e797af80 0000000a ec885427 e7a82880 e797afb0  ....'T...(......
    e797af90 e7a828f4 7673796e eb101910 00000000  .(..nysv........
    e797afa0 0000000a edbd14f7 e7a828f4 e93eded9  .........(....>.
    e797afb0 7673796e 00000000 00000000 00000000  nysv............
    e797afc0 35b27f5e 000000ed 00003412 00000000  ^..5.....4......
    e797afd0 36a6a35e 000000ed 00000000 ee341b20  ^..6........ .4.
    e797afe0 eb10195c ebd7af17 e797b0c0 ebd71d0c  \...............
    e797aff0 ebd72191 e797b01c edc1a124 ebd71b0b  .!......$.......

memory near r11 ([anon:stack_and_tls:4312]):
    e797aef0 00000000 00000000 ffffffff 00001043  ............C...
    e797af00 00000417 00000000 00000000 00000000  ................
    e797af10 00000000 00000000 00000000 00000000  ................
    e797af20 00000000 00000000 00000000 00000000  ................
    e797af30 00000000 00000000 00000000 00000000  ................
    e797af40 00000000 00000000 00000000 00000000  ................
    e797af50 00000000 00000000 00000000 00000000  ................
    e797af60 00000000 00000000 00000000 00000000  ................
    e797af70 00000000 00000000 00000000 00000000  ................
    e797af80 0000000a ec885427 e7a82880 e797afb0  ....'T...(......
    e797af90 e7a828f4 7673796e eb101910 00000000  .(..nysv........
    e797afa0 0000000a edbd14f7 e7a828f4 e93eded9  .........(....>.
    e797afb0 7673796e 00000000 00000000 00000000  nysv............
    e797afc0 35b27f5e 000000ed 00003412 00000000  ^..5.....4......
    e797afd0 36a6a35e 000000ed 00000000 ee341b20  ^..6........ .4.
    e797afe0 eb10195c ebd7af17 e797b0c0 ebd71d0c  \...............

memory near ip:
    000010b8 -------- -------- -------- --------  ................
    000010c8 -------- -------- -------- --------  ................
    000010d8 -------- -------- -------- --------  ................
    000010e8 -------- -------- -------- --------  ................
    000010f8 -------- -------- -------- --------  ................
    00001108 -------- -------- -------- --------  ................
    00001118 -------- -------- -------- --------  ................
    00001128 -------- -------- -------- --------  ................
    00001138 -------- -------- -------- --------  ................
    00001148 -------- -------- -------- --------  ................
    00001158 -------- -------- -------- --------  ................
    00001168 -------- -------- -------- --------  ................
    00001178 -------- -------- -------- --------  ................
    00001188 -------- -------- -------- --------  ................
    00001198 -------- -------- -------- --------  ................
    000011a8 -------- -------- -------- --------  ................

memory near sp ([anon:stack_and_tls:4312]):
    e797aea0 00000000 ec885427 ec885427 e797aee8  ....'T..'T......
    e797aeb0 ec885427 e797aee8 00001043 e7a828f4  'T......C....(..
    e797aec0 e797af30 e797af40 e797af50 e797af60  0...@...P...`...
    e797aed0 00000000 00000000 00000000 00000000  ................
    e797aee0 00000000 00000000 ffffffdf ffffffff  ................
    e797aef0 00000000 00000000 ffffffff 00001043  ............C...
    e797af00 00000417 00000000 00000000 00000000  ................
    e797af10 00000000 00000000 00000000 00000000  ................
    e797af20 00000000 00000000 00000000 00000000  ................
    e797af30 00000000 00000000 00000000 00000000  ................
    e797af40 00000000 00000000 00000000 00000000  ................
    e797af50 00000000 00000000 00000000 00000000  ................
    e797af60 00000000 00000000 00000000 00000000  ................
    e797af70 00000000 00000000 00000000 00000000  ................
    e797af80 0000000a ec885427 e7a82880 e797afb0  ....'T...(......
    e797af90 e7a828f4 7673796e eb101910 00000000  .(..nysv........

memory near lr (/apex/com.android.runtime/lib/bionic/libc.so):
    edbc3840 20148acf 8ac0f904 30fff04f 8acff90a  ... ....O..0....
    edbc3850 8acff90b 8acff909 900e960f efa8f04e  ............N...
    edbc3860 90102100 46306021 22064639 f2404643  .!..!`0F9F."CF@.
    edbc3870 df00176b a9044821 460a4478 0acdf960  k...!H..xD.F`...
    edbc3880 0acdf942 60106800 22002006 e988f04f  B....h.`. ."O...
    edbc3890 46292002 f04f2200 2014e8f4 ef28f04e  . )F."O.... N.(.
    edbc38a0 20e04605 ef24f04e 98034606 f90a4644  .F. N.$..F..DF..
    edbc38b0 f9008acf 98028acf 8acff90b 8acff900  ................
    edbc38c0 f9099801 f9008acf 98008acf 8acff900  ................
    edbc38d0 f9042014 f04f8ac0 950f30ff f04e900e  . ....O..0....N.
    edbc38e0 2100ef68 60219010 46314628 46432206  h..!..!`(F1F."CF
    edbc38f0 176bf240 207fdf00 e95af04f fffe957c  @.k.... O.Z.|...
    edbc3900 f04e2300 460ab99d f06f4601 23000063  .#N....F.Fo.c..#
    edbc3910 b99cf04e b082b510 4479490b 6821680c  N........IyD.h!h
    edbc3920 21009101 46699100 e95af04f 28009900  ...!..iFO.Z....(
    edbc3930 f04fbf08 980131ff 1a106822 ba08d102  ..O..1.."h......

memory near pc (/apex/com.android.runtime/lib/bionic/libc.so):
    edbc3854 8acff909 900e960f efa8f04e 90102100  ........N....!..
    edbc3864 46306021 22064639 f2404643 df00176b  !`0F9F."CF@.k...
    edbc3874 a9044821 460a4478 0acdf960 0acdf942  !H..xD.F`...B...
    edbc3884 60106800 22002006 e988f04f 46292002  .h.`. ."O.... )F
    edbc3894 f04f2200 2014e8f4 ef28f04e 20e04605  ."O.... N.(..F. 
    edbc38a4 ef24f04e 98034606 f90a4644 f9008acf  N.$..F..DF......
    edbc38b4 98028acf 8acff90b 8acff900 f9099801  ................
    edbc38c4 f9008acf 98008acf 8acff900 f9042014  ............. ..
    edbc38d4 f04f8ac0 950f30ff f04e900e 2100ef68  ..O..0....N.h..!
    edbc38e4 60219010 46314628 46432206 176bf240  ..!`(F1F."CF@.k.
    edbc38f4 207fdf00 e95af04f fffe957c f04e2300  ... O.Z.|....#N.
    edbc3904 460ab99d f06f4601 23000063 b99cf04e  ...F.Fo.c..#N...
    edbc3914 b082b510 4479490b 6821680c 21009101  .....IyD.h!h...!
    edbc3924 46699100 e95af04f 28009900 f04fbf08  ..iFO.Z....(..O.
    edbc3934 980131ff 1a106822 ba08d102 bd10b002  .1.."h..........
    edbc3944 ed44f04e 0005348e b082b510 4479490b  N.D..4.......IyD

memory map (1001 entries):
    af751000-af751fff r--         0      1000  /system/bin/cameraserver (BuildId: 3ce6a9b8517f1c13a31bfe4241e6e3) (load bias 0x1000)
    af752000-af752fff r-x         0      1000  /system/bin/cameraserver (BuildId: 3ce6a9b8517f1c13a31bfe4241e6e3) (load bias 0x1000)
    af753000-af753fff r--         0      1000  /system/bin/cameraserver (BuildId: 3ce6a9b8517f1c13a31bfe4241e6e3) (load bias 0x1000)
    e6dcb000-e6e89fff rw-         0     bf000  anon_inode:dmabuf
    e6e8a000-e6f48fff rw-         0     bf000  anon_inode:dmabuf
    e6f49000-e7007fff rw-         0     bf000  anon_inode:dmabuf
    e7008000-e70c6fff rw-         0     bf000  anon_inode:dmabuf
    e70c7000-e7185fff rw-         0     bf000  anon_inode:dmabuf
    e7186000-e7244fff rw-         0     bf000  anon_inode:dmabuf
    e7245000-e7303fff rw-         0     bf000  anon_inode:dmabuf
    e7304000-e73c2fff rw-         0     bf000  anon_inode:dmabuf
    e73c3000-e7481fff rw-         0     bf000  anon_inode:dmabuf
    e7482000-e7540fff rw-         0     bf000  anon_inode:dmabuf
    e7541000-e75fffff rw-         0     bf000  anon_inode:dmabuf
    e7600000-e763ffff rw-         0     40000  [anon:scudo:primary]
    e7649000-e7650fff r--         0      8000  /system/system_ext/lib/vendor.qti.hardware.perf@1.0.so (BuildId: e76d0dfe186b664c308052234f4a28) (load bias 0x1000)
    e7651000-e7658fff r-x      7000      8000  /system/system_ext/lib/vendor.qti.hardware.perf@1.0.so (BuildId: e76d0dfe186b664c308052234f4a28) (load bias 0x1000)
    e7659000-e765afff r--      e000      2000  /system/system_ext/lib/vendor.qti.hardware.perf@1.0.so (BuildId: e76d0dfe186b664c308052234f4a28) (load bias 0x1000)
    e765b000-e765bfff rw-      f000      1000  /system/system_ext/lib/vendor.qti.hardware.perf@1.0.so (BuildId: e76d0dfe186b664c308052234f4a28) (load bias 0x1000)
    e769b000-e769bfff r--         0      1000  /system/lib/libhidltransport.so (BuildId: c117839084beb33a304039342e5b3f) (load bias 0x1000)
    e769c000-e769cfff r-x         0      1000  /system/lib/libhidltransport.so (BuildId: c117839084beb33a304039342e5b3f) (load bias 0x1000)
    e769d000-e769dfff r--         0      1000  /system/lib/libhidltransport.so (BuildId: c117839084beb33a304039342e5b3f) (load bias 0x1000)
    e76f1000-e76f5fff r-x         0      5000  /system/vendor/lib/libqti-perfd-client.so (BuildId: 611ac7a83eeeb80349f81e916987f6)
    e76f6000-e76f6fff r--      4000      1000  /system/vendor/lib/libqti-perfd-client.so (BuildId: 611ac7a83eeeb80349f81e916987f6)
    e76f7000-e76f7fff rw-      5000      1000  /system/vendor/lib/libqti-perfd-client.so (BuildId: 611ac7a83eeeb80349f81e916987f6)
    e771e000-e771efff r--         0      1000  /system/vendor/lib/hw/power.default.so (BuildId: f256170c173f5d9de7aad7232b8bad) (load bias 0x1000)
    e771f000-e771ffff r-x         0      1000  /system/vendor/lib/hw/power.default.so (BuildId: f256170c173f5d9de7aad7232b8bad) (load bias 0x1000)
    e7720000-e7720fff r--         0      1000  /system/vendor/lib/hw/power.default.so (BuildId: f256170c173f5d9de7aad7232b8bad) (load bias 0x1000)
    e7721000-e7721fff rw-         0      1000  /system/vendor/lib/hw/power.default.so (BuildId: f256170c173f5d9de7aad7232b8bad) (load bias 0x1000)
    e777d000-e777dfff ---         0      1000
    e777e000-e787cfff rw-         0     ff000  [anon:stack_and_tls:4313]
    e787d000-e787efff ---         0      2000
    e787f000-e797dfff rw-         0     ff000  [anon:stack_and_tls:4312]
    e797e000-e797ffff ---         0      2000
    e7980000-e7a7efff rw-         0     ff000  [anon:stack_and_tls:4311]
    e7a7f000-e7a7ffff ---         0      1000
    e7a80000-e7ebffff rw-         0    440000  [anon:scudo:primary]
    e7ec2000-e7eeefff r--         0     2d000  /system/lib/libdng_sdk.so (BuildId: bea2591c9e43e7629097951227627c) (load bias 0x1000)
    e7eef000-e7f47fff r-x     2c000     59000  /system/lib/libdng_sdk.so (BuildId: bea2591c9e43e7629097951227627c) (load bias 0x1000)
    e7f48000-e7f4bfff r--     84000      4000  /system/lib/libdng_sdk.so (BuildId: bea2591c9e43e7629097951227627c) (load bias 0x1000)
    e7f4c000-e7f4cfff rw-     87000      1000  /system/lib/libdng_sdk.so (BuildId: bea2591c9e43e7629097951227627c) (load bias 0x1000)
    e7f4d000-e7f4dfff rw-         0      1000  [anon:.bss]
    e7fa2000-e7fabfff r--         0      a000  /system/lib/libvulkan.so (BuildId: c7183a5bbab858d7d94869eb833ad8) (load bias 0x1000)
    e7fac000-e7fbbfff r-x      9000     10000  /system/lib/libvulkan.so (BuildId: c7183a5bbab858d7d94869eb833ad8) (load bias 0x1000)
    e7fbc000-e7fbcfff r--     18000      1000  /system/lib/libvulkan.so (BuildId: c7183a5bbab858d7d94869eb833ad8) (load bias 0x1000)
    e7fbd000-e7fbdfff rw-     18000      1000  /system/lib/libvulkan.so (BuildId: c7183a5bbab858d7d94869eb833ad8) (load bias 0x1000)
    e7fc9000-e7fe9fff r-x         0     21000  /system/vendor/lib/libts_face_beautify_hal.so
    e7fea000-e7feafff r--     20000      1000  /system/vendor/lib/libts_face_beautify_hal.so
    e7feb000-e7fecfff rw-     21000      2000  /system/vendor/lib/libts_face_beautify_hal.so
    e802a000-e802cfff r--         0      3000  /system/lib/libheif.so (BuildId: f6c0ec20de5622597739af722429a1) (load bias 0x1000)
    e802d000-e802ffff r-x      2000      3000  /system/lib/libheif.so (BuildId: f6c0ec20de5622597739af722429a1) (load bias 0x1000)
    e8030000-e8030fff r--      4000      1000  /system/lib/libheif.so (BuildId: f6c0ec20de5622597739af722429a1) (load bias 0x1000)
    e8066000-e806dfff r--         0      8000  /system/lib/libsensor.so (BuildId: d4891ced498f71bcf030d1793c5154) (load bias 0x1000)
    e806e000-e8073fff r-x      7000      6000  /system/lib/libsensor.so (BuildId: d4891ced498f71bcf030d1793c5154) (load bias 0x1000)
    e8074000-e8075fff r--      c000      2000  /system/lib/libsensor.so (BuildId: d4891ced498f71bcf030d1793c5154) (load bias 0x1000)
    e8076000-e8077fff rw-      d000      2000  /system/lib/libsensor.so (BuildId: d4891ced498f71bcf030d1793c5154) (load bias 0x1000)
    e809c000-e80a5fff r--         0      a000  /system/lib/libminikin.so (BuildId: 3ac01ee0a0545d51a5ac9724607bf7) (load bias 0x1000)
    e80a6000-e80b9fff r-x      9000     14000  /system/lib/libminikin.so (BuildId: 3ac01ee0a0545d51a5ac9724607bf7) (load bias 0x1000)
    e80ba000-e80bbfff r--     1c000      2000  /system/lib/libminikin.so (BuildId: 3ac01ee0a0545d51a5ac9724607bf7) (load bias 0x1000)
    e80bc000-e80bcfff rw-     1d000      1000  /system/lib/libminikin.so (BuildId: 3ac01ee0a0545d51a5ac9724607bf7) (load bias 0x1000)
    e80f8000-e80f8fff r--         0      1000  /system/lib/libstdc++.so (BuildId: 9c1f0a32d5b662a94f5b15c05b58fa) (load bias 0x1000)
    e80f9000-e80fafff r-x         0      2000  /system/lib/libstdc++.so (BuildId: 9c1f0a32d5b662a94f5b15c05b58fa) (load bias 0x1000)
    e80fb000-e80fbfff r--      1000      1000  /system/lib/libstdc++.so (BuildId: 9c1f0a32d5b662a94f5b15c05b58fa) (load bias 0x1000)
    e811f000-e8122fff r--         0      4000  /system/lib/libdataloader.so (BuildId: 618fc461a82646f28eb924333a09e5) (load bias 0x1000)
    e8123000-e8129fff r-x      3000      7000  /system/lib/libdataloader.so (BuildId: 618fc461a82646f28eb924333a09e5) (load bias 0x1000)
    e812a000-e812bfff r--      9000      2000  /system/lib/libdataloader.so (BuildId: 618fc461a82646f28eb924333a09e5) (load bias 0x1000)
    e812c000-e812cfff rw-      a000      1000  /system/lib/libdataloader.so (BuildId: 618fc461a82646f28eb924333a09e5) (load bias 0x1000)
    e8169000-e816bfff r-x         0      3000  /system/lib/libuniapi.so (BuildId: ff4fb3cc5bcde8827c44bcde8b3540)
    e816c000-e816cfff ---         0      1000
    e816d000-e816dfff r--      3000      1000  /system/lib/libuniapi.so (BuildId: ff4fb3cc5bcde8827c44bcde8b3540)
    e816e000-e816efff rw-      4000      1000  /system/lib/libuniapi.so (BuildId: ff4fb3cc5bcde8827c44bcde8b3540)
    e81aa000-e81adfff r--         0      4000  /system/lib/libhidl-gen-utils.so (BuildId: d5802bef9d0ffc2d0972d89dcfc04b) (load bias 0x1000)
    e81ae000-e81b3fff r-x      3000      6000  /system/lib/libhidl-gen-utils.so (BuildId: d5802bef9d0ffc2d0972d89dcfc04b) (load bias 0x1000)
    e81b4000-e81b4fff r--      8000      1000  /system/lib/libhidl-gen-utils.so (BuildId: d5802bef9d0ffc2d0972d89dcfc04b) (load bias 0x1000)
    e81c5000-e81cafff r--         0      6000  /system/lib/libnativedisplay.so (BuildId: 54302bf1789bebc1c7a3ac833bf07f) (load bias 0x1000)
    e81cb000-e81d1fff r-x      5000      7000  /system/lib/libnativedisplay.so (BuildId: 54302bf1789bebc1c7a3ac833bf07f) (load bias 0x1000)
    e81d2000-e81d2fff r--      b000      1000  /system/lib/libnativedisplay.so (BuildId: 54302bf1789bebc1c7a3ac833bf07f) (load bias 0x1000)
    e81d3000-e81d3fff rw-      b000      1000  /system/lib/libnativedisplay.so (BuildId: 54302bf1789bebc1c7a3ac833bf07f) (load bias 0x1000)
    e8225000-e8227fff r--         0      3000  /system/lib/libbpf.so (BuildId: 078838023e3887462c765214da15d4) (load bias 0x1000)
    e8228000-e822bfff r-x      2000      4000  /system/lib/libbpf.so (BuildId: 078838023e3887462c765214da15d4) (load bias 0x1000)
    e822c000-e822dfff r--      5000      2000  /system/lib/libbpf.so (BuildId: 078838023e3887462c765214da15d4) (load bias 0x1000)
    e8260000-e8264fff r--         0      5000  /system/lib/libziparchive.so (BuildId: af1a482caea1f2421b63bd895f93d2) (load bias 0x1000)
    e8265000-e826afff r-x      4000      6000  /system/lib/libziparchive.so (BuildId: af1a482caea1f2421b63bd895f93d2) (load bias 0x1000)
    e826b000-e826bfff r--      9000      1000  /system/lib/libziparchive.so (BuildId: af1a482caea1f2421b63bd895f93d2) (load bias 0x1000)
    e829b000-e829ffff r--         0      5000  /system/vendor/lib/libqservice.so (BuildId: 5080c004048f9fcf44f3b1d06c98ff) (load bias 0x1000)
    e82a0000-e82a1fff r-x      4000      2000  /system/vendor/lib/libqservice.so (BuildId: 5080c004048f9fcf44f3b1d06c98ff) (load bias 0x1000)
    e82a2000-e82a4fff r--      5000      3000  /system/vendor/lib/libqservice.so (BuildId: 5080c004048f9fcf44f3b1d06c98ff) (load bias 0x1000)
    e82a5000-e82a5fff rw-      7000      1000  /system/vendor/lib/libqservice.so (BuildId: 5080c004048f9fcf44f3b1d06c98ff) (load bias 0x1000)
    e82c3000-e82cafff r--         0      8000  /system/lib/libincfs.so (BuildId: 26fb8e0799a1da76009d2c77c94566) (load bias 0x1000)
    e82cb000-e82d9fff r-x      7000      f000  /system/lib/libincfs.so (BuildId: 26fb8e0799a1da76009d2c77c94566) (load bias 0x1000)
    e82da000-e82dafff r--     15000      1000  /system/lib/libincfs.so (BuildId: 26fb8e0799a1da76009d2c77c94566) (load bias 0x1000)
    e82db000-e82dbfff rw-     15000      1000  /system/lib/libincfs.so (BuildId: 26fb8e0799a1da76009d2c77c94566) (load bias 0x1000)
    e8303000-e8516fff r--         0    214000  /system/lib/libpdfium.so (BuildId: 60df250b50712b017c9d56e3e8adbb) (load bias 0x1000)
    e8517000-e875efff r-x    213000    248000  /system/lib/libpdfium.so (BuildId: 60df250b50712b017c9d56e3e8adbb) (load bias 0x1000)
    e875f000-e876afff r--    45a000      c000  /system/lib/libpdfium.so (BuildId: 60df250b50712b017c9d56e3e8adbb) (load bias 0x1000)
    e876b000-e876efff rw-    465000      4000  /system/lib/libpdfium.so (BuildId: 60df250b50712b017c9d56e3e8adbb) (load bias 0x1000)
    e876f000-e8771fff rw-         0      3000  [anon:.bss]
    e879c000-e8827fff r--         0     8c000  /system/vendor/lib/libfastcvopt.so (BuildId: c38f73ffe7b6b3006c49805792e2b8)
    e8828000-e8aaffff r-x     8c000    288000  /system/vendor/lib/libfastcvopt.so (BuildId: c38f73ffe7b6b3006c49805792e2b8)
    e8ab0000-e8d96fff rw-    314000    2e7000  /system/vendor/lib/libfastcvopt.so (BuildId: c38f73ffe7b6b3006c49805792e2b8)
    e8d97000-e8d9afff r--    5fb000      4000  /system/vendor/lib/libfastcvopt.so (BuildId: c38f73ffe7b6b3006c49805792e2b8)
    e8d9b000-e8dbbfff rw-         0     21000  [anon:.bss]
    e8dcd000-e8e02fff r--         0     36000  /system/lib/libcrypto.so (BuildId: 2f03399683a8e8f3241d4d13506a57) (load bias 0x1000)
    e8e03000-e8e87fff r-x     35000     85000  /system/lib/libcrypto.so (BuildId: 2f03399683a8e8f3241d4d13506a57) (load bias 0x1000)
    e8e88000-e8e90fff r--     b9000      9000  /system/lib/libcrypto.so (BuildId: 2f03399683a8e8f3241d4d13506a57) (load bias 0x1000)
    e8e91000-e8e91fff rw-     c1000      1000  /system/lib/libcrypto.so (BuildId: 2f03399683a8e8f3241d4d13506a57) (load bias 0x1000)
    e8e92000-e8e92fff rw-         0      1000  [anon:.bss]
    e8ec5000-e8ec6fff r--         0      2000  /system/lib/libhardware_legacy.so (BuildId: 0b7eb15bdbfbc784aa1aaaf83a7aa7) (load bias 0x1000)
    e8ec7000-e8ec8fff r-x      1000      2000  /system/lib/libhardware_legacy.so (BuildId: 0b7eb15bdbfbc784aa1aaaf83a7aa7) (load bias 0x1000)
    e8ec9000-e8ecafff r--      2000      2000  /system/lib/libhardware_legacy.so (BuildId: 0b7eb15bdbfbc784aa1aaaf83a7aa7) (load bias 0x1000)
    e8ecb000-e8ecbfff rw-      3000      1000  /system/lib/libhardware_legacy.so (BuildId: 0b7eb15bdbfbc784aa1aaaf83a7aa7) (load bias 0x1000)
    e8f1e000-e8f23fff r--         0      6000  /system/lib/libpowermanager.so (BuildId: 89c17155369d75ec69fc15a468148c) (load bias 0x1000)
    e8f24000-e8f28fff r-x      5000      5000  /system/lib/libpowermanager.so (BuildId: 89c17155369d75ec69fc15a468148c) (load bias 0x1000)
    e8f29000-e8f2bfff r--      9000      3000  /system/lib/libpowermanager.so (BuildId: 89c17155369d75ec69fc15a468148c) (load bias 0x1000)
    e8f2c000-e8f2cfff rw-      b000      1000  /system/lib/libpowermanager.so (BuildId: 89c17155369d75ec69fc15a468148c) (load bias 0x1000)
    e8f5d000-e8fc1fff r--         0     65000  /system/lib/libandroid_runtime.so (BuildId: 81436fcb982e92e3f0f151e05d3425) (load bias 0x1000)
    e8fc2000-e906dfff r-x     64000     ac000  /system/lib/libandroid_runtime.so (BuildId: 81436fcb982e92e3f0f151e05d3425) (load bias 0x1000)
    e906e000-e9079fff r--    10f000      c000  /system/lib/libandroid_runtime.so (BuildId: 81436fcb982e92e3f0f151e05d3425) (load bias 0x1000)
    e907a000-e907bfff rw-    11a000      2000  /system/lib/libandroid_runtime.so (BuildId: 81436fcb982e92e3f0f151e05d3425) (load bias 0x1000)
    e907c000-e907cfff rw-         0      1000  [anon:.bss]
    e9085000-e90a6fff r--         0     22000  /system/lib/libharfbuzz_ng.so (BuildId: cafbcd7f7056e2daf222f33495252e) (load bias 0x1000)
    e90a7000-e912dfff r-x     21000     87000  /system/lib/libharfbuzz_ng.so (BuildId: cafbcd7f7056e2daf222f33495252e) (load bias 0x1000)
    e912e000-e912efff r--     a7000      1000  /system/lib/libharfbuzz_ng.so (BuildId: cafbcd7f7056e2daf222f33495252e) (load bias 0x1000)
    e912f000-e912ffff rw-     a7000      1000  /system/lib/libharfbuzz_ng.so (BuildId: cafbcd7f7056e2daf222f33495252e) (load bias 0x1000)
    e9130000-e9130fff rw-         0      1000  [anon:.bss]
    e9165000-e9166fff r--         0      2000  /system/lib/libusbhost.so (BuildId: 9bb3c4bec6463e7aafd1e106292895) (load bias 0x1000)
    e9167000-e9168fff r-x      1000      2000  /system/lib/libusbhost.so (BuildId: 9bb3c4bec6463e7aafd1e106292895) (load bias 0x1000)
    e9169000-e9169fff r--      2000      1000  /system/lib/libusbhost.so (BuildId: 9bb3c4bec6463e7aafd1e106292895) (load bias 0x1000)
    e9192000-e91aafff r-x         0     19000  /system/vendor/lib/libmmcamera_interface.so (BuildId: 9f475d035ff525e57c9ce49f2fc642)
    e91ab000-e91abfff ---         0      1000
    e91ac000-e91acfff r--     19000      1000  /system/vendor/lib/libmmcamera_interface.so (BuildId: 9f475d035ff525e57c9ce49f2fc642)
    e91ad000-e91adfff rw-     1a000      1000  /system/vendor/lib/libmmcamera_interface.so (BuildId: 9f475d035ff525e57c9ce49f2fc642)
    e91d5000-e91e1fff r--         0      d000  /system/lib/libmediadrm.so (BuildId: 016b016701e13e71f86e1b58df8655) (load bias 0x1000)
    e91e2000-e91f2fff r-x      c000     11000  /system/lib/libmediadrm.so (BuildId: 016b016701e13e71f86e1b58df8655) (load bias 0x1000)
    e91f3000-e91f4fff r--     1c000      2000  /system/lib/libmediadrm.so (BuildId: 016b016701e13e71f86e1b58df8655) (load bias 0x1000)
    e91f5000-e91f5fff rw-     1d000      1000  /system/lib/libmediadrm.so (BuildId: 016b016701e13e71f86e1b58df8655) (load bias 0x1000)
    e921f000-e922ffff r-x         0     11000  /system/vendor/lib/libmmjpeg_interface.so (BuildId: 17b9ebc4cdfdae6aa0954b2d26c9e0)
    e9230000-e9230fff r--     10000      1000  /system/vendor/lib/libmmjpeg_interface.so (BuildId: 17b9ebc4cdfdae6aa0954b2d26c9e0)
    e9231000-e9231fff rw-     11000      1000  /system/vendor/lib/libmmjpeg_interface.so (BuildId: 17b9ebc4cdfdae6aa0954b2d26c9e0)
    e9265000-e926bfff r-x         0      7000  /system/lib/libsensorlistener.so (BuildId: ca749e0ec4abdbe52a2e8661562bfe)
    e926c000-e926cfff ---         0      1000
    e926d000-e926dfff r--      7000      1000  /system/lib/libsensorlistener.so (BuildId: ca749e0ec4abdbe52a2e8661562bfe)
    e926e000-e926efff rw-      8000      1000  /system/lib/libsensorlistener.so (BuildId: ca749e0ec4abdbe52a2e8661562bfe)
    e9282000-e9283fff r--         0      2000  /apex/com.android.art/lib/libnativehelper.so (BuildId: f85c9cd808b82f019734115f57d205) (load bias 0x1000)
    e9284000-e9286fff r-x      1000      3000  /apex/com.android.art/lib/libnativehelper.so (BuildId: f85c9cd808b82f019734115f57d205) (load bias 0x1000)
    e9287000-e9287fff r--      3000      1000  /apex/com.android.art/lib/libnativehelper.so (BuildId: f85c9cd808b82f019734115f57d205) (load bias 0x1000)
    e9288000-e9288fff rw-      3000      1000  /apex/com.android.art/lib/libnativehelper.so (BuildId: f85c9cd808b82f019734115f57d205) (load bias 0x1000)
    e92da000-e92dcfff r--         0      3000  /system/lib/libdebuggerd_client.so (BuildId: eaee557e78d6f43655ffab4344d557) (load bias 0x1000)
    e92dd000-e92e1fff r-x      2000      5000  /system/lib/libdebuggerd_client.so (BuildId: eaee557e78d6f43655ffab4344d557) (load bias 0x1000)
    e92e2000-e92e2fff r--      6000      1000  /system/lib/libdebuggerd_client.so (BuildId: eaee557e78d6f43655ffab4344d557) (load bias 0x1000)
    e9333000-e9450fff r-x         0    11e000  /system/vendor/lib/hw/camera.msm8996.so (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73) (load bias 0x1000)
    e9451000-e9451fff ---         0      1000
    e9452000-e9455fff r--    11e000      4000  /system/vendor/lib/hw/camera.msm8996.so (BuildId: a8ad8c7abbd23d6fa46ae262cb240b) (load bias 0x1000)
    e9456000-e94b8fff rw-    122000     63000  /system/vendor/lib/hw/camera.msm8996.so (BuildId: a8ad8c7abbd23d6fa46ae262cb240b) (load bias 0x1000)
    e94b9000-e94b9fff rw-         0      1000  [anon:.bss]
    e94ed000-e94edfff r--         0      1000  /system/lib/libmedia_jni_utils.so (BuildId: dd4fd4cc0c9824295c7d4bb9dfddbb) (load bias 0x1000)
    e94ee000-e94effff r-x         0      2000  /system/lib/libmedia_jni_utils.so (BuildId: dd4fd4cc0c9824295c7d4bb9dfddbb) (load bias 0x1000)
    e94f0000-e94f0fff r--      1000      1000  /system/lib/libmedia_jni_utils.so (BuildId: dd4fd4cc0c9824295c7d4bb9dfddbb) (load bias 0x1000)
    e9501000-e95f2fff r--         0     f2000  /system/lib/libhwui.so (BuildId: 288de00354b6513c223b078d2d60e1) (load bias 0x1000)
    e95f3000-e9a7dfff r-x     f1000    48b000  /system/lib/libhwui.so (BuildId: 288de00354b6513c223b078d2d60e1) (load bias 0x1000)
    e9a7e000-e9a94fff r--    57b000     17000  /system/lib/libhwui.so (BuildId: 288de00354b6513c223b078d2d60e1) (load bias 0x1000)
    e9a95000-e9a96fff rw-    591000      2000  /system/lib/libhwui.so (BuildId: 288de00354b6513c223b078d2d60e1) (load bias 0x1000)
    e9a97000-e9a9afff rw-         0      4000  [anon:.bss]
    e9ae1000-e9ae4fff r-x         0      4000  /system/lib/libuniplugin.so (BuildId: f28f207f3884c85c62a46de2c135fe)
    e9ae5000-e9ae5fff r--      3000      1000  /system/lib/libuniplugin.so (BuildId: f28f207f3884c85c62a46de2c135fe)
    e9ae6000-e9ae6fff rw-      4000      1000  /system/lib/libuniplugin.so (BuildId: f28f207f3884c85c62a46de2c135fe)
    e9b27000-e9b37fff r--         0     11000  /system/lib/libsqlite.so (BuildId: 8f34ae3efc4311f602654e2ee24854) (load bias 0x1000)
    e9b38000-e9bf6fff r-x     10000     bf000  /system/lib/libsqlite.so (BuildId: 8f34ae3efc4311f602654e2ee24854) (load bias 0x1000)
    e9bf7000-e9bf9fff r--     ce000      3000  /system/lib/libsqlite.so (BuildId: 8f34ae3efc4311f602654e2ee24854) (load bias 0x1000)
    e9bfa000-e9bfbfff rw-     d0000      2000  /system/lib/libsqlite.so (BuildId: 8f34ae3efc4311f602654e2ee24854) (load bias 0x1000)
    e9c29000-e9c29fff r--         0      1000  /apex/com.android.os.statsd/lib/libstatssocket.so (BuildId: 5c5d96cc7d091e240e872aca24c4d1) (load bias 0x1000)
    e9c2a000-e9c2cfff r-x         0      3000  /apex/com.android.os.statsd/lib/libstatssocket.so (BuildId: 5c5d96cc7d091e240e872aca24c4d1) (load bias 0x1000)
    e9c2d000-e9c2dfff r--      2000      1000  /apex/com.android.os.statsd/lib/libstatssocket.so (BuildId: 5c5d96cc7d091e240e872aca24c4d1) (load bias 0x1000)
    e9c2e000-e9c2efff rw-      2000      1000  /apex/com.android.os.statsd/lib/libstatssocket.so (BuildId: 5c5d96cc7d091e240e872aca24c4d1) (load bias 0x1000)
    e9c66000-e9c6bfff r--         0      6000  /system/lib/libimg_utils.so (BuildId: 27b96ce00b61c8b5f1c7e4453b5b82) (load bias 0x1000)
    e9c6c000-e9c72fff r-x      5000      7000  /system/lib/libimg_utils.so (BuildId: 27b96ce00b61c8b5f1c7e4453b5b82) (load bias 0x1000)
    e9c73000-e9c74fff r--      b000      2000  /system/lib/libimg_utils.so (BuildId: 27b96ce00b61c8b5f1c7e4453b5b82) (load bias 0x1000)
    e9c75000-e9c75fff rw-      c000      1000  /system/lib/libimg_utils.so (BuildId: 27b96ce00b61c8b5f1c7e4453b5b82) (load bias 0x1000)
    e9c8c000-e9c8ffff r--         0      4000  /system/lib/libpiex.so (BuildId: ff2fa5ad3905443ca1739e4f8a276e) (load bias 0x1000)
    e9c90000-e9c9cfff r-x      3000      d000  /system/lib/libpiex.so (BuildId: ff2fa5ad3905443ca1739e4f8a276e) (load bias 0x1000)
    e9c9d000-e9c9efff r--      f000      2000  /system/lib/libpiex.so (BuildId: ff2fa5ad3905443ca1739e4f8a276e) (load bias 0x1000)
    e9cdd000-e9cfbfff r--         0     1f000  /system/lib/libvintf.so (BuildId: 50223e8424c0579cb141dc06404489) (load bias 0x1000)
    e9cfc000-e9d39fff r-x     1e000     3e000  /system/lib/libvintf.so (BuildId: 50223e8424c0579cb141dc06404489) (load bias 0x1000)
    e9d3a000-e9d3cfff r--     5b000      3000  /system/lib/libvintf.so (BuildId: 50223e8424c0579cb141dc06404489) (load bias 0x1000)
    e9d3d000-e9d3dfff rw-     5d000      1000  /system/lib/libvintf.so (BuildId: 50223e8424c0579cb141dc06404489) (load bias 0x1000)
    e9d3e000-e9d3efff rw-         0      1000  [anon:.bss]
    e9d60000-e9d84fff r--         0     25000  /system/lib/libprotobuf-cpp-lite.so (BuildId: 1a61f25c73275e52c48e0ef1586b3d) (load bias 0x1000)
    e9d85000-e9db2fff r-x     24000     2e000  /system/lib/libprotobuf-cpp-lite.so (BuildId: 1a61f25c73275e52c48e0ef1586b3d) (load bias 0x1000)
    e9db3000-e9db4fff r--     51000      2000  /system/lib/libprotobuf-cpp-lite.so (BuildId: 1a61f25c73275e52c48e0ef1586b3d) (load bias 0x1000)
    e9db5000-e9db5fff rw-     52000      1000  /system/lib/libprotobuf-cpp-lite.so (BuildId: 1a61f25c73275e52c48e0ef1586b3d) (load bias 0x1000)
    e9dcc000-e9ddffff r--         0     14000  /system/lib/android.hardware.drm@1.1.so (BuildId: 94b54fcf6e0d7c5c8a6a2fa024176b) (load bias 0x1000)
    e9de0000-e9dfafff r-x     13000     1b000  /system/lib/android.hardware.drm@1.1.so (BuildId: 94b54fcf6e0d7c5c8a6a2fa024176b) (load bias 0x1000)
    e9dfb000-e9dfdfff r--     2d000      3000  /system/lib/android.hardware.drm@1.1.so (BuildId: 94b54fcf6e0d7c5c8a6a2fa024176b) (load bias 0x1000)
    e9dfe000-e9dfefff rw-     2f000      1000  /system/lib/android.hardware.drm@1.1.so (BuildId: 94b54fcf6e0d7c5c8a6a2fa024176b) (load bias 0x1000)
    e9e24000-e9e26fff r--         0      3000  /system/vendor/lib/libshims_cameraclient.so (BuildId: bf81e0f1bea0745ef48e86b9e048f3) (load bias 0x1000)
    e9e27000-e9e27fff r-x      2000      1000  /system/vendor/lib/libshims_cameraclient.so (BuildId: bf81e0f1bea0745ef48e86b9e048f3) (load bias 0x1000)
    e9e28000-e9e28fff r--      2000      1000  /system/vendor/lib/libshims_cameraclient.so (BuildId: bf81e0f1bea0745ef48e86b9e048f3) (load bias 0x1000)
    e9e60000-e9e60fff r--         0      1000  /system/lib/libprocinfo.so (BuildId: 7041936c3a138432928e4c81a0ee2d) (load bias 0x1000)
    e9e61000-e9e62fff r-x         0      2000  /system/lib/libprocinfo.so (BuildId: 7041936c3a138432928e4c81a0ee2d) (load bias 0x1000)
    e9e63000-e9e63fff r--      1000      1000  /system/lib/libprocinfo.so (BuildId: 7041936c3a138432928e4c81a0ee2d) (load bias 0x1000)
    e9eb3000-e9eb3fff r--         0      1000  /system/lib/libmemtrack.so (BuildId: 28ee9beff5e4c4edf21bc401561106) (load bias 0x1000)
    e9eb4000-e9eb5fff r-x         0      2000  /system/lib/libmemtrack.so (BuildId: 28ee9beff5e4c4edf21bc401561106) (load bias 0x1000)
    e9eb6000-e9eb6fff r--      1000      1000  /system/lib/libmemtrack.so (BuildId: 28ee9beff5e4c4edf21bc401561106) (load bias 0x1000)
    e9eb7000-e9eb7fff rw-      1000      1000  /system/lib/libmemtrack.so (BuildId: 28ee9beff5e4c4edf21bc401561106) (load bias 0x1000)
    e9ed3000-e9ef1fff r--         0     1f000  /system/lib/libft2.so (BuildId: b347feb0cdc1505f45209d740a109c) (load bias 0x1000)
    e9ef2000-e9f5afff r-x     1e000     69000  /system/lib/libft2.so (BuildId: b347feb0cdc1505f45209d740a109c) (load bias 0x1000)
    e9f5b000-e9f5efff r--     86000      4000  /system/lib/libft2.so (BuildId: b347feb0cdc1505f45209d740a109c) (load bias 0x1000)
    e9fa0000-e9fa4fff r--         0      5000  /system/lib/libnetdutils.so (BuildId: 0cd420ff4bee11e730ce17f0422daa) (load bias 0x1000)
    e9fa5000-e9fadfff r-x      4000      9000  /system/lib/libnetdutils.so (BuildId: 0cd420ff4bee11e730ce17f0422daa) (load bias 0x1000)
    e9fae000-e9faefff r--      c000      1000  /system/lib/libnetdutils.so (BuildId: 0cd420ff4bee11e730ce17f0422daa) (load bias 0x1000)
    e9faf000-e9faffff rw-      c000      1000  /system/lib/libnetdutils.so (BuildId: 0cd420ff4bee11e730ce17f0422daa) (load bias 0x1000)
    e9fe6000-e9fe9fff r--         0      4000  /system/lib/libnetdbpf.so (BuildId: 245a957fb808f8d7bfe7e01e64a05f) (load bias 0x1000)
    e9fea000-e9ff6fff r-x      3000      d000  /system/lib/libnetdbpf.so (BuildId: 245a957fb808f8d7bfe7e01e64a05f) (load bias 0x1000)
    e9ff7000-e9ff7fff r--      f000      1000  /system/lib/libnetdbpf.so (BuildId: 245a957fb808f8d7bfe7e01e64a05f) (load bias 0x1000)
    ea00e000-ea016fff r--         0      9000  /system/lib/libmediadrmmetrics_lite.so (BuildId: 3c323debd13da69adfed3e46ae39d7) (load bias 0x1000)
    ea017000-ea021fff r-x      8000      b000  /system/lib/libmediadrmmetrics_lite.so (BuildId: 3c323debd13da69adfed3e46ae39d7) (load bias 0x1000)
    ea022000-ea022fff r--     12000      1000  /system/lib/libmediadrmmetrics_lite.so (BuildId: 3c323debd13da69adfed3e46ae39d7) (load bias 0x1000)
    ea023000-ea023fff rw-     12000      1000  /system/lib/libmediadrmmetrics_lite.so (BuildId: 3c323debd13da69adfed3e46ae39d7) (load bias 0x1000)
    ea051000-ea051fff r--         0      1000  /system/vendor/lib/libqdMetaData.so (BuildId: f58a53b36f7e94ce20ee1d8a7206af) (load bias 0x1000)
    ea052000-ea054fff r-x         0      3000  /system/vendor/lib/libqdMetaData.so (BuildId: f58a53b36f7e94ce20ee1d8a7206af) (load bias 0x1000)
    ea055000-ea055fff r--      2000      1000  /system/vendor/lib/libqdMetaData.so (BuildId: f58a53b36f7e94ce20ee1d8a7206af) (load bias 0x1000)
    ea0a2000-ea0a2fff r--         0      1000  /system/lib/libETC1.so (BuildId: 9218f8cf9b262bcfc9cb11281ac917) (load bias 0x1000)
    ea0a3000-ea0a4fff r-x         0      2000  /system/lib/libETC1.so (BuildId: 9218f8cf9b262bcfc9cb11281ac917) (load bias 0x1000)
    ea0a5000-ea0a5fff r--      1000      1000  /system/lib/libETC1.so (BuildId: 9218f8cf9b262bcfc9cb11281ac917) (load bias 0x1000)
    ea0e1000-ea0e1fff r--         0      1000  /system/lib/libmediandk_utils.so (BuildId: 2d1c8dadb27b2e1440649cbbb5cd1c) (load bias 0x1000)
    ea0e2000-ea0e2fff r-x         0      1000  /system/lib/libmediandk_utils.so (BuildId: 2d1c8dadb27b2e1440649cbbb5cd1c) (load bias 0x1000)
    ea0e3000-ea0e3fff r--         0      1000  /system/lib/libmediandk_utils.so (BuildId: 2d1c8dadb27b2e1440649cbbb5cd1c) (load bias 0x1000)
    ea10c000-ea12efff r--         0     23000  /system/lib/libandroidfw.so (BuildId: 7cb467e353d3e2cca9eb47653820b7) (load bias 0x1000)
    ea12f000-ea15afff r-x     22000     2c000  /system/lib/libandroidfw.so (BuildId: 7cb467e353d3e2cca9eb47653820b7) (load bias 0x1000)
    ea15b000-ea15cfff r--     4d000      2000  /system/lib/libandroidfw.so (BuildId: 7cb467e353d3e2cca9eb47653820b7) (load bias 0x1000)
    ea15d000-ea15dfff rw-     4e000      1000  /system/lib/libandroidfw.so (BuildId: 7cb467e353d3e2cca9eb47653820b7) (load bias 0x1000)
    ea181000-ea186fff r--         0      6000  /system/lib/libz.so (BuildId: 62a421af05ff940a1799f29f12d20b) (load bias 0x1000)
    ea187000-ea196fff r-x      5000     10000  /system/lib/libz.so (BuildId: 62a421af05ff940a1799f29f12d20b) (load bias 0x1000)
    ea197000-ea198fff r--     14000      2000  /system/lib/libz.so (BuildId: 62a421af05ff940a1799f29f12d20b) (load bias 0x1000)
    ea199000-ea199fff rw-     15000      1000  /system/lib/libz.so (BuildId: 62a421af05ff940a1799f29f12d20b) (load bias 0x1000)
    ea1cd000-ea1d6fff r--         0      a000  /system/lib/android.system.suspend@1.0.so (BuildId: da8839f31fafc2b88481b30776bb63) (load bias 0x1000)
    ea1d7000-ea1e0fff r-x      9000      a000  /system/lib/android.system.suspend@1.0.so (BuildId: da8839f31fafc2b88481b30776bb63) (load bias 0x1000)
    ea1e1000-ea1e2fff r--     12000      2000  /system/lib/android.system.suspend@1.0.so (BuildId: da8839f31fafc2b88481b30776bb63) (load bias 0x1000)
    ea1e3000-ea1e3fff rw-     13000      1000  /system/lib/android.system.suspend@1.0.so (BuildId: da8839f31fafc2b88481b30776bb63) (load bias 0x1000)
    ea219000-ea21cfff r--         0      4000  /system/lib/libappfuse.so (BuildId: 10cfad2a73708b06fe57a100940e2b) (load bias 0x1000)
    ea21d000-ea221fff r-x      3000      5000  /system/lib/libappfuse.so (BuildId: 10cfad2a73708b06fe57a100940e2b) (load bias 0x1000)
    ea222000-ea222fff r--      7000      1000  /system/lib/libappfuse.so (BuildId: 10cfad2a73708b06fe57a100940e2b) (load bias 0x1000)
    ea223000-ea223fff rw-      7000      1000  /system/lib/libappfuse.so (BuildId: 10cfad2a73708b06fe57a100940e2b) (load bias 0x1000)
    ea240000-ea2b5fff r-x         0     76000  /system/vendor/lib/libts_detected_face_hal.so
    ea2b6000-ea2b9fff r--     75000      4000  /system/vendor/lib/libts_detected_face_hal.so
    ea2ba000-ea2f4fff rw-     79000     3b000  /system/vendor/lib/libts_detected_face_hal.so
    ea2f5000-ea2fafff rw-         0      6000  [anon:.bss]
    ea31e000-ea31ffff r--         0      2000  /system/lib/server_configurable_flags.so (BuildId: 6c6f636fc10100d21cdbb72cd759dc) (load bias 0x1000)
    ea320000-ea320fff r-x      1000      1000  /system/lib/server_configurable_flags.so (BuildId: 6c6f636fc10100d21cdbb72cd759dc) (load bias 0x1000)
    ea321000-ea322fff r--      1000      2000  /system/lib/server_configurable_flags.so (BuildId: 6c6f636fc10100d21cdbb72cd759dc) (load bias 0x1000)
    ea370000-ea373fff r--         0      4000  /system/lib/libmeminfo.so (BuildId: a36493ce55d7cde6302af0c5edf199) (load bias 0x1000)
    ea374000-ea378fff r-x      3000      5000  /system/lib/libmeminfo.so (BuildId: a36493ce55d7cde6302af0c5edf199) (load bias 0x1000)
    ea379000-ea37afff r--      7000      2000  /system/lib/libmeminfo.so (BuildId: a36493ce55d7cde6302af0c5edf199) (load bias 0x1000)
    ea37b000-ea37bfff rw-      8000      1000  /system/lib/libmeminfo.so (BuildId: a36493ce55d7cde6302af0c5edf199) (load bias 0x1000)
    ea3a0000-ea3bdfff r--         0     1e000  /system/lib/android.hardware.drm@1.2.so (BuildId: d593bbf3ec9ed30c0ff7e9ed9677c1) (load bias 0x1000)
    ea3be000-ea3e5fff r-x     1d000     28000  /system/lib/android.hardware.drm@1.2.so (BuildId: d593bbf3ec9ed30c0ff7e9ed9677c1) (load bias 0x1000)
    ea3e6000-ea3eafff r--     44000      5000  /system/lib/android.hardware.drm@1.2.so (BuildId: d593bbf3ec9ed30c0ff7e9ed9677c1) (load bias 0x1000)
    ea3eb000-ea3ebfff rw-     48000      1000  /system/lib/android.hardware.drm@1.2.so (BuildId: d593bbf3ec9ed30c0ff7e9ed9677c1) (load bias 0x1000)
    ea416000-ea42dfff r-x         0     18000  /system/vendor/lib/libadsprpc.so (BuildId: 6afaa6936b07814003090119c5b11e)
    ea42e000-ea42efff ---         0      1000
    ea42f000-ea42ffff r--     18000      1000  /system/vendor/lib/libadsprpc.so (BuildId: 6afaa6936b07814003090119c5b11e)
    ea430000-ea430fff rw-     19000      1000  /system/vendor/lib/libadsprpc.so (BuildId: 6afaa6936b07814003090119c5b11e)
    ea431000-ea431fff rw-         0      1000  [anon:.bss]
    ea44c000-ea44ffff r-x         0      4000  /system/vendor/lib/libqomx_core.so (BuildId: 8bfdf4d07819aa36160dcb3fddee7b)
    ea450000-ea450fff r--      3000      1000  /system/vendor/lib/libqomx_core.so (BuildId: 8bfdf4d07819aa36160dcb3fddee7b)
    ea451000-ea451fff rw-      4000      1000  /system/vendor/lib/libqomx_core.so (BuildId: 8bfdf4d07819aa36160dcb3fddee7b)
    ea495000-ea49bfff r--         0      7000  /system/lib/android.hardware.memtrack@1.0.so (BuildId: a31f29a14a161a669be9414b193be8) (load bias 0x1000)
    ea49c000-ea4a2fff r-x      6000      7000  /system/lib/android.hardware.memtrack@1.0.so (BuildId: a31f29a14a161a669be9414b193be8) (load bias 0x1000)
    ea4a3000-ea4a3fff r--      c000      1000  /system/lib/android.hardware.memtrack@1.0.so (BuildId: a31f29a14a161a669be9414b193be8) (load bias 0x1000)
    ea4a4000-ea4a4fff rw-      c000      1000  /system/lib/android.hardware.memtrack@1.0.so (BuildId: a31f29a14a161a669be9414b193be8) (load bias 0x1000)
    ea4c6000-ea4d1fff r--         0      c000  /system/lib/libmediandk.so (BuildId: 810e5058c7090d4d205ff6a9319e8b) (load bias 0x1000)
    ea4d2000-ea4defff r-x      b000      d000  /system/lib/libmediandk.so (BuildId: 810e5058c7090d4d205ff6a9319e8b) (load bias 0x1000)
    ea4df000-ea4e0fff r--     17000      2000  /system/lib/libmediandk.so (BuildId: 810e5058c7090d4d205ff6a9319e8b) (load bias 0x1000)
    ea4e1000-ea4e1fff rw-     18000      1000  /system/lib/libmediandk.so (BuildId: 810e5058c7090d4d205ff6a9319e8b) (load bias 0x1000)
    ea50e000-ea516fff r-x         0      9000  /system/lib/libsecnativefeature.so (BuildId: dd53d8f3ceac162fe4391c293fe90d)
    ea517000-ea517fff r--      8000      1000  /system/lib/libsecnativefeature.so (BuildId: dd53d8f3ceac162fe4391c293fe90d)
    ea518000-ea518fff rw-      9000      1000  /system/lib/libsecnativefeature.so (BuildId: dd53d8f3ceac162fe4391c293fe90d)
    ea54f000-ea55bfff r--         0      d000  /system/lib/android.hardware.drm@1.3.so (BuildId: cac8de19186c83ee62606bbc3ff0bc) (load bias 0x1000)
    ea55c000-ea567fff r-x      c000      c000  /system/lib/android.hardware.drm@1.3.so (BuildId: cac8de19186c83ee62606bbc3ff0bc) (load bias 0x1000)
    ea568000-ea56afff r--     17000      3000  /system/lib/android.hardware.drm@1.3.so (BuildId: cac8de19186c83ee62606bbc3ff0bc) (load bias 0x1000)
    ea56b000-ea56bfff rw-     19000      1000  /system/lib/android.hardware.drm@1.3.so (BuildId: cac8de19186c83ee62606bbc3ff0bc) (load bias 0x1000)
    ea5a2000-ea5adfff r--         0      c000  /system/lib/libGLESv3.so (BuildId: d0ad352ff019354d3caccadf9d1021) (load bias 0x1000)
    ea5ae000-ea5b2fff r-x      b000      5000  /system/lib/libGLESv3.so (BuildId: d0ad352ff019354d3caccadf9d1021) (load bias 0x1000)
    ea5b3000-ea5b3fff r--      f000      1000  /system/lib/libGLESv3.so (BuildId: d0ad352ff019354d3caccadf9d1021) (load bias 0x1000)
    ea5cb000-ea5e0fff r--         0     16000  /apex/com.android.os.statsd/lib/libstatspull.so (BuildId: a310d71d06f962354584ec84e1dab9) (load bias 0x1000)
    ea5e1000-ea5f4fff r-x     15000     14000  /apex/com.android.os.statsd/lib/libstatspull.so (BuildId: a310d71d06f962354584ec84e1dab9) (load bias 0x1000)
    ea5f5000-ea5f7fff r--     28000      3000  /apex/com.android.os.statsd/lib/libstatspull.so (BuildId: a310d71d06f962354584ec84e1dab9) (load bias 0x1000)
    ea5f8000-ea5f8fff rw-     2a000      1000  /apex/com.android.os.statsd/lib/libstatspull.so (BuildId: a310d71d06f962354584ec84e1dab9) (load bias 0x1000)
    ea605000-ea607fff r--         0      3000  /system/lib/libtimeinstate.so (BuildId: 59cd7a72db21e861fa064bd70696b4) (load bias 0x1000)
    ea608000-ea60cfff r-x      2000      5000  /system/lib/libtimeinstate.so (BuildId: 59cd7a72db21e861fa064bd70696b4) (load bias 0x1000)
    ea60d000-ea60efff r--      6000      2000  /system/lib/libtimeinstate.so (BuildId: 59cd7a72db21e861fa064bd70696b4) (load bias 0x1000)
    ea60f000-ea60ffff rw-      7000      1000  /system/lib/libtimeinstate.so (BuildId: 59cd7a72db21e861fa064bd70696b4) (load bias 0x1000)
    ea65e000-ea661fff r--         0      4000  /system/lib/libstatslog.so (BuildId: 09f0fb5b83f1e0243cc9509144d827) (load bias 0x1000)
    ea662000-ea667fff r-x      3000      6000  /system/lib/libstatslog.so (BuildId: 09f0fb5b83f1e0243cc9509144d827) (load bias 0x1000)
    ea668000-ea668fff r--      8000      1000  /system/lib/libstatslog.so (BuildId: 09f0fb5b83f1e0243cc9509144d827) (load bias 0x1000)
    ea6af000-ea6b1fff r--         0      3000  /system/lib/libbpf_android.so (BuildId: 93ea429968a4703e29a0f19cdebd90) (load bias 0x1000)
    ea6b2000-ea6b8fff r-x      2000      7000  /system/lib/libbpf_android.so (BuildId: 93ea429968a4703e29a0f19cdebd90) (load bias 0x1000)
    ea6b9000-ea6b9fff r--      8000      1000  /system/lib/libbpf_android.so (BuildId: 93ea429968a4703e29a0f19cdebd90) (load bias 0x1000)
    ea6ba000-ea6bafff rw-      8000      1000  /system/lib/libbpf_android.so (BuildId: 93ea429968a4703e29a0f19cdebd90) (load bias 0x1000)
    ea6c1000-ea6ccfff r--         0      c000  /system/lib/libandroid.so (BuildId: 143242387c520a6b7dbaeeda55e958) (load bias 0x1000)
    ea6cd000-ea6d8fff r-x      b000      c000  /system/lib/libandroid.so (BuildId: 143242387c520a6b7dbaeeda55e958) (load bias 0x1000)
    ea6d9000-ea6dafff r--     16000      2000  /system/lib/libandroid.so (BuildId: 143242387c520a6b7dbaeeda55e958) (load bias 0x1000)
    ea6db000-ea6dbfff rw-     17000      1000  /system/lib/libandroid.so (BuildId: 143242387c520a6b7dbaeeda55e958) (load bias 0x1000)
    ea703000-ea70dfff r--         0      b000  /system/vendor/lib/libOpenCL.so (BuildId: bc21948a85f1ffb4d3e51bd7b9fdf5)
    ea70e000-ea714fff r-x      b000      7000  /system/vendor/lib/libOpenCL.so (BuildId: bc21948a85f1ffb4d3e51bd7b9fdf5)
    ea715000-ea715fff rw-     12000      1000  /system/vendor/lib/libOpenCL.so (BuildId: bc21948a85f1ffb4d3e51bd7b9fdf5)
    ea716000-ea716fff r--     13000      1000  /system/vendor/lib/libOpenCL.so (BuildId: bc21948a85f1ffb4d3e51bd7b9fdf5)
    ea717000-ea717fff rw-         0      1000  [anon:.bss]
    ea74d000-ea756fff r--         0      a000  /system/lib/libpng.so (BuildId: 68e0143c8a15b11f862900149d8b56) (load bias 0x1000)
    ea757000-ea772fff r-x      9000     1c000  /system/lib/libpng.so (BuildId: 68e0143c8a15b11f862900149d8b56) (load bias 0x1000)
    ea773000-ea773fff r--     24000      1000  /system/lib/libpng.so (BuildId: 68e0143c8a15b11f862900149d8b56) (load bias 0x1000)
    ea78b000-ea7acfff r--         0     22000  /system/vendor/lib/camera.device@3.4-external-impl.so (BuildId: 736516e09e5dad7fba6ccdbc69c8e5) (load bias 0x1000)
    ea7ad000-ea7d1fff r-x     21000     25000  /system/vendor/lib/camera.device@3.4-external-impl.so (BuildId: 736516e09e5dad7fba6ccdbc69c8e5) (load bias 0x1000)
    ea7d2000-ea7d3fff r--     45000      2000  /system/vendor/lib/camera.device@3.4-external-impl.so (BuildId: 736516e09e5dad7fba6ccdbc69c8e5) (load bias 0x1000)
    ea7d4000-ea7d4fff rw-     46000      1000  /system/vendor/lib/camera.device@3.4-external-impl.so (BuildId: 736516e09e5dad7fba6ccdbc69c8e5) (load bias 0x1000)
    ea7d5000-ea7d5fff rw-         0      1000  [anon:.bss]
    ea800000-ea80ffff r--         0     10000  /system/vendor/lib/camera.device@3.4-impl.so (BuildId: 1b0af53b621d40887ac843aaff5986) (load bias 0x1000)
    ea810000-ea81dfff r-x      f000      e000  /system/vendor/lib/camera.device@3.4-impl.so (BuildId: 1b0af53b621d40887ac843aaff5986) (load bias 0x1000)
    ea81e000-ea81efff r--     1c000      1000  /system/vendor/lib/camera.device@3.4-impl.so (BuildId: 1b0af53b621d40887ac843aaff5986) (load bias 0x1000)
    ea81f000-ea81ffff rw-     1c000      1000  /system/vendor/lib/camera.device@3.4-impl.so (BuildId: 1b0af53b621d40887ac843aaff5986) (load bias 0x1000)
    ea85c000-ea85ffff r--         0      4000  /system/vendor/lib/camera.device@3.3-impl.so (BuildId: af2e6a55798833a4d6a11a72f9e261) (load bias 0x1000)
    ea860000-ea861fff r-x      3000      2000  /system/vendor/lib/camera.device@3.3-impl.so (BuildId: af2e6a55798833a4d6a11a72f9e261) (load bias 0x1000)
    ea862000-ea863fff r--      4000      2000  /system/vendor/lib/camera.device@3.3-impl.so (BuildId: af2e6a55798833a4d6a11a72f9e261) (load bias 0x1000)
    ea893000-ea8a7fff r--         0     15000  /system/vendor/lib/camera.device@3.5-impl.so (BuildId: 272902c4712869043d7516abb953cd) (load bias 0x1000)
    ea8a8000-ea8b4fff r-x     14000      d000  /system/vendor/lib/camera.device@3.5-impl.so (BuildId: 272902c4712869043d7516abb953cd) (load bias 0x1000)
    ea8b5000-ea8b6fff r--     20000      2000  /system/vendor/lib/camera.device@3.5-impl.so (BuildId: 272902c4712869043d7516abb953cd) (load bias 0x1000)
    ea8b7000-ea8b7fff rw-     21000      1000  /system/vendor/lib/camera.device@3.5-impl.so (BuildId: 272902c4712869043d7516abb953cd) (load bias 0x1000)
    ea8d2000-ea8e4fff r--         0     13000  /system/vendor/lib/camera.device@1.0-impl.so (BuildId: 979c7154b395a85d9d59a1ab47711e) (load bias 0x1000)
    ea8e5000-ea8f2fff r-x     12000      e000  /system/vendor/lib/camera.device@1.0-impl.so (BuildId: 979c7154b395a85d9d59a1ab47711e) (load bias 0x1000)
    ea8f3000-ea8f4fff r--     1f000      2000  /system/vendor/lib/camera.device@1.0-impl.so (BuildId: 979c7154b395a85d9d59a1ab47711e) (load bias 0x1000)
    ea8f5000-ea8f5fff rw-     20000      1000  /system/vendor/lib/camera.device@1.0-impl.so (BuildId: 979c7154b395a85d9d59a1ab47711e) (load bias 0x1000)
    ea90e000-ea925fff r--         0     18000  /system/vendor/lib/camera.device@3.6-external-impl.so (BuildId: f49d6e381dbf381103a4050a6d02c6) (load bias 0x1000)
    ea926000-ea937fff r-x     17000     12000  /system/vendor/lib/camera.device@3.6-external-impl.so (BuildId: f49d6e381dbf381103a4050a6d02c6) (load bias 0x1000)
    ea938000-ea939fff r--     28000      2000  /system/vendor/lib/camera.device@3.6-external-impl.so (BuildId: f49d6e381dbf381103a4050a6d02c6) (load bias 0x1000)
    ea93a000-ea93afff rw-     29000      1000  /system/vendor/lib/camera.device@3.6-external-impl.so (BuildId: f49d6e381dbf381103a4050a6d02c6) (load bias 0x1000)
    ea94b000-ea95bfff r--         0     11000  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (BuildId: b7d0fa38f783397c09612cb018fb62) (load bias 0x1000)
    ea95c000-ea96dfff r-x     10000     12000  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (BuildId: b7d0fa38f783397c09612cb018fb62) (load bias 0x1000)
    ea96e000-ea96efff r--     22000      1000  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (BuildId: b7d0fa38f783397c09612cb018fb62) (load bias 0x1000)
    ea96f000-ea96ffff rw-     22000      1000  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (BuildId: b7d0fa38f783397c09612cb018fb62) (load bias 0x1000)
    ea9b8000-ea9b9fff r--         0      2000  /system/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so (BuildId: de47815112eb07e146756f53cff030) (load bias 0x1000)
    ea9ba000-ea9bbfff r-x      1000      2000  /system/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so (BuildId: de47815112eb07e146756f53cff030) (load bias 0x1000)
    ea9bc000-ea9bcfff r--      2000      1000  /system/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so (BuildId: de47815112eb07e146756f53cff030) (load bias 0x1000)
    ea9bd000-ea9bdfff rw-      2000      1000  /system/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so (BuildId: de47815112eb07e146756f53cff030) (load bias 0x1000)
    ea9c5000-ea9dbfff r--         0     17000  /system/vendor/lib/camera.device@3.2-impl.so (BuildId: 838552881f80951535871948b9ef11) (load bias 0x1000)
    ea9dc000-ea9effff r-x     16000     14000  /system/vendor/lib/camera.device@3.2-impl.so (BuildId: 838552881f80951535871948b9ef11) (load bias 0x1000)
    ea9f0000-ea9f1fff r--     29000      2000  /system/vendor/lib/camera.device@3.2-impl.so (BuildId: 838552881f80951535871948b9ef11) (load bias 0x1000)
    ea9f2000-ea9f2fff rw-     2a000      1000  /system/vendor/lib/camera.device@3.2-impl.so (BuildId: 838552881f80951535871948b9ef11) (load bias 0x1000)
    eaa07000-eaa18fff r--         0     12000  /system/vendor/lib/camera.device@3.5-external-impl.so (BuildId: f55dca90cc1abe855a6b056074ccfc) (load bias 0x1000)
    eaa19000-eaa23fff r-x     11000      b000  /system/vendor/lib/camera.device@3.5-external-impl.so (BuildId: f55dca90cc1abe855a6b056074ccfc) (load bias 0x1000)
    eaa24000-eaa25fff r--     1b000      2000  /system/vendor/lib/camera.device@3.5-external-impl.so (BuildId: f55dca90cc1abe855a6b056074ccfc) (load bias 0x1000)
    eaa26000-eaa26fff rw-     1c000      1000  /system/vendor/lib/camera.device@3.5-external-impl.so (BuildId: f55dca90cc1abe855a6b056074ccfc) (load bias 0x1000)
    eaa5d000-eaa65fff r--         0      9000  /system/vendor/lib/android.hardware.camera.provider@2.4-external.so (BuildId: 04e278f0a0780bb3f42dc27531b2d2) (load bias 0x1000)
    eaa66000-eaa71fff r-x      8000      c000  /system/vendor/lib/android.hardware.camera.provider@2.4-external.so (BuildId: 04e278f0a0780bb3f42dc27531b2d2) (load bias 0x1000)
    eaa72000-eaa72fff r--     13000      1000  /system/vendor/lib/android.hardware.camera.provider@2.4-external.so (BuildId: 04e278f0a0780bb3f42dc27531b2d2) (load bias 0x1000)
    eaa73000-eaa73fff rw-     13000      1000  /system/vendor/lib/android.hardware.camera.provider@2.4-external.so (BuildId: 04e278f0a0780bb3f42dc27531b2d2) (load bias 0x1000)
    eaaac000-eaab0fff r--         0      5000  /system/lib/libtinyxml2.so (BuildId: da5dca37b88cc3a0e9f6bcc1d3a845) (load bias 0x1000)
    eaab1000-eaab7fff r-x      4000      7000  /system/lib/libtinyxml2.so (BuildId: da5dca37b88cc3a0e9f6bcc1d3a845) (load bias 0x1000)
    eaab8000-eaab9fff r--      a000      2000  /system/lib/libtinyxml2.so (BuildId: da5dca37b88cc3a0e9f6bcc1d3a845) (load bias 0x1000)
    eaaba000-eaabafff rw-      b000      1000  /system/lib/libtinyxml2.so (BuildId: da5dca37b88cc3a0e9f6bcc1d3a845) (load bias 0x1000)
    eaafe000-eaafefff ---         0      1000
    eaaff000-eabfdfff rw-         0     ff000  [anon:stack_and_tls:4166]
    eabfe000-eabfffff ---         0      2000
    eac00000-eacfefff rw-         0     ff000  [anon:stack_and_tls:4165]
    eacff000-eacfffff ---         0      1000
    ead00000-eadbffff rw-         0     c0000  [anon:scudo:primary]
    eafc0000-eb1fffff rw-         0    240000  [anon:scudo:primary]
    eb206000-eb210fff r--         0      b000  /system/lib/libyuv.so (BuildId: 730f376192284ac68bf752f82f6e66) (load bias 0x1000)
    eb211000-eb239fff r-x      a000     29000  /system/lib/libyuv.so (BuildId: 730f376192284ac68bf752f82f6e66) (load bias 0x1000)
    eb23a000-eb23bfff r--     32000      2000  /system/lib/libyuv.so (BuildId: 730f376192284ac68bf752f82f6e66) (load bias 0x1000)
    eb23c000-eb23cfff rw-     33000      1000  /system/lib/libyuv.so (BuildId: 730f376192284ac68bf752f82f6e66) (load bias 0x1000)
    eb241000-eb248fff r--         0      8000  /system/lib/android.hardware.graphics.mapper@2.0.so (BuildId: c27188c3554acf49193c219ba63d30) (load bias 0x1000)
    eb249000-eb251fff r-x      7000      9000  /system/lib/android.hardware.graphics.mapper@2.0.so (BuildId: c27188c3554acf49193c219ba63d30) (load bias 0x1000)
    eb252000-eb253fff r--      f000      2000  /system/lib/android.hardware.graphics.mapper@2.0.so (BuildId: c27188c3554acf49193c219ba63d30) (load bias 0x1000)
    eb254000-eb254fff rw-     10000      1000  /system/lib/android.hardware.graphics.mapper@2.0.so (BuildId: c27188c3554acf49193c219ba63d30) (load bias 0x1000)
    eb293000-eb297fff r--         0      5000  /system/lib/libcutils.so (BuildId: d003730663af9c54005c071e73824d) (load bias 0x1000)
    eb298000-eb29efff r-x      4000      7000  /system/lib/libcutils.so (BuildId: d003730663af9c54005c071e73824d) (load bias 0x1000)
    eb29f000-eb2a0fff r--      a000      2000  /system/lib/libcutils.so (BuildId: d003730663af9c54005c071e73824d) (load bias 0x1000)
    eb2a1000-eb2a1fff rw-      b000      1000  /system/lib/libcutils.so (BuildId: d003730663af9c54005c071e73824d) (load bias 0x1000)
    eb2ca000-eb2d7fff r--         0      e000  /system/lib/libimage_io.so (BuildId: f46f1caf703c7b061e4e7d5c21e07e) (load bias 0x1000)
    eb2d8000-eb2e6fff r-x      d000      f000  /system/lib/libimage_io.so (BuildId: f46f1caf703c7b061e4e7d5c21e07e) (load bias 0x1000)
    eb2e7000-eb2e8fff r--     1b000      2000  /system/lib/libimage_io.so (BuildId: f46f1caf703c7b061e4e7d5c21e07e) (load bias 0x1000)
    eb33b000-eb33bfff r--         0      1000  /system/lib/android.hardware.graphics.common@1.1.so (BuildId: 953c851c936bc2c69a81a64df6f709) (load bias 0x1000)
    eb33c000-eb33cfff r-x         0      1000  /system/lib/android.hardware.graphics.common@1.1.so (BuildId: 953c851c936bc2c69a81a64df6f709) (load bias 0x1000)
    eb33d000-eb33dfff r--         0      1000  /system/lib/android.hardware.graphics.common@1.1.so (BuildId: 953c851c936bc2c69a81a64df6f709) (load bias 0x1000)
    eb358000-eb358fff r--         0      1000  /system/lib/libdexfile_support.so (BuildId: cb14de3de6d7d1532c5b38cff8ddd2) (load bias 0x1000)
    eb359000-eb35afff r-x         0      2000  /system/lib/libdexfile_support.so (BuildId: cb14de3de6d7d1532c5b38cff8ddd2) (load bias 0x1000)
    eb35b000-eb35bfff r--      1000      1000  /system/lib/libdexfile_support.so (BuildId: cb14de3de6d7d1532c5b38cff8ddd2) (load bias 0x1000)
    eb35c000-eb35cfff rw-      1000      1000  /system/lib/libdexfile_support.so (BuildId: cb14de3de6d7d1532c5b38cff8ddd2) (load bias 0x1000)
    eb387000-eb429fff r--         0     a3000  /system/lib/libcameraservice.so (BuildId: eb914082381abdc2ccc1e3344f38ce) (load bias 0x1000)
    eb42a000-eb4dffff r-x     a2000     b6000  /system/lib/libcameraservice.so (BuildId: eb914082381abdc2ccc1e3344f38ce) (load bias 0x1000)
    eb4e0000-eb4f1fff r--    157000     12000  /system/lib/libcameraservice.so (BuildId: eb914082381abdc2ccc1e3344f38ce) (load bias 0x1000)
    eb4f2000-eb4f2fff rw-    168000      1000  /system/lib/libcameraservice.so (BuildId: eb914082381abdc2ccc1e3344f38ce) (load bias 0x1000)
    eb50c000-eb517fff r--         0      c000  /system/lib/libGLESv2.so (BuildId: 5f565673bf2c9210cc10b34d71d814) (load bias 0x1000)
    eb518000-eb51cfff r-x      b000      5000  /system/lib/libGLESv2.so (BuildId: 5f565673bf2c9210cc10b34d71d814) (load bias 0x1000)
    eb51d000-eb51dfff r--      f000      1000  /system/lib/libGLESv2.so (BuildId: 5f565673bf2c9210cc10b34d71d814) (load bias 0x1000)
    eb560000-eb560fff r--         0      1000  /apex/com.android.runtime/lib/bionic/libdl.so (BuildId: 9cabc583e8a93f938bb577e00f965f) (load bias 0x1000)
    eb561000-eb561fff r-x         0      1000  /apex/com.android.runtime/lib/bionic/libdl.so (BuildId: 9cabc583e8a93f938bb577e00f965f) (load bias 0x1000)
    eb562000-eb562fff r--         0      1000  /apex/com.android.runtime/lib/bionic/libdl.so (BuildId: 9cabc583e8a93f938bb577e00f965f) (load bias 0x1000)
    eb563000-eb563fff ---         0      1000
    eb564000-eb564fff rw-         0      1000  [anon:.bss]
    eb590000-eb599fff r--         0      a000  /system/lib/android.hardware.configstore@1.0.so (BuildId: d55deb259c36c89011ef407764aade) (load bias 0x1000)
    eb59a000-eb5a7fff r-x      9000      e000  /system/lib/android.hardware.configstore@1.0.so (BuildId: d55deb259c36c89011ef407764aade) (load bias 0x1000)
    eb5a8000-eb5a9fff r--     16000      2000  /system/lib/android.hardware.configstore@1.0.so (BuildId: d55deb259c36c89011ef407764aade) (load bias 0x1000)
    eb5aa000-eb5aafff rw-     17000      1000  /system/lib/android.hardware.configstore@1.0.so (BuildId: d55deb259c36c89011ef407764aade) (load bias 0x1000)
    eb5d2000-eb5e1fff r--         0     10000  /system/lib/android.hardware.camera.device@3.2.so (BuildId: 6a9a20a8d7b780577e762b50aafe91) (load bias 0x1000)
    eb5e2000-eb5f7fff r-x      f000     16000  /system/lib/android.hardware.camera.device@3.2.so (BuildId: 6a9a20a8d7b780577e762b50aafe91) (load bias 0x1000)
    eb5f8000-eb5fafff r--     24000      3000  /system/lib/android.hardware.camera.device@3.2.so (BuildId: 6a9a20a8d7b780577e762b50aafe91) (load bias 0x1000)
    eb5fb000-eb5fbfff rw-     26000      1000  /system/lib/android.hardware.camera.device@3.2.so (BuildId: 6a9a20a8d7b780577e762b50aafe91) (load bias 0x1000)
    eb615000-eb617fff r--         0      3000  /system/lib/libnativewindow.so (BuildId: 113a6ba124469ae49a4926f0bce678) (load bias 0x1000)
    eb618000-eb619fff r-x      2000      2000  /system/lib/libnativewindow.so (BuildId: 113a6ba124469ae49a4926f0bce678) (load bias 0x1000)
    eb61a000-eb61afff r--      3000      1000  /system/lib/libnativewindow.so (BuildId: 113a6ba124469ae49a4926f0bce678) (load bias 0x1000)
    eb642000-eb64efff r--         0      d000  /system/lib/libEGL.so (BuildId: 1618966766a631560dafcce203b25b) (load bias 0x1000)
    eb64f000-eb65ffff r-x      c000     11000  /system/lib/libEGL.so (BuildId: 1618966766a631560dafcce203b25b) (load bias 0x1000)
    eb660000-eb662fff r--     1c000      3000  /system/lib/libEGL.so (BuildId: 1618966766a631560dafcce203b25b) (load bias 0x1000)
    eb663000-eb663fff rw-     1e000      1000  /system/lib/libEGL.so (BuildId: 1618966766a631560dafcce203b25b) (load bias 0x1000)
    eb664000-eb667fff rw-         0      4000  [anon:.bss]
    eb68a000-eb699fff r--         0     10000  /system/lib/libprocessgroup.so (BuildId: 7877285fbf21813c65b80693c5449c) (load bias 0x1000)
    eb69a000-eb6b5fff r-x      f000     1c000  /system/lib/libprocessgroup.so (BuildId: 7877285fbf21813c65b80693c5449c) (load bias 0x1000)
    eb6b6000-eb6b6fff r--     2a000      1000  /system/lib/libprocessgroup.so (BuildId: 7877285fbf21813c65b80693c5449c) (load bias 0x1000)
    eb6b7000-eb6b7fff rw-     2a000      1000  /system/lib/libprocessgroup.so (BuildId: 7877285fbf21813c65b80693c5449c) (load bias 0x1000)
    eb6c3000-eb6d8fff r--         0     16000  /system/lib/libstagefright_omx.so (BuildId: 36a5a6a239caa558020ee148ef4d2f) (load bias 0x1000)
    eb6d9000-eb6effff r-x     15000     17000  /system/lib/libstagefright_omx.so (BuildId: 36a5a6a239caa558020ee148ef4d2f) (load bias 0x1000)
    eb6f0000-eb6f3fff r--     2b000      4000  /system/lib/libstagefright_omx.so (BuildId: 36a5a6a239caa558020ee148ef4d2f) (load bias 0x1000)
    eb6f4000-eb6f4fff rw-     2e000      1000  /system/lib/libstagefright_omx.so (BuildId: 36a5a6a239caa558020ee148ef4d2f) (load bias 0x1000)
    eb70f000-eb70ffff r--         0      1000  /system/lib/libandroid_runtime_lazy.so (BuildId: d11b460aae5ffd48ba8099eab4c0b4) (load bias 0x1000)
    eb710000-eb710fff r-x         0      1000  /system/lib/libandroid_runtime_lazy.so (BuildId: d11b460aae5ffd48ba8099eab4c0b4) (load bias 0x1000)
    eb711000-eb711fff r--         0      1000  /system/lib/libandroid_runtime_lazy.so (BuildId: d11b460aae5ffd48ba8099eab4c0b4) (load bias 0x1000)
    eb712000-eb712fff rw-         0      1000  /system/lib/libandroid_runtime_lazy.so (BuildId: d11b460aae5ffd48ba8099eab4c0b4) (load bias 0x1000)
    eb765000-eb76bfff r--         0      7000  /system/lib/libstagefright_bufferqueue_helper.so (BuildId: 0f502f8f8310ede0e8f40321b3ccbd) (load bias 0x1000)
    eb76c000-eb772fff r-x      6000      7000  /system/lib/libstagefright_bufferqueue_helper.so (BuildId: 0f502f8f8310ede0e8f40321b3ccbd) (load bias 0x1000)
    eb773000-eb774fff r--      c000      2000  /system/lib/libstagefright_bufferqueue_helper.so (BuildId: 0f502f8f8310ede0e8f40321b3ccbd) (load bias 0x1000)
    eb783000-eb797fff r--         0     15000  /system/lib/libdynamic_depth.so (BuildId: e586bbd65719b52c770282e150dae8) (load bias 0x1000)
    eb798000-eb7b3fff r-x     14000     1c000  /system/lib/libdynamic_depth.so (BuildId: e586bbd65719b52c770282e150dae8) (load bias 0x1000)
    eb7b4000-eb7b5fff r--     2f000      2000  /system/lib/libdynamic_depth.so (BuildId: e586bbd65719b52c770282e150dae8) (load bias 0x1000)
    eb7d0000-eb7d2fff r--         0      3000  /system/lib/libhidlmemory.so (BuildId: 162c5f7744fef40dddd64978d1f0a3) (load bias 0x1000)
    eb7d3000-eb7d3fff r-x      2000      1000  /system/lib/libhidlmemory.so (BuildId: 162c5f7744fef40dddd64978d1f0a3) (load bias 0x1000)
    eb7d4000-eb7d5fff r--      2000      2000  /system/lib/libhidlmemory.so (BuildId: 162c5f7744fef40dddd64978d1f0a3) (load bias 0x1000)
    eb7d6000-eb7d6fff rw-      3000      1000  /system/lib/libhidlmemory.so (BuildId: 162c5f7744fef40dddd64978d1f0a3) (load bias 0x1000)
    eb82b000-eb833fff r--         0      9000  /system/lib/libmedia_helper.so (BuildId: 02579ce701841ab6dc5f3acd1fc700) (load bias 0x1000)
    eb834000-eb83afff r-x      8000      7000  /system/lib/libmedia_helper.so (BuildId: 02579ce701841ab6dc5f3acd1fc700) (load bias 0x1000)
    eb83b000-eb83cfff r--      e000      2000  /system/lib/libmedia_helper.so (BuildId: 02579ce701841ab6dc5f3acd1fc700) (load bias 0x1000)
    eb84e000-eb855fff r--         0      8000  /system/lib/android.hardware.cas.native@1.0.so (BuildId: 957fd9be5072ae4e907167b0dc522a) (load bias 0x1000)
    eb856000-eb85dfff r-x      7000      8000  /system/lib/android.hardware.cas.native@1.0.so (BuildId: 957fd9be5072ae4e907167b0dc522a) (load bias 0x1000)
    eb85e000-eb85ffff r--      e000      2000  /system/lib/android.hardware.cas.native@1.0.so (BuildId: 957fd9be5072ae4e907167b0dc522a) (load bias 0x1000)
    eb860000-eb860fff rw-      f000      1000  /system/lib/android.hardware.cas.native@1.0.so (BuildId: 957fd9be5072ae4e907167b0dc522a) (load bias 0x1000)
    eb8a0000-eb8adfff r--         0      e000  /system/lib/libstagefright_foundation.so (BuildId: c20153f8748e0e8a65d5fb0a0c4920) (load bias 0x1000)
    eb8ae000-eb8bdfff r-x      d000     10000  /system/lib/libstagefright_foundation.so (BuildId: c20153f8748e0e8a65d5fb0a0c4920) (load bias 0x1000)
    eb8be000-eb8befff r--     1c000      1000  /system/lib/libstagefright_foundation.so (BuildId: c20153f8748e0e8a65d5fb0a0c4920) (load bias 0x1000)
    eb8bf000-eb8bffff rw-     1c000      1000  /system/lib/libstagefright_foundation.so (BuildId: c20153f8748e0e8a65d5fb0a0c4920) (load bias 0x1000)
    eb8ce000-eb964fff r--         0     97000  /apex/com.android.art/lib/libicui18n.so (BuildId: 286ffd2ae0d403ea55017e95e3f338) (load bias 0x1000)
    eb965000-eba70fff r-x     96000    10c000  /apex/com.android.art/lib/libicui18n.so (BuildId: 286ffd2ae0d403ea55017e95e3f338) (load bias 0x1000)
    eba71000-eba7bfff r--    1a1000      b000  /apex/com.android.art/lib/libicui18n.so (BuildId: 286ffd2ae0d403ea55017e95e3f338) (load bias 0x1000)
    eba7c000-eba7cfff rw-    1ab000      1000  /apex/com.android.art/lib/libicui18n.so (BuildId: 286ffd2ae0d403ea55017e95e3f338) (load bias 0x1000)
    eba7d000-eba7dfff rw-         0      1000  [anon:.bss]
    eba81000-ebb03fff r--         0     83000  /apex/com.android.art/lib/libicuuc.so (BuildId: ca3cb941a7cfaf18f7f308f0d0fdc2) (load bias 0x1000)
    ebb04000-ebbadfff r-x     82000     aa000  /apex/com.android.art/lib/libicuuc.so (BuildId: ca3cb941a7cfaf18f7f308f0d0fdc2) (load bias 0x1000)
    ebbae000-ebbb9fff r--    12b000      c000  /apex/com.android.art/lib/libicuuc.so (BuildId: ca3cb941a7cfaf18f7f308f0d0fdc2) (load bias 0x1000)
    ebbba000-ebbbafff rw-    136000      1000  /apex/com.android.art/lib/libicuuc.so (BuildId: ca3cb941a7cfaf18f7f308f0d0fdc2) (load bias 0x1000)
    ebbbb000-ebbbbfff rw-         0      1000  [anon:.bss]
    ebbc2000-ebbd1fff r--         0     10000  /system/lib/libexif.so (BuildId: e9aa65aef83a76e5b80ade91856903) (load bias 0x1000)
    ebbd2000-ebbddfff r-x      f000      c000  /system/lib/libexif.so (BuildId: e9aa65aef83a76e5b80ade91856903) (load bias 0x1000)
    ebbde000-ebbeafff r--     1a000      d000  /system/lib/libexif.so (BuildId: e9aa65aef83a76e5b80ade91856903) (load bias 0x1000)
    ebc25000-ebc25fff r--         0      1000  /system/lib/android.hidl.token@1.0-utils.so (BuildId: f65d0f5e774cf6f59b6c276a976e25) (load bias 0x1000)
    ebc26000-ebc27fff r-x         0      2000  /system/lib/android.hidl.token@1.0-utils.so (BuildId: f65d0f5e774cf6f59b6c276a976e25) (load bias 0x1000)
    ebc28000-ebc28fff r--      1000      1000  /system/lib/android.hidl.token@1.0-utils.so (BuildId: f65d0f5e774cf6f59b6c276a976e25) (load bias 0x1000)
    ebc29000-ebc29fff rw-      1000      1000  /system/lib/android.hidl.token@1.0-utils.so (BuildId: f65d0f5e774cf6f59b6c276a976e25) (load bias 0x1000)
    ebc4b000-ebc4bfff r--         0      1000  /system/lib/libcgrouprc.so (BuildId: fc4e78628adfb415fe7b77c05061c9) (load bias 0x1000)
    ebc4c000-ebc4dfff r-x         0      2000  /system/lib/libcgrouprc.so (BuildId: fc4e78628adfb415fe7b77c05061c9) (load bias 0x1000)
    ebc4e000-ebc4efff r--      1000      1000  /system/lib/libcgrouprc.so (BuildId: fc4e78628adfb415fe7b77c05061c9) (load bias 0x1000)
    ebc4f000-ebc4ffff rw-      1000      1000  /system/lib/libcgrouprc.so (BuildId: fc4e78628adfb415fe7b77c05061c9) (load bias 0x1000)
    ebc96000-ebcbdfff r--         0     28000  /system/lib/libmedia.so (BuildId: eed524ea6e082028505dcfa0b1421d) (load bias 0x1000)
    ebcbe000-ebce2fff r-x     27000     25000  /system/lib/libmedia.so (BuildId: eed524ea6e082028505dcfa0b1421d) (load bias 0x1000)
    ebce3000-ebcecfff r--     4b000      a000  /system/lib/libmedia.so (BuildId: eed524ea6e082028505dcfa0b1421d) (load bias 0x1000)
    ebced000-ebcedfff rw-     54000      1000  /system/lib/libmedia.so (BuildId: eed524ea6e082028505dcfa0b1421d) (load bias 0x1000)
    ebd19000-ebd23fff r--         0      b000  /system/lib/libstagefright_framecapture_utils.so (BuildId: 5be6ac51b161271484e3b62ca8e570) (load bias 0x1000)
    ebd24000-ebd36fff r-x      a000     13000  /system/lib/libstagefright_framecapture_utils.so (BuildId: 5be6ac51b161271484e3b62ca8e570) (load bias 0x1000)
    ebd37000-ebd37fff r--     1c000      1000  /system/lib/libstagefright_framecapture_utils.so (BuildId: 5be6ac51b161271484e3b62ca8e570) (load bias 0x1000)
    ebd38000-ebd38fff rw-     1c000      1000  /system/lib/libstagefright_framecapture_utils.so (BuildId: 5be6ac51b161271484e3b62ca8e570) (load bias 0x1000)
    ebd69000-ebd72fff r--         0      a000  /system/lib/libutils.so (BuildId: 2fb179aed2791695f9ce7e382aa6e55e) (load bias 0x1000)
    ebd73000-ebd7cfff r-x      9000      a000  /system/lib/libutils.so (BuildId: 2fb179aed2791695f9ce7e382aa6e55e) (load bias 0x1000)
    ebd7d000-ebd7efff r--     12000      2000  /system/lib/libutils.so (BuildId: 2fb179aed2791695f9ce7e382aa6e5) (load bias 0x1000)
    ebd7f000-ebd7ffff rw-     13000      1000  /system/lib/libutils.so (BuildId: 2fb179aed2791695f9ce7e382aa6e5) (load bias 0x1000)
    ebd81000-ebd88fff r--         0      8000  /system/lib/libbufferhubqueue.so (BuildId: 658329d7b142b51b2d4009fb7d185a) (load bias 0x1000)
    ebd89000-ebd94fff r-x      7000      c000  /system/lib/libbufferhubqueue.so (BuildId: 658329d7b142b51b2d4009fb7d185a) (load bias 0x1000)
    ebd95000-ebd95fff r--     12000      1000  /system/lib/libbufferhubqueue.so (BuildId: 658329d7b142b51b2d4009fb7d185a) (load bias 0x1000)
    ebd96000-ebd96fff rw-     12000      1000  /system/lib/libbufferhubqueue.so (BuildId: 658329d7b142b51b2d4009fb7d185a) (load bias 0x1000)
    ebdd4000-ebdd4fff r--         0      1000  /system/lib/libvndksupport.so (BuildId: 853c8906e1fb64a866849f3e02a352) (load bias 0x1000)
    ebdd5000-ebdd5fff r-x         0      1000  /system/lib/libvndksupport.so (BuildId: 853c8906e1fb64a866849f3e02a352) (load bias 0x1000)
    ebdd6000-ebdd6fff r--         0      1000  /system/lib/libvndksupport.so (BuildId: 853c8906e1fb64a866849f3e02a352) (load bias 0x1000)
    ebdd7000-ebdd7fff rw-         0      1000  /system/lib/libvndksupport.so (BuildId: 853c8906e1fb64a866849f3e02a352) (load bias 0x1000)
    ebe08000-ebe16fff r--         0      f000  /system/lib/android.hardware.graphics.bufferqueue@2.0.so (BuildId: 3b53e79eb13ff1d263ad868d503fa2) (load bias 0x1000)
    ebe17000-ebe2bfff r-x      e000     15000  /system/lib/android.hardware.graphics.bufferqueue@2.0.so (BuildId: 3b53e79eb13ff1d263ad868d503fa2) (load bias 0x1000)
    ebe2c000-ebe2dfff r--     22000      2000  /system/lib/android.hardware.graphics.bufferqueue@2.0.so (BuildId: 3b53e79eb13ff1d263ad868d503fa2) (load bias 0x1000)
    ebe2e000-ebe2efff rw-     23000      1000  /system/lib/android.hardware.graphics.bufferqueue@2.0.so (BuildId: 3b53e79eb13ff1d263ad868d503fa2) (load bias 0x1000)
    ebe77000-ebe77fff r--         0      1000  /system/lib/android.hidl.safe_union@1.0.so (BuildId: 5e727b4ef5d9fab5e2c13b8897061a) (load bias 0x1000)
    ebe78000-ebe78fff r-x         0      1000  /system/lib/android.hidl.safe_union@1.0.so (BuildId: 5e727b4ef5d9fab5e2c13b8897061a) (load bias 0x1000)
    ebe79000-ebe79fff r--         0      1000  /system/lib/android.hidl.safe_union@1.0.so (BuildId: 5e727b4ef5d9fab5e2c13b8897061a) (load bias 0x1000)
    ebe98000-ebe9efff r--         0      7000  /system/lib/android.hidl.allocator@1.0.so (BuildId: c14ea752e0ef2671e2def308721aea) (load bias 0x1000)
    ebe9f000-ebea6fff r-x      6000      8000  /system/lib/android.hidl.allocator@1.0.so (BuildId: c14ea752e0ef2671e2def308721aea) (load bias 0x1000)
    ebea7000-ebea7fff r--      d000      1000  /system/lib/android.hidl.allocator@1.0.so (BuildId: c14ea752e0ef2671e2def308721aea) (load bias 0x1000)
    ebea8000-ebea8fff rw-      d000      1000  /system/lib/android.hidl.allocator@1.0.so (BuildId: c14ea752e0ef2671e2def308721aea) (load bias 0x1000)
    ebec7000-ebef2fff r--         0     2c000  /system/lib/libcodec2_vndk.so (BuildId: 8038df0966178b3c112b2c29a8b90a) (load bias 0x1000)
    ebef3000-ebf2efff r-x     2b000     3c000  /system/lib/libcodec2_vndk.so (BuildId: 8038df0966178b3c112b2c29a8b90a) (load bias 0x1000)
    ebf2f000-ebf30fff r--     66000      2000  /system/lib/libcodec2_vndk.so (BuildId: 8038df0966178b3c112b2c29a8b90a) (load bias 0x1000)
    ebf31000-ebf31fff rw-     67000      1000  /system/lib/libcodec2_vndk.so (BuildId: 8038df0966178b3c112b2c29a8b90a) (load bias 0x1000)
    ebf51000-ebf51fff r--         0      1000  /system/lib/libmedia_omx_client.so (BuildId: a8f83f536a88f051f890ca9a718040) (load bias 0x1000)
    ebf52000-ebf53fff r-x         0      2000  /system/lib/libmedia_omx_client.so (BuildId: a8f83f536a88f051f890ca9a718040) (load bias 0x1000)
    ebf54000-ebf54fff r--      1000      1000  /system/lib/libmedia_omx_client.so (BuildId: a8f83f536a88f051f890ca9a718040) (load bias 0x1000)
    ebf8e000-ebf96fff r--         0      9000  /system/lib/android.hardware.graphics.mapper@2.1.so (BuildId: 69fcac82326a1b884cf0e6f3de1d3f) (load bias 0x1000)
    ebf97000-ebf9ffff r-x      8000      9000  /system/lib/android.hardware.graphics.mapper@2.1.so (BuildId: 69fcac82326a1b884cf0e6f3de1d3f) (load bias 0x1000)
    ebfa0000-ebfa1fff r--     10000      2000  /system/lib/android.hardware.graphics.mapper@2.1.so (BuildId: 69fcac82326a1b884cf0e6f3de1d3f) (load bias 0x1000)
    ebfa2000-ebfa2fff rw-     11000      1000  /system/lib/android.hardware.graphics.mapper@2.1.so (BuildId: 69fcac82326a1b884cf0e6f3de1d3f) (load bias 0x1000)
    ebfdf000-ebfe0fff r--         0      2000  /system/lib/libstagefright_codecbase.so (BuildId: f0ce3693a6c124448b4bad89ee8725) (load bias 0x1000)
    ebfe1000-ebfe3fff r-x      1000      3000  /system/lib/libstagefright_codecbase.so (BuildId: f0ce3693a6c124448b4bad89ee8725) (load bias 0x1000)
    ebfe4000-ebfe4fff r--      3000      1000  /system/lib/libstagefright_codecbase.so (BuildId: f0ce3693a6c124448b4bad89ee8725) (load bias 0x1000)
    ec02a000-ec030fff r--         0      7000  /system/lib/libstagefright_xmlparser.so (BuildId: 398651af1e50c8fe0ed8022d5ee53f) (load bias 0x1000)
    ec031000-ec03bfff r-x      6000      b000  /system/lib/libstagefright_xmlparser.so (BuildId: 398651af1e50c8fe0ed8022d5ee53f) (load bias 0x1000)
    ec03c000-ec03cfff r--     10000      1000  /system/lib/libstagefright_xmlparser.so (BuildId: 398651af1e50c8fe0ed8022d5ee53f) (load bias 0x1000)
    ec03d000-ec03dfff rw-     10000      1000  /system/lib/libstagefright_xmlparser.so (BuildId: 398651af1e50c8fe0ed8022d5ee53f) (load bias 0x1000)
    ec04f000-ec04ffff r--         0      1000  /system/lib/android.hardware.graphics.common@1.0.so (BuildId: ed4d41e9e997f570c1d4e91ad8cb32) (load bias 0x1000)
    ec050000-ec050fff r-x         0      1000  /system/lib/android.hardware.graphics.common@1.0.so (BuildId: ed4d41e9e997f570c1d4e91ad8cb32) (load bias 0x1000)
    ec051000-ec051fff r--         0      1000  /system/lib/android.hardware.graphics.common@1.0.so (BuildId: ed4d41e9e997f570c1d4e91ad8cb32) (load bias 0x1000)
    ec082000-ec082fff r--         0      1000  /system/lib/android.hardware.configstore-utils.so (BuildId: 8adededc1ce08f6a246e4f337705e9) (load bias 0x1000)
    ec083000-ec083fff r-x         0      1000  /system/lib/android.hardware.configstore-utils.so (BuildId: 8adededc1ce08f6a246e4f337705e9) (load bias 0x1000)
    ec084000-ec084fff r--         0      1000  /system/lib/android.hardware.configstore-utils.so (BuildId: 8adededc1ce08f6a246e4f337705e9) (load bias 0x1000)
    ec0c1000-ec0c5fff r--         0      5000  /system/lib/libmedia_codeclist.so (BuildId: c89d21262214e500481125fc6b93bf) (load bias 0x1000)
    ec0c6000-ec0c8fff r-x      4000      3000  /system/lib/libmedia_codeclist.so (BuildId: c89d21262214e500481125fc6b93bf) (load bias 0x1000)
    ec0c9000-ec0cafff r--      6000      2000  /system/lib/libmedia_codeclist.so (BuildId: c89d21262214e500481125fc6b93bf) (load bias 0x1000)
    ec0cb000-ec0cbfff rw-      7000      1000  /system/lib/libmedia_codeclist.so (BuildId: c89d21262214e500481125fc6b93bf) (load bias 0x1000)
    ec101000-ec12cfff r--         0     2c000  /system/lib/libaudioclient.so (BuildId: e40f438a548990a00a3d1536382cfc) (load bias 0x1000)
    ec12d000-ec164fff r-x     2b000     38000  /system/lib/libaudioclient.so (BuildId: e40f438a548990a00a3d1536382cfc) (load bias 0x1000)
    ec165000-ec16dfff r--     62000      9000  /system/lib/libaudioclient.so (BuildId: e40f438a548990a00a3d1536382cfc) (load bias 0x1000)
    ec16e000-ec16efff rw-     6a000      1000  /system/lib/libaudioclient.so (BuildId: e40f438a548990a00a3d1536382cfc) (load bias 0x1000)
    ec1a8000-ec1a8fff r--         0      1000  /system/lib/libfmq.so (BuildId: 474a89fa30a47072840fcb8258cb33) (load bias 0x1000)
    ec1a9000-ec1abfff r-x         0      3000  /system/lib/libfmq.so (BuildId: 474a89fa30a47072840fcb8258cb33) (load bias 0x1000)
    ec1ac000-ec1acfff r--      2000      1000  /system/lib/libfmq.so (BuildId: 474a89fa30a47072840fcb8258cb33) (load bias 0x1000)
    ec1c2000-ec1d7fff r--         0     16000  /system/lib/android.hardware.camera.device@3.5.so (BuildId: 20f3dff77d042e3d6f9f0aa19a07a8) (load bias 0x1000)
    ec1d8000-ec1edfff r-x     15000     16000  /system/lib/android.hardware.camera.device@3.5.so (BuildId: 20f3dff77d042e3d6f9f0aa19a07a8) (load bias 0x1000)
    ec1ee000-ec1f1fff r--     2a000      4000  /system/lib/android.hardware.camera.device@3.5.so (BuildId: 20f3dff77d042e3d6f9f0aa19a07a8) (load bias 0x1000)
    ec1f2000-ec1f2fff rw-     2d000      1000  /system/lib/android.hardware.camera.device@3.5.so (BuildId: 20f3dff77d042e3d6f9f0aa19a07a8) (load bias 0x1000)
    ec222000-ec227fff r--         0      6000  /system/lib/libbacktrace.so (BuildId: 7753b7a899c4aab01bfc41c907f308) (load bias 0x1000)
    ec228000-ec23afff r-x      5000     13000  /system/lib/libbacktrace.so (BuildId: 7753b7a899c4aab01bfc41c907f308) (load bias 0x1000)
    ec23b000-ec23cfff r--     17000      2000  /system/lib/libbacktrace.so (BuildId: 7753b7a899c4aab01bfc41c907f308) (load bias 0x1000)
    ec23d000-ec23dfff rw-     18000      1000  /system/lib/libbacktrace.so (BuildId: 7753b7a899c4aab01bfc41c907f308) (load bias 0x1000)
    ec26b000-ec270fff r--         0      6000  /system/lib/libjpeg.so (BuildId: 06b57278abcac5b0bcbd4667c1afd9) (load bias 0x1000)
    ec271000-ec2affff r-x      5000     3f000  /system/lib/libjpeg.so (BuildId: 06b57278abcac5b0bcbd4667c1afd9) (load bias 0x1000)
    ec2b0000-ec2b1fff r--     43000      2000  /system/lib/libjpeg.so (BuildId: 06b57278abcac5b0bcbd4667c1afd9) (load bias 0x1000)
    ec2b2000-ec2b2fff rw-     44000      1000  /system/lib/libjpeg.so (BuildId: 06b57278abcac5b0bcbd4667c1afd9) (load bias 0x1000)
    ec2d0000-ec2d8fff r--         0      9000  /apex/com.android.runtime/lib/bionic/libm.so (BuildId: 99dcc9f84f405783cbbb96ba6396e3) (load bias 0x1000)
    ec2d9000-ec2edfff r-x      8000     15000  /apex/com.android.runtime/lib/bionic/libm.so (BuildId: 99dcc9f84f405783cbbb96ba6396e3) (load bias 0x1000)
    ec2ee000-ec2eefff r--     1c000      1000  /apex/com.android.runtime/lib/bionic/libm.so (BuildId: 99dcc9f84f405783cbbb96ba6396e3) (load bias 0x1000)
    ec2ef000-ec2effff rw-     1c000      1000  /apex/com.android.runtime/lib/bionic/libm.so (BuildId: 99dcc9f84f405783cbbb96ba6396e3) (load bias 0x1000)
    ec327000-ec32bfff r--         0      5000  /system/lib/libbinder_ndk.so (BuildId: 70a2715bbbe87229b9600992e57445) (load bias 0x1000)
    ec32c000-ec331fff r-x      4000      6000  /system/lib/libbinder_ndk.so (BuildId: 70a2715bbbe87229b9600992e57445) (load bias 0x1000)
    ec332000-ec333fff r--      9000      2000  /system/lib/libbinder_ndk.so (BuildId: 70a2715bbbe87229b9600992e57445) (load bias 0x1000)
    ec334000-ec334fff rw-      a000      1000  /system/lib/libbinder_ndk.so (BuildId: 70a2715bbbe87229b9600992e57445) (load bias 0x1000)
    ec34f000-ec35afff r--         0      c000  /system/lib/libpdx_default_transport.so (BuildId: f6c882c3023ae937ce1d4551a31acc) (load bias 0x1000)
    ec35b000-ec368fff r-x      b000      e000  /system/lib/libpdx_default_transport.so (BuildId: f6c882c3023ae937ce1d4551a31acc) (load bias 0x1000)
    ec369000-ec36afff r--     18000      2000  /system/lib/libpdx_default_transport.so (BuildId: f6c882c3023ae937ce1d4551a31acc) (load bias 0x1000)
    ec36b000-ec36bfff rw-     19000      1000  /system/lib/libpdx_default_transport.so (BuildId: f6c882c3023ae937ce1d4551a31acc) (load bias 0x1000)
    ec387000-ec395fff r--         0      f000  /system/lib/android.hardware.camera.device@3.4.so (BuildId: aa9c81c1fa2557b6d951f824ba4d5b) (load bias 0x1000)
    ec396000-ec3a2fff r-x      e000      d000  /system/lib/android.hardware.camera.device@3.4.so (BuildId: aa9c81c1fa2557b6d951f824ba4d5b) (load bias 0x1000)
    ec3a3000-ec3a5fff r--     1a000      3000  /system/lib/android.hardware.camera.device@3.4.so (BuildId: aa9c81c1fa2557b6d951f824ba4d5b) (load bias 0x1000)
    ec3a6000-ec3a6fff rw-     1c000      1000  /system/lib/android.hardware.camera.device@3.4.so (BuildId: aa9c81c1fa2557b6d951f824ba4d5b) (load bias 0x1000)
    ec3e7000-ec406fff r--         0     20000  /system/lib/libcamera_client.so (BuildId: 61a265239844ab640695d1692b372f) (load bias 0x1000)
    ec407000-ec425fff r-x     1f000     1f000  /system/lib/libcamera_client.so (BuildId: 61a265239844ab640695d1692b372f) (load bias 0x1000)
    ec426000-ec42bfff r--     3d000      6000  /system/lib/libcamera_client.so (BuildId: 61a265239844ab640695d1692b372f) (load bias 0x1000)
    ec42c000-ec42cfff rw-     42000      1000  /system/lib/libcamera_client.so (BuildId: 61a265239844ab640695d1692b372f) (load bias 0x1000)
    ec44d000-ec450fff r--         0      4000  /system/lib/liblzma.so (BuildId: 2fc08a4cb61eba9b272a46773752d3) (load bias 0x1000)
    ec451000-ec466fff r-x      3000     16000  /system/lib/liblzma.so (BuildId: 2fc08a4cb61eba9b272a46773752d3) (load bias 0x1000)
    ec467000-ec468fff r--     18000      2000  /system/lib/liblzma.so (BuildId: 2fc08a4cb61eba9b272a46773752d3) (load bias 0x1000)
    ec469000-ec469fff rw-     19000      1000  /system/lib/liblzma.so (BuildId: 2fc08a4cb61eba9b272a46773752d3) (load bias 0x1000)
    ec46a000-ec46ffff rw-         0      6000  [anon:.bss]
    ec4a9000-ec4affff r--         0      7000  /system/lib/android.hidl.memory.token@1.0.so (BuildId: 9fd8915bc834807753a2d1175fe3e9) (load bias 0x1000)
    ec4b0000-ec4b6fff r-x      6000      7000  /system/lib/android.hidl.memory.token@1.0.so (BuildId: 9fd8915bc834807753a2d1175fe3e9) (load bias 0x1000)
    ec4b7000-ec4b7fff r--      c000      1000  /system/lib/android.hidl.memory.token@1.0.so (BuildId: 9fd8915bc834807753a2d1175fe3e9) (load bias 0x1000)
    ec4b8000-ec4b8fff rw-      c000      1000  /system/lib/android.hidl.memory.token@1.0.so (BuildId: 9fd8915bc834807753a2d1175fe3e9) (load bias 0x1000)
    ec4e2000-ec4e4fff r--         0      3000  /system/lib/libexpat.so (BuildId: 99e6ac651af29b0ea42c146f6811e1) (load bias 0x1000)
    ec4e5000-ec4f7fff r-x      2000     13000  /system/lib/libexpat.so (BuildId: 99e6ac651af29b0ea42c146f6811e1) (load bias 0x1000)
    ec4f8000-ec4fafff r--     14000      3000  /system/lib/libexpat.so (BuildId: 99e6ac651af29b0ea42c146f6811e1) (load bias 0x1000)
    ec501000-ec504fff r--         0      4000  /system/lib/libvibrator.so (BuildId: f10529830162888dce341d9d298043) (load bias 0x1000)
    ec505000-ec507fff r-x      3000      3000  /system/lib/libvibrator.so (BuildId: f10529830162888dce341d9d298043) (load bias 0x1000)
    ec508000-ec509fff r--      5000      2000  /system/lib/libvibrator.so (BuildId: f10529830162888dce341d9d298043) (load bias 0x1000)
    ec50a000-ec50afff rw-      6000      1000  /system/lib/libvibrator.so (BuildId: f10529830162888dce341d9d298043) (load bias 0x1000)
    ec567000-ec596fff r--         0     30000  /system/lib/libxml2.so (BuildId: 101763ecc644f91e711fcae04a57e7) (load bias 0x1000)
    ec597000-ec639fff r-x     2f000     a3000  /system/lib/libxml2.so (BuildId: 101763ecc644f91e711fcae04a57e7) (load bias 0x1000)
    ec63a000-ec63bfff r--     d1000      2000  /system/lib/libxml2.so (BuildId: 101763ecc644f91e711fcae04a57e7) (load bias 0x1000)
    ec63c000-ec63dfff rw-     d2000      2000  /system/lib/libxml2.so (BuildId: 101763ecc644f91e711fcae04a57e7) (load bias 0x1000)
    ec647000-ec664fff r--         0     1e000  /system/lib/libsfplugin_ccodec.so (BuildId: efce5428409db5a45a3428cb53865e) (load bias 0x1000)
    ec665000-ec6a0fff r-x     1d000     3c000  /system/lib/libsfplugin_ccodec.so (BuildId: efce5428409db5a45a3428cb53865e) (load bias 0x1000)
    ec6a1000-ec6a3fff r--     58000      3000  /system/lib/libsfplugin_ccodec.so (BuildId: efce5428409db5a45a3428cb53865e) (load bias 0x1000)
    ec6a4000-ec6a4fff rw-     5a000      1000  /system/lib/libsfplugin_ccodec.so (BuildId: efce5428409db5a45a3428cb53865e) (load bias 0x1000)
    ec6ca000-ec714fff r--         0     4b000  /system/lib/libgui.so (BuildId: b79c4081861ce3ff6f696e68377ce1) (load bias 0x1000)
    ec715000-ec766fff r-x     4a000     52000  /system/lib/libgui.so (BuildId: b79c4081861ce3ff6f696e68377ce1) (load bias 0x1000)
    ec767000-ec774fff r--     9b000      e000  /system/lib/libgui.so (BuildId: b79c4081861ce3ff6f696e68377ce1) (load bias 0x1000)
    ec775000-ec775fff rw-     a8000      1000  /system/lib/libgui.so (BuildId: b79c4081861ce3ff6f696e68377ce1) (load bias 0x1000)
    ec78b000-ec79cfff r--         0     12000  /system/lib/libinput.so (BuildId: f1dcf30b8f21d99ff0c91856adc48b) (load bias 0x1000)
    ec79d000-ec7b0fff r-x     11000     14000  /system/lib/libinput.so (BuildId: f1dcf30b8f21d99ff0c91856adc48b) (load bias 0x1000)
    ec7b1000-ec7b3fff r--     24000      3000  /system/lib/libinput.so (BuildId: f1dcf30b8f21d99ff0c91856adc48b) (load bias 0x1000)
    ec7b4000-ec7b4fff rw-     26000      1000  /system/lib/libinput.so (BuildId: f1dcf30b8f21d99ff0c91856adc48b) (load bias 0x1000)
    ec7e3000-ec7edfff r--         0      b000  /system/lib/android.frameworks.bufferhub@1.0.so (BuildId: c70d1dd20d70db75cc9077103f1690) (load bias 0x1000)
    ec7ee000-ec7f9fff r-x      a000      c000  /system/lib/android.frameworks.bufferhub@1.0.so (BuildId: c70d1dd20d70db75cc9077103f1690) (load bias 0x1000)
    ec7fa000-ec7fbfff r--     15000      2000  /system/lib/android.frameworks.bufferhub@1.0.so (BuildId: c70d1dd20d70db75cc9077103f1690) (load bias 0x1000)
    ec7fc000-ec7fcfff rw-     16000      1000  /system/lib/android.frameworks.bufferhub@1.0.so (BuildId: c70d1dd20d70db75cc9077103f1690) (load bias 0x1000)
    ec818000-ec821fff r--         0      a000  /system/lib/android.hardware.configstore@1.1.so (BuildId: faefc6cc819e54deaa8fc64202706b) (load bias 0x1000)
    ec822000-ec82afff r-x      9000      9000  /system/lib/android.hardware.configstore@1.1.so (BuildId: faefc6cc819e54deaa8fc64202706b) (load bias 0x1000)
    ec82b000-ec82cfff r--     11000      2000  /system/lib/android.hardware.configstore@1.1.so (BuildId: faefc6cc819e54deaa8fc64202706b) (load bias 0x1000)
    ec82d000-ec82dfff rw-     12000      1000  /system/lib/android.hardware.configstore@1.1.so (BuildId: faefc6cc819e54deaa8fc64202706b) (load bias 0x1000)
    ec865000-ec865fff r--         0      1000  /system/lib/android.hardware.common-V1-ndk_platform.so (BuildId: f66fc6a1f3b7f02b67e72966b0f992) (load bias 0x1000)
    ec866000-ec866fff r-x         0      1000  /system/lib/android.hardware.common-V1-ndk_platform.so (BuildId: f66fc6a1f3b7f02b67e72966b0f992) (load bias 0x1000)
    ec867000-ec868fff r--         0      2000  /system/lib/android.hardware.common-V1-ndk_platform.so (BuildId: f66fc6a1f3b7f02b67e72966b0f992) (load bias 0x1000)
    ec869000-ec869fff rw-      1000      1000  /system/lib/android.hardware.common-V1-ndk_platform.so (BuildId: f66fc6a1f3b7f02b67e72966b0f992) (load bias 0x1000)
    ec8a9000-ec8acfff r--         0      4000  /system/lib/libGLESv1_CM.so (BuildId: 642b02538917f5b7445ad012e3e650) (load bias 0x1000)
    ec8ad000-ec8aefff r-x      3000      2000  /system/lib/libGLESv1_CM.so (BuildId: 642b02538917f5b7445ad012e3e650) (load bias 0x1000)
    ec8af000-ec8b0fff r--      4000      2000  /system/lib/libGLESv1_CM.so (BuildId: 642b02538917f5b7445ad012e3e650) (load bias 0x1000)
    ec8c6000-ec8e9fff r--         0     24000  /system/lib/android.hardware.media.c2@1.0.so (BuildId: e8ba3480fc5b4bea3065749b063811) (load bias 0x1000)
    ec8ea000-ec926fff r-x     23000     3d000  /system/lib/android.hardware.media.c2@1.0.so (BuildId: e8ba3480fc5b4bea3065749b063811) (load bias 0x1000)
    ec927000-ec92cfff r--     5f000      6000  /system/lib/android.hardware.media.c2@1.0.so (BuildId: e8ba3480fc5b4bea3065749b063811) (load bias 0x1000)
    ec92d000-ec92dfff rw-     64000      1000  /system/lib/android.hardware.media.c2@1.0.so (BuildId: e8ba3480fc5b4bea3065749b063811) (load bias 0x1000)
    ec94a000-ec9a8fff r--         0     5f000  /system/lib/libstagefright.so (BuildId: 5f24f7bf6d7f146840c6982d502f1b) (load bias 0x1000)
    ec9a9000-eca35fff r-x     5e000     8d000  /system/lib/libstagefright.so (BuildId: 5f24f7bf6d7f146840c6982d502f1b) (load bias 0x1000)
    eca36000-eca3efff r--     ea000      9000  /system/lib/libstagefright.so (BuildId: 5f24f7bf6d7f146840c6982d502f1b) (load bias 0x1000)
    eca3f000-eca3ffff rw-     f2000      1000  /system/lib/libstagefright.so (BuildId: 5f24f7bf6d7f146840c6982d502f1b) (load bias 0x1000)
    eca58000-eca59fff r--         0      2000  /system/lib/libutilscallstack.so (BuildId: a62003a92f9f90e7de18d90171d815) (load bias 0x1000)
    eca5a000-eca5bfff r-x      1000      2000  /system/lib/libutilscallstack.so (BuildId: a62003a92f9f90e7de18d90171d815) (load bias 0x1000)
    eca5c000-eca5dfff r--      2000      2000  /system/lib/libutilscallstack.so (BuildId: a62003a92f9f90e7de18d90171d815) (load bias 0x1000)
    eca84000-eca98fff r--         0     15000  /system/lib/android.hardware.camera.device@3.6.so (BuildId: 2bd013d2bc80ebb3263911ee33d04c) (load bias 0x1000)
    eca99000-ecaadfff r-x     14000     15000  /system/lib/android.hardware.camera.device@3.6.so (BuildId: 2bd013d2bc80ebb3263911ee33d04c) (load bias 0x1000)
    ecaae000-ecab1fff r--     28000      4000  /system/lib/android.hardware.camera.device@3.6.so (BuildId: 2bd013d2bc80ebb3263911ee33d04c) (load bias 0x1000)
    ecab2000-ecab2fff rw-     2b000      1000  /system/lib/android.hardware.camera.device@3.6.so (BuildId: 2bd013d2bc80ebb3263911ee33d04c) (load bias 0x1000)
    ecad7000-ecaf4fff r--         0     1e000  /system/lib/libpcre2.so (BuildId: c4f8e8f7d0bf7505a0d7e83a60897e) (load bias 0x1000)
    ecaf5000-ecb17fff r-x     1d000     23000  /system/lib/libpcre2.so (BuildId: c4f8e8f7d0bf7505a0d7e83a60897e) (load bias 0x1000)
    ecb18000-ecb18fff r--     3f000      1000  /system/lib/libpcre2.so (BuildId: c4f8e8f7d0bf7505a0d7e83a60897e) (load bias 0x1000)
    ecb19000-ecb19fff rw-     3f000      1000  /system/lib/libpcre2.so (BuildId: c4f8e8f7d0bf7505a0d7e83a60897e) (load bias 0x1000)
    ecb6c000-ecb6ffff r--         0      4000  /system/lib/libselinux.so (BuildId: d22148ee48457dd6c31fab8fe60ba6) (load bias 0x1000)
    ecb70000-ecb7cfff r-x      3000      d000  /system/lib/libselinux.so (BuildId: d22148ee48457dd6c31fab8fe60ba6) (load bias 0x1000)
    ecb7d000-ecb7dfff r--      f000      1000  /system/lib/libselinux.so (BuildId: d22148ee48457dd6c31fab8fe60ba6) (load bias 0x1000)
    ecb7e000-ecb7efff rw-      f000      1000  /system/lib/libselinux.so (BuildId: d22148ee48457dd6c31fab8fe60ba6) (load bias 0x1000)
    ecb7f000-ecb7ffff rw-         0      1000  [anon:.bss]
    ecba3000-ecbbcfff r--         0     1a000  /system/lib/libunwindstack.so (BuildId: daa2bc4f8273530c912374af177f12) (load bias 0x1000)
    ecbbd000-ecbf0fff r-x     19000     34000  /system/lib/libunwindstack.so (BuildId: daa2bc4f8273530c912374af177f12) (load bias 0x1000)
    ecbf1000-ecbf3fff r--     4c000      3000  /system/lib/libunwindstack.so (BuildId: daa2bc4f8273530c912374af177f12) (load bias 0x1000)
    ecbf4000-ecbf4fff rw-     4e000      1000  /system/lib/libunwindstack.so (BuildId: daa2bc4f8273530c912374af177f12) (load bias 0x1000)
    ecc13000-ecc14fff r--         0      2000  /system/lib/libaudiopolicy.so (BuildId: df407d011e84d9f18c6076fbd1fabe) (load bias 0x1000)
    ecc15000-ecc16fff r-x      1000      2000  /system/lib/libaudiopolicy.so (BuildId: df407d011e84d9f18c6076fbd1fabe) (load bias 0x1000)
    ecc17000-ecc17fff r--      2000      1000  /system/lib/libaudiopolicy.so (BuildId: df407d011e84d9f18c6076fbd1fabe) (load bias 0x1000)
    ecc73000-ecc73fff r--         0      1000  /system/lib/libspeexresampler.so (BuildId: a18ba6ee093e3f1a62cad0cdb12067) (load bias 0x1000)
    ecc74000-ecc76fff r-x         0      3000  /system/lib/libspeexresampler.so (BuildId: a18ba6ee093e3f1a62cad0cdb12067) (load bias 0x1000)
    ecc77000-ecc77fff r--      2000      1000  /system/lib/libspeexresampler.so (BuildId: a18ba6ee093e3f1a62cad0cdb12067) (load bias 0x1000)
    eccb6000-eccb6fff r--         0      1000  /system/lib/libcodec2.so (BuildId: 6a7a75100a009b2a3e82ebfae6c45b) (load bias 0x1000)
    eccb7000-eccb7fff r-x         0      1000  /system/lib/libcodec2.so (BuildId: 6a7a75100a009b2a3e82ebfae6c45b) (load bias 0x1000)
    eccb8000-eccb8fff r--         0      1000  /system/lib/libcodec2.so (BuildId: 6a7a75100a009b2a3e82ebfae6c45b) (load bias 0x1000)
    eccc7000-ecccbfff r--         0      5000  /system/lib/libgraphicsenv.so (BuildId: 685930229973cf766b0a9722bd1256) (load bias 0x1000)
    ecccc000-ecccffff r-x      4000      4000  /system/lib/libgraphicsenv.so (BuildId: 685930229973cf766b0a9722bd1256) (load bias 0x1000)
    eccd0000-eccd1fff r--      7000      2000  /system/lib/libgraphicsenv.so (BuildId: 685930229973cf766b0a9722bd1256) (load bias 0x1000)
    eccd2000-eccd2fff rw-      8000      1000  /system/lib/libgraphicsenv.so (BuildId: 685930229973cf766b0a9722bd1256) (load bias 0x1000)
    ecd37000-ecd37fff r--         0      1000  /system/lib/android.hardware.media@1.0.so (BuildId: 945e92f88acaeda3571844c953247d) (load bias 0x1000)
    ecd38000-ecd38fff r-x         0      1000  /system/lib/android.hardware.media@1.0.so (BuildId: 945e92f88acaeda3571844c953247d) (load bias 0x1000)
    ecd39000-ecd39fff r--         0      1000  /system/lib/android.hardware.media@1.0.so (BuildId: 945e92f88acaeda3571844c953247d) (load bias 0x1000)
    ecd65000-ecd65fff r--         0      1000  /system/lib/libsync.so (BuildId: ca124b596a13cabea87014faa9dc57) (load bias 0x1000)
    ecd66000-ecd66fff r-x         0      1000  /system/lib/libsync.so (BuildId: ca124b596a13cabea87014faa9dc57) (load bias 0x1000)
    ecd67000-ecd67fff r--         0      1000  /system/lib/libsync.so (BuildId: ca124b596a13cabea87014faa9dc57) (load bias 0x1000)
    ecd68000-ecd68fff rw-         0      1000  /system/lib/libsync.so (BuildId: ca124b596a13cabea87014faa9dc57) (load bias 0x1000)
    ecdaa000-ecdaafff r--         0      1000  /system/lib/libcodec2_hidl_client@1.1.so (BuildId: 4a3bdf029c88b44ac9f3c0337851bb) (load bias 0x1000)
    ecdab000-ecdabfff r-x         0      1000  /system/lib/libcodec2_hidl_client@1.1.so (BuildId: 4a3bdf029c88b44ac9f3c0337851bb) (load bias 0x1000)
    ecdac000-ecdacfff r--         0      1000  /system/lib/libcodec2_hidl_client@1.1.so (BuildId: 4a3bdf029c88b44ac9f3c0337851bb) (load bias 0x1000)
    ecdd2000-ecdd3fff r--         0      2000  /system/lib/libstagefright_omx_utils.so (BuildId: 3d2973faa7d13ecc1a0c9abe7fdc39) (load bias 0x1000)
    ecdd4000-ecdd5fff r-x      1000      2000  /system/lib/libstagefright_omx_utils.so (BuildId: 3d2973faa7d13ecc1a0c9abe7fdc39) (load bias 0x1000)
    ecdd6000-ecdd6fff r--      2000      1000  /system/lib/libstagefright_omx_utils.so (BuildId: 3d2973faa7d13ecc1a0c9abe7fdc39) (load bias 0x1000)
    ecdd7000-ecdd7fff rw-      2000      1000  /system/lib/libstagefright_omx_utils.so (BuildId: 3d2973faa7d13ecc1a0c9abe7fdc39) (load bias 0x1000)
    ece0d000-ece11fff r--         0      5000  /system/lib/libmediametrics.so (BuildId: c7d1590407da55e9e010d5f28bffd7) (load bias 0x1000)
    ece12000-ece18fff r-x      4000      7000  /system/lib/libmediametrics.so (BuildId: c7d1590407da55e9e010d5f28bffd7) (load bias 0x1000)
    ece19000-ece1afff r--      a000      2000  /system/lib/libmediametrics.so (BuildId: c7d1590407da55e9e010d5f28bffd7) (load bias 0x1000)
    ece1b000-ece1bfff rw-      b000      1000  /system/lib/libmediametrics.so (BuildId: c7d1590407da55e9e010d5f28bffd7) (load bias 0x1000)
    ece56000-ece65fff r--         0     10000  /system/lib/android.hardware.media.bufferpool@2.0.so (BuildId: 44e0d487f4e7191c9dbdc2eea02765) (load bias 0x1000)
    ece66000-ece78fff r-x      f000     13000  /system/lib/android.hardware.media.bufferpool@2.0.so (BuildId: 44e0d487f4e7191c9dbdc2eea02765) (load bias 0x1000)
    ece79000-ece7bfff r--     21000      3000  /system/lib/android.hardware.media.bufferpool@2.0.so (BuildId: 44e0d487f4e7191c9dbdc2eea02765) (load bias 0x1000)
    ece7c000-ece7cfff rw-     23000      1000  /system/lib/android.hardware.media.bufferpool@2.0.so (BuildId: 44e0d487f4e7191c9dbdc2eea02765) (load bias 0x1000)
    ece8a000-ece97fff r--         0      e000  /system/lib/android.frameworks.cameraservice.service@2.1.so (BuildId: 191ccb1db9e3889df71752323d14ad) (load bias 0x1000)
    ece98000-ecea4fff r-x      d000      d000  /system/lib/android.frameworks.cameraservice.service@2.1.so (BuildId: 191ccb1db9e3889df71752323d14ad) (load bias 0x1000)
    ecea5000-ecea6fff r--     19000      2000  /system/lib/android.frameworks.cameraservice.service@2.1.so (BuildId: 191ccb1db9e3889df71752323d14ad) (load bias 0x1000)
    ecea7000-ecea7fff rw-     1a000      1000  /system/lib/android.frameworks.cameraservice.service@2.1.so (BuildId: 191ccb1db9e3889df71752323d14ad) (load bias 0x1000)
    ecee1000-ecee2fff r--         0      2000  /system/lib/libaudiomanager.so (BuildId: d8ead402c085295da9cb877d43d45b) (load bias 0x1000)
    ecee3000-ecee4fff r-x      1000      2000  /system/lib/libaudiomanager.so (BuildId: d8ead402c085295da9cb877d43d45b) (load bias 0x1000)
    ecee5000-ecee5fff r--      2000      1000  /system/lib/libaudiomanager.so (BuildId: d8ead402c085295da9cb877d43d45b) (load bias 0x1000)
    ecee6000-ecee6fff rw-      2000      1000  /system/lib/libaudiomanager.so (BuildId: d8ead402c085295da9cb877d43d45b) (load bias 0x1000)
    ecf11000-ecf20fff r--         0     10000  /system/lib/android.frameworks.cameraservice.device@2.0.so (BuildId: 131c7781de5415b97c904eeb6f04cd) (load bias 0x1000)
    ecf21000-ecf36fff r-x      f000     16000  /system/lib/android.frameworks.cameraservice.device@2.0.so (BuildId: 131c7781de5415b97c904eeb6f04cd) (load bias 0x1000)
    ecf37000-ecf38fff r--     24000      2000  /system/lib/android.frameworks.cameraservice.device@2.0.so (BuildId: 131c7781de5415b97c904eeb6f04cd) (load bias 0x1000)
    ecf39000-ecf39fff rw-     25000      1000  /system/lib/android.frameworks.cameraservice.device@2.0.so (BuildId: 131c7781de5415b97c904eeb6f04cd) (load bias 0x1000)
    ecf4a000-ecf59fff r--         0     10000  /system/lib/libstagefright_bufferpool@2.0.1.so (BuildId: c69cd0cc4f07ae8971b6cfd57bfc8d) (load bias 0x1000)
    ecf5a000-ecf68fff r-x      f000      f000  /system/lib/libstagefright_bufferpool@2.0.1.so (BuildId: c69cd0cc4f07ae8971b6cfd57bfc8d) (load bias 0x1000)
    ecf69000-ecf6afff r--     1d000      2000  /system/lib/libstagefright_bufferpool@2.0.1.so (BuildId: c69cd0cc4f07ae8971b6cfd57bfc8d) (load bias 0x1000)
    ecf6b000-ecf6bfff rw-     1e000      1000  /system/lib/libstagefright_bufferpool@2.0.1.so (BuildId: c69cd0cc4f07ae8971b6cfd57bfc8d) (load bias 0x1000)
    ecf88000-ecf97fff r--         0     10000  /system/lib/android.hardware.graphics.bufferqueue@1.0.so (BuildId: 1e3f0db25b7406667ad7b9dbd962f8) (load bias 0x1000)
    ecf98000-ecfb0fff r-x      f000     19000  /system/lib/android.hardware.graphics.bufferqueue@1.0.so (BuildId: 1e3f0db25b7406667ad7b9dbd962f8) (load bias 0x1000)
    ecfb1000-ecfb3fff r--     27000      3000  /system/lib/android.hardware.graphics.bufferqueue@1.0.so (BuildId: 1e3f0db25b7406667ad7b9dbd962f8) (load bias 0x1000)
    ecfb4000-ecfb4fff rw-     29000      1000  /system/lib/android.hardware.graphics.bufferqueue@1.0.so (BuildId: 1e3f0db25b7406667ad7b9dbd962f8) (load bias 0x1000)
    ecfd0000-ecfdbfff r--         0      c000  /system/lib/android.frameworks.cameraservice.service@2.0.so (BuildId: 038bd0cdd7a3f228b6ce095f064849) (load bias 0x1000)
    ecfdc000-ecfe9fff r-x      b000      e000  /system/lib/android.frameworks.cameraservice.service@2.0.so (BuildId: 038bd0cdd7a3f228b6ce095f064849) (load bias 0x1000)
    ecfea000-ecfecfff r--     18000      3000  /system/lib/android.frameworks.cameraservice.service@2.0.so (BuildId: 038bd0cdd7a3f228b6ce095f064849) (load bias 0x1000)
    ecfed000-ecfedfff rw-     1a000      1000  /system/lib/android.frameworks.cameraservice.service@2.0.so (BuildId: 038bd0cdd7a3f228b6ce095f064849) (load bias 0x1000)
    ed02d000-ed034fff r--         0      8000  /system/lib/android.hardware.graphics.allocator@2.0.so (BuildId: b382da87bbce7ffd49b0471de574ca) (load bias 0x1000)
    ed035000-ed03bfff r-x      7000      7000  /system/lib/android.hardware.graphics.allocator@2.0.so (BuildId: b382da87bbce7ffd49b0471de574ca) (load bias 0x1000)
    ed03c000-ed03dfff r--      d000      2000  /system/lib/android.hardware.graphics.allocator@2.0.so (BuildId: b382da87bbce7ffd49b0471de574ca) (load bias 0x1000)
    ed03e000-ed03efff rw-      e000      1000  /system/lib/android.hardware.graphics.allocator@2.0.so (BuildId: b382da87bbce7ffd49b0471de574ca) (load bias 0x1000)
    ed044000-ed04ffff r--         0      c000  /system/lib/android.hardware.camera.provider@2.4.so (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced) (load bias 0x1000)
    ed050000-ed05efff r-x      b000      f000  /system/lib/android.hardware.camera.provider@2.4.so (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced) (load bias 0x1000)
    ed05f000-ed060fff r--     19000      2000  /system/lib/android.hardware.camera.provider@2.4.so (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced) (load bias 0x1000)
    ed061000-ed061fff rw-     1a000      1000  /system/lib/android.hardware.camera.provider@2.4.so (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced) (load bias 0x1000)
    ed09b000-ed09bfff r--         0      1000  /system/lib/android.hardware.camera.common@1.0.so (BuildId: d60da9f1350924d3525406616188a8) (load bias 0x1000)
    ed09c000-ed09cfff r-x         0      1000  /system/lib/android.hardware.camera.common@1.0.so (BuildId: d60da9f1350924d3525406616188a8) (load bias 0x1000)
    ed09d000-ed09dfff r--         0      1000  /system/lib/android.hardware.camera.common@1.0.so (BuildId: d60da9f1350924d3525406616188a8) (load bias 0x1000)
    ed0d9000-ed0e3fff r--         0      b000  /system/lib/libmediautils.so (BuildId: b98b3b93f0bf1e4dfbf20a2fa65db1) (load bias 0x1000)
    ed0e4000-ed0f9fff r-x      a000     16000  /system/lib/libmediautils.so (BuildId: b98b3b93f0bf1e4dfbf20a2fa65db1) (load bias 0x1000)
    ed0fa000-ed0fbfff r--     1f000      2000  /system/lib/libmediautils.so (BuildId: b98b3b93f0bf1e4dfbf20a2fa65db1) (load bias 0x1000)
    ed0fc000-ed0fcfff rw-     20000      1000  /system/lib/libmediautils.so (BuildId: b98b3b93f0bf1e4dfbf20a2fa65db1) (load bias 0x1000)
    ed0fd000-ed0fdfff rw-         0      1000  [anon:.bss]
    ed136000-ed136fff r--         0      1000  /system/lib/android.hardware.graphics.common@1.2.so (BuildId: 8239a04a00216c639cc5b8011a6233) (load bias 0x1000)
    ed137000-ed137fff r-x         0      1000  /system/lib/android.hardware.graphics.common@1.2.so (BuildId: 8239a04a00216c639cc5b8011a6233) (load bias 0x1000)
    ed138000-ed138fff r--         0      1000  /system/lib/android.hardware.graphics.common@1.2.so (BuildId: 8239a04a00216c639cc5b8011a6233) (load bias 0x1000)
    ed144000-ed14cfff r--         0      9000  /system/system_ext/lib/vendor.qti.hardware.camera.device@1.0.so (BuildId: 02850db2faa219cbe59c6777e275df) (load bias 0x1000)
    ed14d000-ed154fff r-x      8000      8000  /system/system_ext/lib/vendor.qti.hardware.camera.device@1.0.so (BuildId: 02850db2faa219cbe59c6777e275df) (load bias 0x1000)
    ed155000-ed156fff r--      f000      2000  /system/system_ext/lib/vendor.qti.hardware.camera.device@1.0.so (BuildId: 02850db2faa219cbe59c6777e275df) (load bias 0x1000)
    ed157000-ed157fff rw-     10000      1000  /system/system_ext/lib/vendor.qti.hardware.camera.device@1.0.so (BuildId: 02850db2faa219cbe59c6777e275df) (load bias 0x1000)
    ed1b3000-ed1b3fff r--         0      1000  /system/lib/libhidlallocatorutils.so (BuildId: f59b0b224b8ac8ea99623596399f99) (load bias 0x1000)
    ed1b4000-ed1b4fff r-x         0      1000  /system/lib/libhidlallocatorutils.so (BuildId: f59b0b224b8ac8ea99623596399f99) (load bias 0x1000)
    ed1b5000-ed1b5fff r--         0      1000  /system/lib/libhidlallocatorutils.so (BuildId: f59b0b224b8ac8ea99623596399f99) (load bias 0x1000)
    ed1c3000-ed1d7fff r--         0     15000  /system/lib/android.hardware.camera.device@1.0.so (BuildId: e64d8d2da6c5ad025ec04b12dd1aff) (load bias 0x1000)
    ed1d8000-ed1fbfff r-x     14000     24000  /system/lib/android.hardware.camera.device@1.0.so (BuildId: e64d8d2da6c5ad025ec04b12dd1aff) (load bias 0x1000)
    ed1fc000-ed1fefff r--     37000      3000  /system/lib/android.hardware.camera.device@1.0.so (BuildId: e64d8d2da6c5ad025ec04b12dd1aff) (load bias 0x1000)
    ed1ff000-ed1fffff rw-     39000      1000  /system/lib/android.hardware.camera.device@1.0.so (BuildId: e64d8d2da6c5ad025ec04b12dd1aff) (load bias 0x1000)
    ed209000-ed219fff r--         0     11000  /system/lib/android.hardware.cas@1.0.so (BuildId: 4785d7f48e05d4467a03d93b4ac1cf) (load bias 0x1000)
    ed21a000-ed233fff r-x     10000     1a000  /system/lib/android.hardware.cas@1.0.so (BuildId: 4785d7f48e05d4467a03d93b4ac1cf) (load bias 0x1000)
    ed234000-ed237fff r--     29000      4000  /system/lib/android.hardware.cas@1.0.so (BuildId: 4785d7f48e05d4467a03d93b4ac1cf) (load bias 0x1000)
    ed238000-ed238fff rw-     2c000      1000  /system/lib/android.hardware.cas@1.0.so (BuildId: 4785d7f48e05d4467a03d93b4ac1cf) (load bias 0x1000)
    ed258000-ed262fff r--         0      b000  /system/lib/libmedia_omx.so (BuildId: eb57a3e7d443b9a5c07ac460da1a5c) (load bias 0x1000)
    ed263000-ed26efff r-x      a000      c000  /system/lib/libmedia_omx.so (BuildId: eb57a3e7d443b9a5c07ac460da1a5c) (load bias 0x1000)
    ed26f000-ed272fff r--     15000      4000  /system/lib/libmedia_omx.so (BuildId: eb57a3e7d443b9a5c07ac460da1a5c) (load bias 0x1000)
    ed273000-ed273fff rw-     18000      1000  /system/lib/libmedia_omx.so (BuildId: eb57a3e7d443b9a5c07ac460da1a5c) (load bias 0x1000)
    ed2ac000-ed2acfff r--         0      1000  /apex/com.android.runtime/lib/bionic/libdl_android.so (BuildId: 3ee98ca7c0608e7485ed2c38198132) (load bias 0x1000)
    ed2ad000-ed2adfff r-x         0      1000  /apex/com.android.runtime/lib/bionic/libdl_android.so (BuildId: 3ee98ca7c0608e7485ed2c38198132) (load bias 0x1000)
    ed2ae000-ed2aefff r--         0      1000  /apex/com.android.runtime/lib/bionic/libdl_android.so (BuildId: 3ee98ca7c0608e7485ed2c38198132) (load bias 0x1000)
    ed2e5000-ed2eafff r--         0      6000  /system/lib/libgralloctypes.so (BuildId: be30e496f551130cb28d49361d7eb8) (load bias 0x1000)
    ed2eb000-ed2f1fff r-x      5000      7000  /system/lib/libgralloctypes.so (BuildId: be30e496f551130cb28d49361d7eb8) (load bias 0x1000)
    ed2f2000-ed2f2fff r--      b000      1000  /system/lib/libgralloctypes.so (BuildId: be30e496f551130cb28d49361d7eb8) (load bias 0x1000)
    ed2f3000-ed2f3fff rw-      b000      1000  /system/lib/libgralloctypes.so (BuildId: be30e496f551130cb28d49361d7eb8) (load bias 0x1000)
    ed2f4000-ed2f4fff rw-         0      1000  [anon:.bss]
    ed304000-ed308fff r--         0      5000  /system/lib/libmemunreachable.so (BuildId: 8d4aa81216cdf24c77cdd06948c017) (load bias 0x1000)
    ed309000-ed321fff r-x      4000     19000  /system/lib/libmemunreachable.so (BuildId: 8d4aa81216cdf24c77cdd06948c017) (load bias 0x1000)
    ed322000-ed323fff r--     1c000      2000  /system/lib/libmemunreachable.so (BuildId: 8d4aa81216cdf24c77cdd06948c017) (load bias 0x1000)
    ed324000-ed324fff rw-     1d000      1000  /system/lib/libmemunreachable.so (BuildId: 8d4aa81216cdf24c77cdd06948c017) (load bias 0x1000)
    ed360000-ed367fff r--         0      8000  /system/lib/android.hardware.graphics.allocator@3.0.so (BuildId: c3c6c2e9ad4dbe987427b0cafc1fe7) (load bias 0x1000)
    ed368000-ed36efff r-x      7000      7000  /system/lib/android.hardware.graphics.allocator@3.0.so (BuildId: c3c6c2e9ad4dbe987427b0cafc1fe7) (load bias 0x1000)
    ed36f000-ed370fff r--      d000      2000  /system/lib/android.hardware.graphics.allocator@3.0.so (BuildId: c3c6c2e9ad4dbe987427b0cafc1fe7) (load bias 0x1000)
    ed371000-ed371fff rw-      e000      1000  /system/lib/android.hardware.graphics.allocator@3.0.so (BuildId: c3c6c2e9ad4dbe987427b0cafc1fe7) (load bias 0x1000)
    ed386000-ed393fff r--         0      e000  /system/lib/libnblog.so (BuildId: 400d4be1d6aaecd9b3138791c42e65) (load bias 0x1000)
    ed394000-ed3a7fff r-x      d000     14000  /system/lib/libnblog.so (BuildId: 400d4be1d6aaecd9b3138791c42e65) (load bias 0x1000)
    ed3a8000-ed3a8fff r--     20000      1000  /system/lib/libnblog.so (BuildId: 400d4be1d6aaecd9b3138791c42e65) (load bias 0x1000)
    ed3a9000-ed3a9fff rw-     20000      1000  /system/lib/libnblog.so (BuildId: 400d4be1d6aaecd9b3138791c42e65) (load bias 0x1000)
    ed3ef000-ed3f2fff r--         0      4000  /system/lib/libbufferhub.so (BuildId: b5d2dffaf080d1fbe5da81438fdca6) (load bias 0x1000)
    ed3f3000-ed3f9fff r-x      3000      7000  /system/lib/libbufferhub.so (BuildId: b5d2dffaf080d1fbe5da81438fdca6) (load bias 0x1000)
    ed3fa000-ed3fafff r--      9000      1000  /system/lib/libbufferhub.so (BuildId: b5d2dffaf080d1fbe5da81438fdca6) (load bias 0x1000)
    ed3fb000-ed3fbfff rw-      9000      1000  /system/lib/libbufferhub.so (BuildId: b5d2dffaf080d1fbe5da81438fdca6) (load bias 0x1000)
    ed43d000-ed43dfff r--         0      1000  /system/lib/libpackagelistparser.so (BuildId: 079155d74c6e5c5311f5dcd20b1442) (load bias 0x1000)
    ed43e000-ed43efff r-x         0      1000  /system/lib/libpackagelistparser.so (BuildId: 079155d74c6e5c5311f5dcd20b1442) (load bias 0x1000)
    ed43f000-ed43ffff r--         0      1000  /system/lib/libpackagelistparser.so (BuildId: 079155d74c6e5c5311f5dcd20b1442) (load bias 0x1000)
    ed461000-ed479fff r--         0     19000  /system/lib/android.hardware.drm@1.0.so (BuildId: 4acbfedcbdcd40b0d408ec3f4c1910) (load bias 0x1000)
    ed47a000-ed4a7fff r-x     18000     2e000  /system/lib/android.hardware.drm@1.0.so (BuildId: 4acbfedcbdcd40b0d408ec3f4c1910) (load bias 0x1000)
    ed4a8000-ed4acfff r--     45000      5000  /system/lib/android.hardware.drm@1.0.so (BuildId: 4acbfedcbdcd40b0d408ec3f4c1910) (load bias 0x1000)
    ed4ad000-ed4adfff rw-     49000      1000  /system/lib/android.hardware.drm@1.0.so (BuildId: 4acbfedcbdcd40b0d408ec3f4c1910) (load bias 0x1000)
    ed4d3000-ed4d3fff r--         0      1000  /system/lib/libion.so (BuildId: 6b359cccea1b2486bee4d20b178fb2) (load bias 0x1000)
    ed4d4000-ed4d5fff r-x         0      2000  /system/lib/libion.so (BuildId: 6b359cccea1b2486bee4d20b178fb2) (load bias 0x1000)
    ed4d6000-ed4d6fff r--      1000      1000  /system/lib/libion.so (BuildId: 6b359cccea1b2486bee4d20b178fb2) (load bias 0x1000)
    ed4d7000-ed4d7fff rw-      1000      1000  /system/lib/libion.so (BuildId: 6b359cccea1b2486bee4d20b178fb2) (load bias 0x1000)
    ed523000-ed52cfff r--         0      a000  /system/lib/android.hidl.memory@1.0.so (BuildId: 38b11267187dd41df199d3f8425ad0) (load bias 0x1000)
    ed52d000-ed539fff r-x      9000      d000  /system/lib/android.hidl.memory@1.0.so (BuildId: 38b11267187dd41df199d3f8425ad0) (load bias 0x1000)
    ed53a000-ed53bfff r--     15000      2000  /system/lib/android.hidl.memory@1.0.so (BuildId: 38b11267187dd41df199d3f8425ad0) (load bias 0x1000)
    ed53c000-ed53cfff rw-     16000      1000  /system/lib/android.hidl.memory@1.0.so (BuildId: 38b11267187dd41df199d3f8425ad0) (load bias 0x1000)
    ed545000-ed54efff r--         0      a000  /system/lib/libcodec2_client.so (BuildId: 9dc966fcee48fc25530ab87f4529d3) (load bias 0x1000)
    ed54f000-ed55cfff r-x      9000      e000  /system/lib/libcodec2_client.so (BuildId: 9dc966fcee48fc25530ab87f4529d3) (load bias 0x1000)
    ed55d000-ed55dfff r--     16000      1000  /system/lib/libcodec2_client.so (BuildId: 9dc966fcee48fc25530ab87f4529d3) (load bias 0x1000)
    ed55e000-ed55efff rw-     16000      1000  /system/lib/libcodec2_client.so (BuildId: 9dc966fcee48fc25530ab87f4529d3) (load bias 0x1000)
    ed5a3000-ed5adfff r--         0      b000  /system/lib/android.hardware.graphics.mapper@4.0.so (BuildId: 7079e2a8967d0f42452e5644e96c3d) (load bias 0x1000)
    ed5ae000-ed5bbfff r-x      a000      e000  /system/lib/android.hardware.graphics.mapper@4.0.so (BuildId: 7079e2a8967d0f42452e5644e96c3d) (load bias 0x1000)
    ed5bc000-ed5bdfff r--     17000      2000  /system/lib/android.hardware.graphics.mapper@4.0.so (BuildId: 7079e2a8967d0f42452e5644e96c3d) (load bias 0x1000)
    ed5be000-ed5befff rw-     18000      1000  /system/lib/android.hardware.graphics.mapper@4.0.so (BuildId: 7079e2a8967d0f42452e5644e96c3d) (load bias 0x1000)
    ed5c9000-ed5d2fff r--         0      a000  /system/lib/libbase.so (BuildId: 76191a1fb7b4892ba5b3fdb2384424) (load bias 0x1000)
    ed5d3000-ed5f2fff r-x      9000     20000  /system/lib/libbase.so (BuildId: 76191a1fb7b4892ba5b3fdb2384424) (load bias 0x1000)
    ed5f3000-ed5f3fff r--     28000      1000  /system/lib/libbase.so (BuildId: 76191a1fb7b4892ba5b3fdb2384424) (load bias 0x1000)
    ed5f4000-ed5f4fff rw-     28000      1000  /system/lib/libbase.so (BuildId: 76191a1fb7b4892ba5b3fdb2384424) (load bias 0x1000)
    ed61a000-ed61cfff r--         0      3000  /system/lib/liblog.so (BuildId: ea3b7544f61ab43cd60aa36b33e2b9) (load bias 0x1000)
    ed61d000-ed625fff r-x      2000      9000  /system/lib/liblog.so (BuildId: ea3b7544f61ab43cd60aa36b33e2b9) (load bias 0x1000)
    ed626000-ed627fff r--      a000      2000  /system/lib/liblog.so (BuildId: ea3b7544f61ab43cd60aa36b33e2b9) (load bias 0x1000)
    ed628000-ed628fff rw-      b000      1000  /system/lib/liblog.so (BuildId: ea3b7544f61ab43cd60aa36b33e2b9) (load bias 0x1000)
    ed650000-ed658fff r--         0      9000  /system/lib/android.hardware.camera.device@3.3.so (BuildId: 9a853dcd08326c98855db9a219cadb) (load bias 0x1000)
    ed659000-ed660fff r-x      8000      8000  /system/lib/android.hardware.camera.device@3.3.so (BuildId: 9a853dcd08326c98855db9a219cadb) (load bias 0x1000)
    ed661000-ed662fff r--      f000      2000  /system/lib/android.hardware.camera.device@3.3.so (BuildId: 9a853dcd08326c98855db9a219cadb) (load bias 0x1000)
    ed663000-ed663fff rw-     10000      1000  /system/lib/android.hardware.camera.device@3.3.so (BuildId: 9a853dcd08326c98855db9a219cadb) (load bias 0x1000)
    ed684000-ed6b6fff r--         0     33000  /system/lib/libbinder.so (BuildId: 143a2f61bb86fec9ad94912bba365f) (load bias 0x1000)
    ed6b7000-ed6e7fff r-x     32000     31000  /system/lib/libbinder.so (BuildId: 143a2f61bb86fec9ad94912bba365f) (load bias 0x1000)
    ed6e8000-ed6f1fff r--     62000      a000  /system/lib/libbinder.so (BuildId: 143a2f61bb86fec9ad94912bba365f) (load bias 0x1000)
    ed6f2000-ed6f3fff rw-     6b000      2000  /system/lib/libbinder.so (BuildId: 143a2f61bb86fec9ad94912bba365f) (load bias 0x1000)
    ed704000-ed70cfff r--         0      9000  /system/lib/android.hardware.camera.provider@2.5.so (BuildId: 301f3f09d0133cb5e29089353694f0) (load bias 0x1000)
    ed70d000-ed714fff r-x      8000      8000  /system/lib/android.hardware.camera.provider@2.5.so (BuildId: 301f3f09d0133cb5e29089353694f0) (load bias 0x1000)
    ed715000-ed716fff r--      f000      2000  /system/lib/android.hardware.camera.provider@2.5.so (BuildId: 301f3f09d0133cb5e29089353694f0) (load bias 0x1000)
    ed717000-ed717fff rw-     10000      1000  /system/lib/android.hardware.camera.provider@2.5.so (BuildId: 301f3f09d0133cb5e29089353694f0) (load bias 0x1000)
    ed748000-ed756fff r--         0      f000  /system/lib/android.hardware.media.c2@1.1.so (BuildId: 9ac0ce14689626b094034678f06201) (load bias 0x1000)
    ed757000-ed767fff r-x      e000     11000  /system/lib/android.hardware.media.c2@1.1.so (BuildId: 9ac0ce14689626b094034678f06201) (load bias 0x1000)
    ed768000-ed76afff r--     1e000      3000  /system/lib/android.hardware.media.c2@1.1.so (BuildId: 9ac0ce14689626b094034678f06201) (load bias 0x1000)
    ed76b000-ed76bfff rw-     20000      1000  /system/lib/android.hardware.media.c2@1.1.so (BuildId: 9ac0ce14689626b094034678f06201) (load bias 0x1000)
    ed798000-ed7a0fff r--         0      9000  /system/lib/libaudioutils.so (BuildId: d75276490439cc20f2ee8f769e6f33) (load bias 0x1000)
    ed7a1000-ed7affff r-x      8000      f000  /system/lib/libaudioutils.so (BuildId: d75276490439cc20f2ee8f769e6f33) (load bias 0x1000)
    ed7b0000-ed7b1fff r--     16000      2000  /system/lib/libaudioutils.so (BuildId: d75276490439cc20f2ee8f769e6f33) (load bias 0x1000)
    ed7e0000-ed7e8fff r--         0      9000  /system/lib/android.hardware.graphics.mapper@3.0.so (BuildId: 8e8f7ddff12d3740bf47a08587e119) (load bias 0x1000)
    ed7e9000-ed7f2fff r-x      8000      a000  /system/lib/android.hardware.graphics.mapper@3.0.so (BuildId: 8e8f7ddff12d3740bf47a08587e119) (load bias 0x1000)
    ed7f3000-ed7f4fff r--     11000      2000  /system/lib/android.hardware.graphics.mapper@3.0.so (BuildId: 8e8f7ddff12d3740bf47a08587e119) (load bias 0x1000)
    ed7f5000-ed7f5fff rw-     12000      1000  /system/lib/android.hardware.graphics.mapper@3.0.so (BuildId: 8e8f7ddff12d3740bf47a08587e119) (load bias 0x1000)
    ed834000-ed834fff r--         0      1000  /system/lib/libnativeloader_lazy.so (BuildId: 0d8d2d4a6000db33b519fc3f8d9f02) (load bias 0x1000)
    ed835000-ed835fff r-x         0      1000  /system/lib/libnativeloader_lazy.so (BuildId: 0d8d2d4a6000db33b519fc3f8d9f02) (load bias 0x1000)
    ed836000-ed836fff r--         0      1000  /system/lib/libnativeloader_lazy.so (BuildId: 0d8d2d4a6000db33b519fc3f8d9f02) (load bias 0x1000)
    ed837000-ed837fff rw-         0      1000  /system/lib/libnativeloader_lazy.so (BuildId: 0d8d2d4a6000db33b519fc3f8d9f02) (load bias 0x1000)
    ed869000-ed86ffff r--         0      7000  /system/lib/android.hidl.token@1.0.so (BuildId: 7ed3fa8524e2daa3088a588fe6a06f) (load bias 0x1000)
    ed870000-ed878fff r-x      6000      9000  /system/lib/android.hidl.token@1.0.so (BuildId: 7ed3fa8524e2daa3088a588fe6a06f) (load bias 0x1000)
    ed879000-ed879fff r--      e000      1000  /system/lib/android.hidl.token@1.0.so (BuildId: 7ed3fa8524e2daa3088a588fe6a06f) (load bias 0x1000)
    ed87a000-ed87afff rw-      e000      1000  /system/lib/android.hidl.token@1.0.so (BuildId: 7ed3fa8524e2daa3088a588fe6a06f) (load bias 0x1000)
    ed889000-ed88dfff r--         0      5000  /system/lib/libdatasource.so (BuildId: edd944f666fba0bc1eba7c68b1e83c) (load bias 0x1000)
    ed88e000-ed893fff r-x      4000      6000  /system/lib/libdatasource.so (BuildId: edd944f666fba0bc1eba7c68b1e83c) (load bias 0x1000)
    ed894000-ed895fff r--      9000      2000  /system/lib/libdatasource.so (BuildId: edd944f666fba0bc1eba7c68b1e83c) (load bias 0x1000)
    ed896000-ed896fff rw-      a000      1000  /system/lib/libdatasource.so (BuildId: edd944f666fba0bc1eba7c68b1e83c) (load bias 0x1000)
    ed8cc000-ed8d2fff r--         0      7000  /system/lib/android.hardware.graphics.allocator@4.0.so (BuildId: a0994d3e5cc52970348842c82ec1d4) (load bias 0x1000)
    ed8d3000-ed8d9fff r-x      6000      7000  /system/lib/android.hardware.graphics.allocator@4.0.so (BuildId: a0994d3e5cc52970348842c82ec1d4) (load bias 0x1000)
    ed8da000-ed8dbfff r--      c000      2000  /system/lib/android.hardware.graphics.allocator@4.0.so (BuildId: a0994d3e5cc52970348842c82ec1d4) (load bias 0x1000)
    ed8dc000-ed8dcfff rw-      d000      1000  /system/lib/android.hardware.graphics.allocator@4.0.so (BuildId: a0994d3e5cc52970348842c82ec1d4) (load bias 0x1000)
    ed929000-ed92cfff r--         0      4000  /system/lib/libcamera_metadata.so (BuildId: e32a2a3ea421d7655b0a1b8d184aec) (load bias 0x1000)
    ed92d000-ed931fff r-x      3000      5000  /system/lib/libcamera_metadata.so (BuildId: e32a2a3ea421d7655b0a1b8d184aec) (load bias 0x1000)
    ed932000-ed932fff r--      7000      1000  /system/lib/libcamera_metadata.so (BuildId: e32a2a3ea421d7655b0a1b8d184aec) (load bias 0x1000)
    ed933000-ed934fff rw-      7000      2000  /system/lib/libcamera_metadata.so (BuildId: e32a2a3ea421d7655b0a1b8d184aec) (load bias 0x1000)
    ed943000-ed94dfff r--         0      b000  /system/lib/libsfplugin_ccodec_utils.so (BuildId: bbb1468334932ead24090352381319) (load bias 0x1000)
    ed94e000-ed973fff r-x      a000     26000  /system/lib/libsfplugin_ccodec_utils.so (BuildId: bbb1468334932ead24090352381319) (load bias 0x1000)
    ed974000-ed974fff r--     2f000      1000  /system/lib/libsfplugin_ccodec_utils.so (BuildId: bbb1468334932ead24090352381319) (load bias 0x1000)
    ed975000-ed975fff rw-     2f000      1000  /system/lib/libsfplugin_ccodec_utils.so (BuildId: bbb1468334932ead24090352381319) (load bias 0x1000)
    ed976000-ed976fff rw-         0      1000  [anon:.bss]
    ed99d000-ed9a2fff r--         0      6000  /system/lib/libaudiofoundation.so (BuildId: 83763e62e69e8104e90edd2d83deb5) (load bias 0x1000)
    ed9a3000-ed9a9fff r-x      5000      7000  /system/lib/libaudiofoundation.so (BuildId: 83763e62e69e8104e90edd2d83deb5) (load bias 0x1000)
    ed9aa000-ed9abfff r--      b000      2000  /system/lib/libaudiofoundation.so (BuildId: 83763e62e69e8104e90edd2d83deb5) (load bias 0x1000)
    ed9ac000-ed9acfff rw-      c000      1000  /system/lib/libaudiofoundation.so (BuildId: 83763e62e69e8104e90edd2d83deb5) (load bias 0x1000)
    ed9c2000-ed9c5fff r--         0      4000  /system/lib/libsensorprivacy.so (BuildId: 67e617eec4da30c54dbd2bab964423) (load bias 0x1000)
    ed9c6000-ed9c8fff r-x      3000      3000  /system/lib/libsensorprivacy.so (BuildId: 67e617eec4da30c54dbd2bab964423) (load bias 0x1000)
    ed9c9000-ed9cafff r--      5000      2000  /system/lib/libsensorprivacy.so (BuildId: 67e617eec4da30c54dbd2bab964423) (load bias 0x1000)
    ed9cb000-ed9cbfff rw-      6000      1000  /system/lib/libsensorprivacy.so (BuildId: 67e617eec4da30c54dbd2bab964423) (load bias 0x1000)
    ed9d3000-ed9d3fff rw-         0      1000  [anon:bionic_alloc_small_objects]
    eda08000-eda23fff r--         0     1c000  /system/lib/android.hardware.media.omx@1.0.so (BuildId: f0a5d2f02bc5f5cf80c55969850170) (load bias 0x1000)
    eda24000-eda54fff r-x     1b000     31000  /system/lib/android.hardware.media.omx@1.0.so (BuildId: f0a5d2f02bc5f5cf80c55969850170) (load bias 0x1000)
    eda55000-eda58fff r--     4b000      4000  /system/lib/android.hardware.media.omx@1.0.so (BuildId: f0a5d2f02bc5f5cf80c55969850170) (load bias 0x1000)
    eda59000-eda59fff rw-     4e000      1000  /system/lib/android.hardware.media.omx@1.0.so (BuildId: f0a5d2f02bc5f5cf80c55969850170) (load bias 0x1000)
    eda87000-eda88fff r--         0      2000  /system/lib/android.hardware.graphics.common-V1-ndk_platform.so (BuildId: 943501ceb821b27adc142b359a5193) (load bias 0x1000)
    eda89000-eda8afff r-x      1000      2000  /system/lib/android.hardware.graphics.common-V1-ndk_platform.so (BuildId: 943501ceb821b27adc142b359a5193) (load bias 0x1000)
    eda8b000-eda8bfff r--      2000      1000  /system/lib/android.hardware.graphics.common-V1-ndk_platform.so (BuildId: 943501ceb821b27adc142b359a5193) (load bias 0x1000)
    eda8c000-eda8cfff rw-      2000      1000  /system/lib/android.hardware.graphics.common-V1-ndk_platform.so (BuildId: 943501ceb821b27adc142b359a5193) (load bias 0x1000)
    edada000-edaf2fff r--         0     19000  /apex/com.android.art/lib/libandroidicu.so (BuildId: 0ddec0f30af041b4c5e963bfdffff0) (load bias 0x1000)
    edaf3000-edafcfff r-x     18000      a000  /apex/com.android.art/lib/libandroidicu.so (BuildId: 0ddec0f30af041b4c5e963bfdffff0) (load bias 0x1000)
    edafd000-edafefff r--     21000      2000  /apex/com.android.art/lib/libandroidicu.so (BuildId: 0ddec0f30af041b4c5e963bfdffff0) (load bias 0x1000)
    edaff000-edafffff rw-     22000      1000  /apex/com.android.art/lib/libandroidicu.so (BuildId: 0ddec0f30af041b4c5e963bfdffff0) (load bias 0x1000)
    edb07000-edb39fff r--         0     33000  /system/lib/libc++.so (BuildId: ce87175e190e84526111aaae6c3e9a) (load bias 0x1000)
    edb3a000-edb79fff r-x     32000     40000  /system/lib/libc++.so (BuildId: ce87175e190e84526111aaae6c3e9a) (load bias 0x1000)
    edb7a000-edb7dfff r--     71000      4000  /system/lib/libc++.so (BuildId: ce87175e190e84526111aaae6c3e9a) (load bias 0x1000)
    edb7e000-edb7efff rw-     74000      1000  /system/lib/libc++.so (BuildId: ce87175e190e84526111aaae6c3e9a) (load bias 0x1000)
    edb7f000-edb7ffff rw-         0      1000  [anon:.bss]
    edb8b000-edbb2fff r--         0     28000  /apex/com.android.runtime/lib/bionic/libc.so (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42) (load bias 0x1000)
    edbb3000-edc14fff r-x     27000     62000  /apex/com.android.runtime/lib/bionic/libc.so (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42) (load bias 0x1000)
    edc15000-edc17fff r--     88000      3000  /apex/com.android.runtime/lib/bionic/libc.so (BuildId: ccd7bcca123d82d3ca1e1ec9736acd) (load bias 0x1000)
    edc18000-edc19fff rw-     8a000      2000  /apex/com.android.runtime/lib/bionic/libc.so (BuildId: ccd7bcca123d82d3ca1e1ec9736acd) (load bias 0x1000)
    edc1a000-edc1cfff rw-         0      3000  [anon:.bss]
    edc1d000-edc1dfff r--         0      1000  [anon:.bss]
    edc1e000-edc3bfff rw-         0     1e000  [anon:.bss]
    edc45000-edc52fff r--         0      e000  /system/lib/libRScpp.so (BuildId: c08e7321d7dab64711690fea9d9c8a) (load bias 0x1000)
    edc53000-edc77fff r-x      d000     25000  /system/lib/libRScpp.so (BuildId: c08e7321d7dab64711690fea9d9c8a) (load bias 0x1000)
    edc78000-edc78fff r--     31000      1000  /system/lib/libRScpp.so (BuildId: c08e7321d7dab64711690fea9d9c8a) (load bias 0x1000)
    edc79000-edc79fff rw-     31000      1000  /system/lib/libRScpp.so (BuildId: c08e7321d7dab64711690fea9d9c8a) (load bias 0x1000)
    edca5000-edcabfff r--         0      7000  /system/lib/libcodec2_hidl_client@1.0.so (BuildId: 825c133fbab140e2a889ea5bfd855f) (load bias 0x1000)
    edcac000-edcb7fff r-x      6000      c000  /system/lib/libcodec2_hidl_client@1.0.so (BuildId: 825c133fbab140e2a889ea5bfd855f) (load bias 0x1000)
    edcb8000-edcb9fff r--     11000      2000  /system/lib/libcodec2_hidl_client@1.0.so (BuildId: 825c133fbab140e2a889ea5bfd855f) (load bias 0x1000)
    edccd000-edccffff r--         0      3000  /system/lib/capture_state_listener-aidl-V1-cpp.so (BuildId: a7fbfea67d0fc707c5643246b0710e) (load bias 0x1000)
    edcd0000-edcd0fff r-x      2000      1000  /system/lib/capture_state_listener-aidl-V1-cpp.so (BuildId: a7fbfea67d0fc707c5643246b0710e) (load bias 0x1000)
    edcd1000-edcd2fff r--      2000      2000  /system/lib/capture_state_listener-aidl-V1-cpp.so (BuildId: a7fbfea67d0fc707c5643246b0710e) (load bias 0x1000)
    edcd3000-edcd3fff rw-      3000      1000  /system/lib/capture_state_listener-aidl-V1-cpp.so (BuildId: a7fbfea67d0fc707c5643246b0710e) (load bias 0x1000)
    edce7000-edd06fff r--         0     20000  /dev/__properties__/u:object_r:system_prop:s0
    edd07000-edd13fff r--         0      d000  /system/lib/libSurfaceFlingerProp.so (BuildId: fc63db0f69059fb6fd2374f21156b0) (load bias 0x1000)
    edd14000-edd1bfff r-x      c000      8000  /system/lib/libSurfaceFlingerProp.so (BuildId: fc63db0f69059fb6fd2374f21156b0) (load bias 0x1000)
    edd1c000-edd1cfff r--     13000      1000  /system/lib/libSurfaceFlingerProp.so (BuildId: fc63db0f69059fb6fd2374f21156b0) (load bias 0x1000)
    edd1d000-edd1dfff rw-     13000      1000  /system/lib/libSurfaceFlingerProp.so (BuildId: fc63db0f69059fb6fd2374f21156b0) (load bias 0x1000)
    edd21000-edd21fff rw-         0      1000  [anon:bionic_alloc_lob]
    edd41000-edd5afff r--         0     1a000  /system/lib/libui.so (BuildId: e18426fd8d3ae21ae8b8f5171f90aa) (load bias 0x1000)
    edd5b000-edd73fff r-x     19000     19000  /system/lib/libui.so (BuildId: e18426fd8d3ae21ae8b8f5171f90aa) (load bias 0x1000)
    edd74000-edd75fff r--     31000      2000  /system/lib/libui.so (BuildId: e18426fd8d3ae21ae8b8f5171f90aa) (load bias 0x1000)
    edd76000-edd76fff rw-     32000      1000  /system/lib/libui.so (BuildId: e18426fd8d3ae21ae8b8f5171f90aa) (load bias 0x1000)
    edd77000-edd77fff rw-         0      1000  [anon:.bss]
    edd7f000-edd9efff r--         0     20000  /dev/__properties__/u:object_r:radio_prop:s0
    edd9f000-edd9ffff rw-         0      1000  [anon:bionic_alloc_small_objects]
    eddac000-eddacfff r--         0      1000  /system/lib/android.frameworks.cameraservice.common@2.0.so (BuildId: 95bf283673d5c5344d301f27453d39) (load bias 0x1000)
    eddad000-eddadfff r-x         0      1000  /system/lib/android.frameworks.cameraservice.common@2.0.so (BuildId: 95bf283673d5c5344d301f27453d39) (load bias 0x1000)
    eddae000-eddaefff r--         0      1000  /system/lib/android.frameworks.cameraservice.common@2.0.so (BuildId: 95bf283673d5c5344d301f27453d39) (load bias 0x1000)
    eddc9000-edde8fff r--         0     20000  /dev/__properties__/u:object_r:csc_prop:s0
    edde9000-edde9fff r--         0      1000  /system/lib/libhardware.so (BuildId: 23b7054f87a01d05e403d78b19a808) (load bias 0x1000)
    eddea000-eddeafff r-x         0      1000  /system/lib/libhardware.so (BuildId: 23b7054f87a01d05e403d78b19a808) (load bias 0x1000)
    eddeb000-eddebfff r--         0      1000  /system/lib/libhardware.so (BuildId: 23b7054f87a01d05e403d78b19a808) (load bias 0x1000)
    eddf8000-ede17fff r--         0     20000  /dev/__properties__/u:object_r:vendor_default_prop:s0
    ede18000-ede18fff r--         0      1000  /system/lib/libnativebridge_lazy.so (BuildId: 98a8fbcfafd750f8a4b95a6a6f79a6) (load bias 0x1000)
    ede19000-ede1afff r-x         0      2000  /system/lib/libnativebridge_lazy.so (BuildId: 98a8fbcfafd750f8a4b95a6a6f79a6) (load bias 0x1000)
    ede1b000-ede1bfff r--      1000      1000  /system/lib/libnativebridge_lazy.so (BuildId: 98a8fbcfafd750f8a4b95a6a6f79a6) (load bias 0x1000)
    ede1c000-ede1cfff rw-      1000      1000  /system/lib/libnativebridge_lazy.so (BuildId: 98a8fbcfafd750f8a4b95a6a6f79a6) (load bias 0x1000)
    ede2c000-ede6bfff rw-         0     40000
    ede6c000-ede9cfff r--         0     31000  /system/lib/libhidlbase.so (BuildId: 9f0a04e76cd96132856f2de8daea6c) (load bias 0x1000)
    ede9d000-edee8fff r-x     30000     4c000  /system/lib/libhidlbase.so (BuildId: 9f0a04e76cd96132856f2de8daea6c) (load bias 0x1000)
    edee9000-edeeefff r--     7b000      6000  /system/lib/libhidlbase.so (BuildId: 9f0a04e76cd96132856f2de8daea6c) (load bias 0x1000)
    edeef000-edeeffff rw-     80000      1000  /system/lib/libhidlbase.so (BuildId: 9f0a04e76cd96132856f2de8daea6c) (load bias 0x1000)
    edef0000-edef0fff rw-         0      1000  [anon:.bss]
    edefb000-edf1afff r--         0     20000  /dev/__properties__/u:object_r:camera_prop:s0
    edf1b000-edf28fff r--         0      e000  /system/lib/android.hardware.camera.provider@2.6.so (BuildId: 10213e7cfb9885028568838bf7f964) (load bias 0x1000)
    edf29000-edf36fff r-x      d000      e000  /system/lib/android.hardware.camera.provider@2.6.so (BuildId: 10213e7cfb9885028568838bf7f964) (load bias 0x1000)
    edf37000-edf38fff r--     1a000      2000  /system/lib/android.hardware.camera.provider@2.6.so (BuildId: 10213e7cfb9885028568838bf7f964) (load bias 0x1000)
    edf39000-edf39fff rw-     1b000      1000  /system/lib/android.hardware.camera.provider@2.6.so (BuildId: 10213e7cfb9885028568838bf7f964) (load bias 0x1000)
    edf40000-edf40fff ---         0      1000
    edf41000-edf5efff rw-         0     1e000  [anon:scudo:secondary]
    edf5f000-edf5ffff ---         0      1000
    edf60000-edf7ffff r--         0     20000  /dev/__properties__/u:object_r:default_prop:s0
    edf80000-ee1bffff rw-         0    240000  [anon:scudo:primary]
    ee1c5000-ee1c5fff rw-         0      1000  [anon:bionic_alloc_small_objects]
    ee1e0000-ee1fffff r--         0     20000  /dev/__properties__/u:object_r:exported_vold_prop:s0
    ee200000-ee21ffff r--         0     20000  /dev/__properties__/u:object_r:vndk_prop:s0
    ee220000-ee23ffff r--         0     20000  /dev/__properties__/u:object_r:exported_default_prop:s0
    ee240000-ee2fffff rw-         0     c0000  [anon:scudo:primary]
    ee300000-ee31ffff r--         0     20000  /dev/__properties__/u:object_r:sec_camera_prop:s0
    ee320000-ee33ffff r--         0     20000  /dev/__properties__/u:object_r:hwservicemanager_prop:s0
    ee340000-ee47ffff rw-         0    140000  [anon:scudo:primary]
    ee487000-ee488fff r--         0      2000  /system/lib/libnetd_client.so (BuildId: 8ef7b076b07697876819f1acf85b34) (load bias 0x1000)
    ee489000-ee48bfff r-x      1000      3000  /system/lib/libnetd_client.so (BuildId: 8ef7b076b07697876819f1acf85b34) (load bias 0x1000)
    ee48c000-ee48cfff r--      3000      1000  /system/lib/libnetd_client.so (BuildId: 8ef7b076b07697876819f1acf85b34) (load bias 0x1000)
    ee48d000-ee48dfff rw-      3000      1000  /system/lib/libnetd_client.so (BuildId: 8ef7b076b07697876819f1acf85b34) (load bias 0x1000)
    ee4a0000-ee4bffff r--         0     20000  /dev/__properties__/u:object_r:logd_prop:s0
    ee4c0000-ee57ffff rw-         0     c0000  [anon:scudo:primary]
    ee596000-ee596fff rw-         0      1000  [anon:bionic_alloc_small_objects]
    ee59f000-ee5befff r--         0     20000  /dev/__properties__/u:object_r:log_tag_prop:s0
    ee5bf000-ee5defff r--         0     20000  /dev/__properties__/u:object_r:exported3_default_prop:s0
    ee5df000-ee5fefff r--         0     20000  /dev/__properties__/u:object_r:heapprofd_prop:s0
    ee5ff000-ee61efff r--         0     20000  /dev/__properties__/u:object_r:exported2_default_prop:s0
    ee61f000-ee63efff r--         0     20000  /dev/__properties__/u:object_r:debug_prop:s0
    ee63f000-ee65efff r--         0     20000  /dev/__properties__/properties_serial
    ee65f000-ee66efff r--         0     10000  /dev/__properties__/property_info
    ee66f000-ee66ffff ---         0      1000
    ee670000-ee672fff rw-         0      3000  [anon:stack_and_tls:main]
    ee673000-ee673fff ---         0      1000
    ee678000-ee678fff ---         0      1000
    ee679000-ee67cfff rw-         0      4000  [anon:thread signal stack]
    ee67d000-ee67dfff ---         0      1000
    ee67e000-ee681fff rw-         0      4000  [anon:thread signal stack]
    ee682000-ee682fff ---         0      1000
    ee683000-ee686fff rw-         0      4000  [anon:thread signal stack]
    ee687000-ee687fff ---         0      1000
    ee688000-ee68bfff rw-         0      4000  [anon:thread signal stack]
    ee68c000-ee68cfff ---         0      1000
    ee68d000-ee690fff rw-         0      4000  [anon:thread signal stack]
    ee691000-ee694fff r--         0      4000  [anon:atexit handlers]
    ee695000-ee6b4fff r--         0     20000  /dev/__properties__/u:object_r:bq_config_prop:s0
    ee6b7000-ee6b7fff rw-         0      1000  [anon:abort message]
    ee6b8000-ee6d7fff r--         0     20000  /dev/__properties__/u:object_r:vendor_socket_hook_prop:s0
    ee6d8000-ee79ffff r--         0     c8000  [anon:linker_alloc]
    ee7a0000-ee7bffff r--         0     20000  /dev/__properties__/u:object_r:vndk_prop:s0
    ee7c0000-ee7c7fff rw-         0      8000  [anon:bionic_alloc_small_objects]
    ee7c8000-ee82bfff rw-         0     64000  [anon:linker_alloc]
    ee82c000-ee82efff rw-         0      3000  [anon:bionic_alloc_small_objects]
    ee82f000-ee892fff r--         0     64000  [anon:linker_alloc]
    ee893000-ee893fff rw-         0      1000  [anon:bionic_alloc_small_objects]
    ee894000-ee8b3fff r--         0     20000  /dev/__properties__/u:object_r:debug_prop:s0
    ee8b4000-ee8d3fff r--         0     20000  /dev/__properties__/u:object_r:exported2_default_prop:s0
    ee8d4000-ee8d4fff ---         0      1000
    ee8d5000-ee8dcfff rw-         0      8000
    ee8dd000-ee8ddfff ---         0      1000
    ee8de000-ee8fdfff r--         0     20000  /dev/__properties__/properties_serial
    ee8fe000-ee8fffff rw-         0      2000  [anon:System property context nodes]
    ee900000-ee90ffff r--         0     10000  /dev/__properties__/property_info
    ee910000-ee973fff r--         0     64000  [anon:linker_alloc]
    ee974000-ee974fff rw-         0      1000  [anon:bionic_alloc_small_objects]
    ee975000-ee975fff r--         0      1000  [anon:atexit handlers]
    ee976000-ee976fff ---         0      1000
    ee977000-ee97afff rw-         0      4000  [anon:thread signal stack]
    ee97b000-ee97bfff rw-         0      1000  [anon:arc4random data]
    ee97c000-ee97dfff rw-         0      2000  [anon:System property context nodes]
    ee97e000-ee97efff rw-         0      1000  [anon:arc4random data]
    ee97f000-ee97ffff r--         0      1000  [vvar]
    ee980000-ee980fff r-x         0      1000  [vdso]
    ee981000-ee999fff r--         0     19000  /apex/com.android.runtime/bin/linker (BuildId: f92895446b9ef957be369ff21bf520) (load bias 0x1000)
    ee99a000-eea21fff r-x     18000     88000  /apex/com.android.runtime/bin/linker (BuildId: f92895446b9ef957be369ff21bf520) (load bias 0x1000)
    eea22000-eea25fff r--     9f000      4000  /apex/com.android.runtime/bin/linker (BuildId: f92895446b9ef957be369ff21bf520) (load bias 0x1000)
    eea26000-eea27fff rw-     a2000      2000  /apex/com.android.runtime/bin/linker (BuildId: f92895446b9ef957be369ff21bf520) (load bias 0x1000)
    eea28000-eea2afff rw-         0      3000  [anon:.bss]
    eea2b000-eea2bfff r--         0      1000  [anon:.bss]
    eea2c000-eea31fff rw-         0      6000  [anon:.bss]
    ff871000-ff891fff rw-         0     21000  [stack]
    ffff0000-ffff0fff r-x         0      1000  [kuserhelpers]
--------- tail end of log main
05-01 20:56:06.958  4163  4163 D mm-camera-intf: mm_camera_poll_thread_launch: wait
05-01 20:56:06.959  4163  4163 D mm-camera-intf: mm_camera_poll_thread_launch: done
05-01 20:56:06.959  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.962  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.963  4163  4163 D mm-camera-intf: camera_open: X, Open succeded
05-01 20:56:06.963  4163  4163 D QCamera2HWI: isFactoryBin: User Binary
05-01 20:56:06.963  4163  4313 I QCamera2HWI: dw->cmd: 6
05-01 20:56:06.963  4163  4313 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_PARAM_INIT
05-01 20:56:06.964  4163  4163 I ServiceManager: Waiting for service 'display.qservice' on '/dev/binder'...
05-01 20:56:06.964  4163  4313 I QCamera2HWI: dw->cmd: 8
05-01 20:56:06.964  4163  4313 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_LIB_LOAD
05-01 20:56:06.967  4163  4313 D UniPlugin: uni_plugin_load is called!
05-01 20:56:06.967  4163  4313 D UniPlugin: __uni_plugin_load is called!
05-01 20:56:06.967  4163  4313 D UniPlugin: get_plugin_handle is called!
05-01 20:56:06.968  4163  4313 D UniPlugin: UniPlugin is called!
05-01 20:56:06.969  4163  4313 D UniPlugin: uni_plugin_load is called!
05-01 20:56:06.969  4163  4313 D UniPlugin: __uni_plugin_load is called!
05-01 20:56:06.969  4163  4313 D UniPlugin: get_plugin_handle is called!
05-01 20:56:06.970  4163  4313 D UniPlugin: UniPlugin is called!
05-01 20:56:06.970  4163  4313 D UniPlugin: uni_plugin_load is called!
05-01 20:56:06.970  4163  4313 D UniPlugin: __uni_plugin_load is called!
05-01 20:56:06.970  4163  4313 D UniPlugin: get_plugin_handle is called!
05-01 20:56:06.971  4163  4313 D UniPlugin: UniPlugin is called!
05-01 20:56:06.971  4163  4313 D UniPlugin: uni_plugin_load is called!
05-01 20:56:06.971  4163  4313 D UniPlugin: __uni_plugin_load is called!
05-01 20:56:06.971  4163  4313 D UniPlugin: get_plugin_handle is called!
05-01 20:56:06.972  4163  4313 D UniPlugin: UniPlugin is called!
05-01 20:56:06.972  4163  4313 D Dejagging_interface: [dejagging] dejagging_interface VERSION 10750217
05-01 20:56:06.972  4163  4313 D UniPlugin: uni_plugin_init is called!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] void* create_dejaggingCore() is called!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] dejaggingCore::dejaggingCore() is called!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] dejagging_params::dejagging_params() is called!
05-01 20:56:06.972  4163  4313 D Dejagging_interface: [dejagging] Objects Created!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] int dejaggingCore::dejagging_core_init(dejaggingCoreData_t*, tDejagTuningValues_type*) is called!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] CORE Ver 10780217 INIT
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] int dejaggingCore::dejagging_core_memalloc(int) is called!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging](dejagging_core_memalloc[178]): Register buffer for HVX, index: 0, data:0xed162000, size: 331776, fd: 39
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging]dynamic loading hvxdejagging lib
05-01 20:56:06.974  4163  4313 D DejaggingCore: [dejagging] Failed to find symbol libhvxdejagging
05-01 20:56:06.974  4163  4313 D QCamera2HWI: [Dejagging](load_uni_plugin[2045]): Set camera info: 0:109
05-01 20:56:06.974  4163  4313 D DejaggingCore: [dejagging] int dejagging_params::dejagging_parameter_init(int, int, tDejagTuningValues_type*, dejag_debug_info_t*) is called!
05-01 20:56:06.974  4163  4313 D DejaggingCore: [dejagging] : loading defalut param for imx260 = 496
05-01 20:56:06.974  4163  4313 D QCamera2HWI: [Lens_DC] uniplugin load E
05-01 20:56:06.974  4163  4313 D UniPlugin: uni_plugin_load is called!
05-01 20:56:06.974  4163  4313 D UniPlugin: __uni_plugin_load is called!
05-01 20:56:06.974  4163  4313 D UniPlugin: get_plugin_handle is called!
05-01 20:56:06.975  4163  4313 E UniPlugin: get_plugin_handle, Couldn't load the library(libldc_interface.so): dlopen failed: library "libldc_core.so" not found: needed by /system/vendor/lib/libldc_interface.so in namespace (default)
05-01 20:56:06.975  4163  4313 E QCamera2HWI: [Lens_DC](load_uni_plugin[2060]): LDC plugin load failed!!
05-01 20:56:06.975  4163  4313 D QCamera2HWI: [Lens_DC] uniplugin load X
05-01 20:56:06.975  4163  4313 I QCamera2HWI: dw->cmd: 7
--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
pid: 4163, tid: 4163, name: cameraserver  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  0000000c  r1  ff890a48  r2  00020802  r3  00000000
    r4  ff890a48  r5  e91ad004  r6  edc1a124  r7  00000142
    r8  00000003  r9  e91a6fb8  r10 e91a78f3  r11 e91aa150
    ip  ff890a48  sp  ff8909e8  lr  edbcb2df  pc  edbfcb14

backtrace:
      #00 pc 00071b14  /apex/com.android.runtime/lib/bionic/libc.so (__openat+12) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 000402db  /apex/com.android.runtime/lib/bionic/libc.so (open+62) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 00007e3d  /system/vendor/lib/libmmcamera_interface.so (mm_camera_open+248) (BuildId: 9f475d035ff525e57c9ce49f2fc642)
      #03 pc 00007007  /system/vendor/lib/libmmcamera_interface.so (camera_open+294) (BuildId: 9f475d035ff525e57c9ce49f2fc642)
      #04 pc 0007a713  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCamera2HardwareInterface::openCamera()+450) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #05 pc 0007ab5d  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCamera2HardwareInterface::openCamera(hw_device_t**)+112) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #06 pc 0004833b  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCamera2Factory::openLegacy(int, unsigned int, hw_device_t**)+210) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #07 pc 0001d01d  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (android::hardware::camera::common::V1_0::helper::CameraModule::openLegacy(char const*, unsigned int, hw_device_t**)+32) (BuildId: b7d0fa38f783397c09612cb018fb62)
      #08 pc 00012bcd  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (android::hardware::camera::provider::V2_4::implementation::LegacyCameraProviderImpl_2_4::addDeviceNames(int, android::hardware::camera::common::V1_0::CameraDeviceStatus, bool)+368) (BuildId: b7d0fa38f783397c09612cb018fb62)
      #09 pc 00013c8f  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (android::hardware::camera::provider::V2_4::implementation::LegacyCameraProviderImpl_2_4::initialize()+622) (BuildId: b7d0fa38f783397c09612cb018fb62)
      #10 pc 00013a03  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (android::hardware::camera::provider::V2_4::implementation::LegacyCameraProviderImpl_2_4::LegacyCameraProviderImpl_2_4()+122) (BuildId: b7d0fa38f783397c09612cb018fb62)
      #11 pc 00002cc3  /system/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so (HIDL_FETCH_ICameraProvider+94) (BuildId: de47815112eb07e146756f53cff030)
      #12 pc 00043e5d  /system/lib/libhidlbase.so (android::hardware::PassthroughServiceManager::get(android::hardware::hidl_string const&, android::hardware::hidl_string const&)::'lambda'(void*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&)::operator()(void*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&) const+64) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #13 pc 0004045f  /system/lib/libhidlbase.so (android::hardware::PassthroughServiceManager::openLibs(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, std::__1::function<bool (void*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&)> const&)+710) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #14 pc 000429b3  /system/lib/libhidlbase.so (android::hardware::PassthroughServiceManager::get(android::hardware::hidl_string const&, android::hardware::hidl_string const&)+54) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #15 pc 0004130b  /system/lib/libhidlbase.so (android::hardware::details::getRawServiceInternal(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, bool, bool)+1298) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #16 pc 00010ad5  /system/lib/android.hardware.camera.provider@2.4.so (android::sp<android::hardware::camera::provider::V2_4::ICameraProvider> android::hardware::details::getServiceInternal<android::hardware::camera::provider::V2_4::BpHwCameraProvider, android::hardware::camera::provider::V2_4::ICameraProvider, void, void>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, bool, bool)+156) (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced)
      #17 pc 00010a33  /system/lib/android.hardware.camera.provider@2.4.so (android::hardware::camera::provider::V2_4::ICameraProvider::tryGetService(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, bool)+6) (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced)
      #18 pc 000c6439  /system/lib/libcameraservice.so (android::CameraProviderManager::HardwareServiceInteractionProxy::tryGetService(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&)+6) (BuildId: eb914082381abdc2ccc1e3344f38ce)
      #19 pc 000bbd23  /system/lib/libcameraservice.so (android::CameraProviderManager::addProviderLocked(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&)+190) (BuildId: eb914082381abdc2ccc1e3344f38ce)
      #20 pc 000bbbad  /system/lib/libcameraservice.so (android::CameraProviderManager::initialize(android::wp<android::CameraProviderManager::StatusListener>, android::CameraProviderManager::ServiceInteractionProxy*)+240) (BuildId: eb914082381abdc2ccc1e3344f38ce)
      #21 pc 000a440f  /system/lib/libcameraservice.so (android::CameraService::enumerateProviders()+850) (BuildId: eb914082381abdc2ccc1e3344f38ce)
      #22 pc 000a3e47  /system/lib/libcameraservice.so (android::CameraService::onFirstRef()+118) (BuildId: eb914082381abdc2ccc1e3344f38ce)
      #23 pc 000019bb  /system/bin/cameraserver (android::BinderService<android::CameraService>::publish(bool, int)+110) (BuildId: 3ce6a9b8517f1c13a31bfe4241e6e3)
      #24 pc 000018cb  /system/bin/cameraserver (main+70) (BuildId: 3ce6a9b8517f1c13a31bfe4241e6e3)
      #25 pc 00033177  /apex/com.android.runtime/lib/bionic/libc.so (__libc_init+66) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
pid: 4163, tid: 4165, name: HwBinder:4163_1  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  00000003  r1  c0306201  r2  eacfc060  r3  eacfbfb4
    r4  ec885427  r5  edc1a124  r6  eacfc060  r7  00000036
    r8  00000000  r9  eb003424  r10 eacfc070  r11 eacfc060
    ip  00000100  sp  eacfbf98  lr  edbca01f  pc  edbfc8a8

backtrace:
      #00 pc 000718a8  /apex/com.android.runtime/lib/bionic/libc.so (__ioctl+8) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 0003f01b  /apex/com.android.runtime/lib/bionic/libc.so (ioctl+26) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 0006c429  /system/lib/libhidlbase.so (android::hardware::IPCThreadState::getAndExecuteCommand()+160) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #03 pc 0006d52d  /system/lib/libhidlbase.so (android::hardware::IPCThreadState::joinThreadPool(bool)+56) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #04 pc 0007929d  /system/lib/libhidlbase.so (android::hardware::PoolThread::threadLoop()+12) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #05 pc 0000eed9  /system/lib/libutils.so (android::Thread::_threadLoop(void*)+168) (BuildId: 2fb179aed2791695f9ce7e382aa6e55e)
      #06 pc 0000ea15  /system/lib/libutils.so (thread_data_t::trampoline(thread_data_t const*)+256) (BuildId: 2fb179aed2791695f9ce7e382aa6e55e)
      #07 pc 0008175f  /apex/com.android.runtime/lib/bionic/libc.so (__pthread_start(void*)+40) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #08 pc 00039d85  /apex/com.android.runtime/lib/bionic/libc.so (__start_thread+30) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
pid: 4163, tid: 4166, name: HwBinder:4163_2  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  00000003  r1  c0306201  r2  eabfb060  r3  eabfafb4
    r4  ec885427  r5  edc1a124  r6  eabfb060  r7  00000036
    r8  00000000  r9  eb000604  r10 eabfb070  r11 eabfb060
    ip  00000100  sp  eabfaf98  lr  edbca01f  pc  edbfc8a8

backtrace:
      #00 pc 000718a8  /apex/com.android.runtime/lib/bionic/libc.so (__ioctl+8) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 0003f01b  /apex/com.android.runtime/lib/bionic/libc.so (ioctl+26) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 0006c429  /system/lib/libhidlbase.so (android::hardware::IPCThreadState::getAndExecuteCommand()+160) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #03 pc 0006d52d  /system/lib/libhidlbase.so (android::hardware::IPCThreadState::joinThreadPool(bool)+56) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #04 pc 0007929d  /system/lib/libhidlbase.so (android::hardware::PoolThread::threadLoop()+12) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #05 pc 0000eed9  /system/lib/libutils.so (android::Thread::_threadLoop(void*)+168) (BuildId: 2fb179aed2791695f9ce7e382aa6e55e)
      #06 pc 0000ea15  /system/lib/libutils.so (thread_data_t::trampoline(thread_data_t const*)+256) (BuildId: 2fb179aed2791695f9ce7e382aa6e55e)
      #07 pc 0008175f  /apex/com.android.runtime/lib/bionic/libc.so (__pthread_start(void*)+40) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #08 pc 00039d85  /apex/com.android.runtime/lib/bionic/libc.so (__start_thread+30) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
pid: 4163, tid: 4311, name: CAM_stMachine  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  e7a81520  r1  00000089  r2  00000002  r3  00000000
    r4  00000000  r5  ffffffff  r6  00000000  r7  000000f0
    r8  00000002  r9  e7a81520  r10 00000000  r11 00000000
    ip  e7a7c128  sp  e7a7c118  lr  edbc414f  pc  edbbf064

backtrace:
      #00 pc 00034064  /apex/com.android.runtime/lib/bionic/libc.so (syscall+28) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 0003914b  /apex/com.android.runtime/lib/bionic/libc.so (__futex_wait_ex(void volatile*, bool, int, bool, timespec const*)+94) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 00080de3  /apex/com.android.runtime/lib/bionic/libc.so (pthread_cond_wait+32) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #03 pc 00088f8f  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCameraStateMachine::smEvtProcRoutine(void*)+46) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #04 pc 0008175f  /apex/com.android.runtime/lib/bionic/libc.so (__pthread_start(void*)+40) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #05 pc 00039d85  /apex/com.android.runtime/lib/bionic/libc.so (__start_thread+30) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
pid: 4163, tid: 4313, name: CAM_defrdWrk  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  e7a827b0  r1  00000089  r2  00000012  r3  00000000
    r4  00000000  r5  ffffffff  r6  00000000  r7  000000f0
    r8  00000012  r9  e7a827b0  r10 00000000  r11 00000002
    ip  e787a0b0  sp  e787a0a0  lr  edbc414f  pc  edbbf064

backtrace:
      #00 pc 00034064  /apex/com.android.runtime/lib/bionic/libc.so (syscall+28) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 0003914b  /apex/com.android.runtime/lib/bionic/libc.so (__futex_wait_ex(void volatile*, bool, int, bool, timespec const*)+94) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 00080de3  /apex/com.android.runtime/lib/bionic/libc.so (pthread_cond_wait+32) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #03 pc 00068743  /system/vendor/lib/hw/camera.msm8996.so (cam_sem_wait+26) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #04 pc 00079dc3  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCamera2HardwareInterface::deferredWorkRoutine(void*)+106) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #05 pc 0008175f  /apex/com.android.runtime/lib/bionic/libc.so (__pthread_start(void*)+40) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #06 pc 00039d85  /apex/com.android.runtime/lib/bionic/libc.so (__start_thread+30) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)

open files:
    fd 0: /dev/null (unowned)
    fd 1: /dev/null (unowned)
    fd 2: /dev/null (unowned)
    fd 3: /dev/hwbinder (unowned)
    fd 4: /dev/binder (unowned)
    fd 5: socket:[287140] (unowned)
    fd 6: /dev/pmsg0 (unowned)
    fd 7: /sys/kernel/debug/tracing/trace_marker (unowned)
    fd 8: anon_inode:[eventfd] (owned by unique_fd 0xeb10191c)
    fd 9: anon_inode:[eventpoll] (owned by unique_fd 0xeb10193c)
    fd 10: socket:[287809] (owned by unique_fd 0xee514218)
    fd 11: socket:[287810] (owned by unique_fd 0xee514214)
    fd 13: /dev/ion (unowned)
    fd 14: anon_inode:dmabuf (unowned)
    fd 15: /dev/ion (unowned)
    fd 16: anon_inode:dmabuf (unowned)
    fd 17: /dev/ion (unowned)
    fd 18: anon_inode:dmabuf (unowned)
    fd 19: /dev/ion (unowned)
    fd 20: anon_inode:dmabuf (unowned)
    fd 21: /dev/ion (unowned)
    fd 22: anon_inode:dmabuf (unowned)
    fd 23: /dev/ion (unowned)
    fd 24: anon_inode:dmabuf (unowned)
    fd 25: /dev/ion (unowned)
    fd 26: anon_inode:dmabuf (unowned)
    fd 27: /dev/ion (unowned)
    fd 28: anon_inode:dmabuf (unowned)
    fd 29: /dev/ion (unowned)
    fd 30: anon_inode:dmabuf (unowned)
    fd 31: /dev/ion (unowned)
    fd 32: anon_inode:dmabuf (unowned)
    fd 33: anon_inode:dmabuf (unowned)
    fd 34: /dev/ion (unowned)
--------- log main
05-01 20:56:06.317  4163  4163 I cameraserver: ServiceManager: 0xee500810
05-01 20:56:06.317  4163  4163 I CameraService: CameraService started (pid=4163)
05-01 20:56:06.317  4163  4163 I CameraService: CameraService process starting
05-01 20:56:06.403  4163  4163 D mm-camera-intf: dev_info[id=0,name='video2', facing = 0, angle = 90 type = 1]
05-01 20:56:06.404  4163  4163 D mm-camera-intf: dev_info[id=1,name='video3', facing = 1, angle = 270 type = 1]
05-01 20:56:06.404  4163  4163 D mm-camera-intf: dev_info[id=2,name='video4', facing = 1, angle = 270 type = 1]
05-01 20:56:06.404  4163  4163 I mm-camera-intf: Found Back Main Camera: idx: 0
05-01 20:56:06.404  4163  4163 I mm-camera-intf: Found Front Main Camera: idx: 1
05-01 20:56:06.404  4163  4163 I mm-camera-intf: Found Front Main Camera: idx: 2
05-01 20:56:06.404  4163  4163 I mm-camera-intf: sort_camera_info: Camera id: 0 facing: 0, type: 1 is_yuv: 0
05-01 20:56:06.404  4163  4163 I mm-camera-intf: sort_camera_info: Camera id: 1 facing: 1, type: 1 is_yuv: 0
05-01 20:56:06.404  4163  4163 I mm-camera-intf: sort_camera_info: Camera id: 2 facing: 1, type: 1 is_yuv: 0
05-01 20:56:06.404  4163  4163 I mm-camera-intf: Number of cameras 3, Match of cameras 3
05-01 20:56:06.404  4163  4163 E mm-camera-intf: get_num_of_cameras: num_cameras=3
05-01 20:56:06.404  4163  4163 I QCamera2Factory: QCamera2Factory: model ver :  
05-01 20:56:06.404  4163  4163 I QCamera2Factory: QCamera2Factory: Official Binary. Enable HAL3.
05-01 20:56:06.404  4163  4163 I QCamera2Factory: QCamera2Factory[105]: dualCamera:0 
05-01 20:56:06.404  4163  4163 I QCamera2Factory: get_number_of_cameras: num of cameras: 2
05-01 20:56:06.404  4163  4163 I CamPrvdr@2.4-legacy: Loaded "QCamera Module" camera module
05-01 20:56:06.404  4163  4163 I QCamera2Factory: get_number_of_cameras: num of cameras: 2
05-01 20:56:06.404  4163  4163 I QCamera2Factory: getCameraInfo : E camera id (0), mNumOfCameras (3)
05-01 20:56:06.404  4163  4163 D mm-camera-intf: camera_open: E, camera_idx = 0
05-01 20:56:06.404  4163  4163 D mm-camera-intf: , num of camera is 3
05-01 20:56:06.445  4163  4163 D mm-camera-intf: mm_camera_open:  opened, break out while loop
05-01 20:56:06.445  4163  4163 D mm-camera-intf: mm_camera_poll_thread_launch: wait
05-01 20:56:06.446  4163  4163 D mm-camera-intf: mm_camera_poll_thread_launch: done
05-01 20:56:06.446  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.446  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.447  4163  4163 D mm-camera-intf: camera_open: X, Open succeded
05-01 20:56:06.529  4163  4163 I QCamera3HWI: initCapabilities: construct new fps table only for HAL3!
05-01 20:56:06.531  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.531  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.531  4163  4163 D mm-camera-intf: mm_camera_poll_thread_release: Sending MM_CAMERA_PIPE_CMD_EXIT to polling thread
05-01 20:56:06.531  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.531  4163  4209 D mm-camera-intf: mm_camera_poll_proc_pipe: Received MM_CAMERA_PIPE_CMD_EXIT
05-01 20:56:06.531  4163  4209 D mm-camera-intf: mm_camera_poll_fn: Exited polling function
05-01 20:56:06.531  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.532  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: Waiting for polling thread to exit
05-01 20:56:06.532  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: After polling thread exit
05-01 20:56:06.532  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: Waiting for cmd thread to exit
05-01 20:56:06.533  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: After cmd thread exit
05-01 20:56:06.605  4163  4163 I QCamera3HWI: [initStaticMetadata::6206][gLimited_Mode::1][cam_position::0][limitedDevice::0]
05-01 20:56:06.606  4163  4163 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-01 20:56:06.607  4163  4163 I chatty  : uid=1047(cameraserver) /system/bin/cameraserver identical 14 lines
05-01 20:56:06.607  4163  4163 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-01 20:56:06.608  4163  4163 I QCamera3HWI: getCamInfo: camera 0 resource cost is 100
05-01 20:56:06.608  4163  4163 I QCamera2Factory: getExtraCameraInfo : camera id = 0, facing info = BACK
05-01 20:56:06.608  4163  4163 D mm-camera-intf: camera_open: E, camera_idx = 1
05-01 20:56:06.608  4163  4163 D mm-camera-intf: , num of camera is 3
05-01 20:56:06.660  4163  4163 D mm-camera-intf: mm_camera_open:  opened, break out while loop
05-01 20:56:06.661  4163  4163 D mm-camera-intf: mm_camera_poll_thread_launch: wait
05-01 20:56:06.662  4163  4163 D mm-camera-intf: mm_camera_poll_thread_launch: done
05-01 20:56:06.662  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.662  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.662  4163  4163 D mm-camera-intf: camera_open: X, Open succeded
05-01 20:56:06.702  4163  4163 I QCamera3HWI: initCapabilities: construct new fps table only for HAL3!
05-01 20:56:06.703  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.704  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.704  4163  4163 D mm-camera-intf: mm_camera_poll_thread_release: Sending MM_CAMERA_PIPE_CMD_EXIT to polling thread
05-01 20:56:06.704  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.704  4163  4258 D mm-camera-intf: mm_camera_poll_proc_pipe: Received MM_CAMERA_PIPE_CMD_EXIT
05-01 20:56:06.704  4163  4258 D mm-camera-intf: mm_camera_poll_fn: Exited polling function
05-01 20:56:06.704  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.704  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: Waiting for polling thread to exit
05-01 20:56:06.704  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: After polling thread exit
05-01 20:56:06.704  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: Waiting for cmd thread to exit
05-01 20:56:06.705  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: After cmd thread exit
05-01 20:56:06.782  4163  4163 I QCamera3HWI: [initStaticMetadata::6206][gLimited_Mode::1][cam_position::1][limitedDevice::1]
05-01 20:56:06.782  4163  4163 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-01 20:56:06.783  4163  4163 I chatty  : uid=1047(cameraserver) /system/bin/cameraserver identical 10 lines
05-01 20:56:06.783  4163  4163 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-01 20:56:06.783  4163  4163 I QCamera3HWI: getCamInfo: camera 1 resource cost is 100
05-01 20:56:06.784  4163  4163 I QCamera2Factory: getExtraCameraInfo : camera id = 1, facing info = FRONT
05-01 20:56:06.784  4163  4163 D mm-camera-intf: camera_open: E, camera_idx = 2
05-01 20:56:06.784  4163  4163 D mm-camera-intf: , num of camera is 3
05-01 20:56:06.833  4163  4163 D mm-camera-intf: mm_camera_open:  opened, break out while loop
05-01 20:56:06.833  4163  4163 D mm-camera-intf: mm_camera_poll_thread_launch: wait
05-01 20:56:06.834  4163  4163 D mm-camera-intf: mm_camera_poll_thread_launch: done
05-01 20:56:06.834  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.834  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.834  4163  4163 D mm-camera-intf: camera_open: X, Open succeded
05-01 20:56:06.855  4163  4163 I QCamera3HWI: initCapabilities: construct new fps table only for HAL3!
05-01 20:56:06.856  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.856  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.856  4163  4163 D mm-camera-intf: mm_camera_poll_thread_release: Sending MM_CAMERA_PIPE_CMD_EXIT to polling thread
05-01 20:56:06.857  4163  4304 D mm-camera-intf: mm_camera_poll_proc_pipe: Received MM_CAMERA_PIPE_CMD_EXIT
05-01 20:56:06.857  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.857  4163  4304 D mm-camera-intf: mm_camera_poll_fn: Exited polling function
05-01 20:56:06.857  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.857  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: Waiting for polling thread to exit
05-01 20:56:06.857  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: After polling thread exit
05-01 20:56:06.857  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: Waiting for cmd thread to exit
05-01 20:56:06.857  4163  4163 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: After cmd thread exit
05-01 20:56:06.889  4163  4163 I QCamera3HWI: [initStaticMetadata::6206][gLimited_Mode::1][cam_position::1][limitedDevice::1]
05-01 20:56:06.890  4163  4163 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-01 20:56:06.890  4163  4163 I chatty  : uid=1047(cameraserver) /system/bin/cameraserver identical 10 lines
05-01 20:56:06.890  4163  4163 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-01 20:56:06.890  4163  4163 I QCamera3HWI: getCamInfo: camera 2 resource cost is 100
05-01 20:56:06.891  4163  4163 I QCamera2Factory: getExtraCameraInfo : camera id = 2, facing info = FRONT
05-01 20:56:06.891  4163  4163 I QCamera3HWI: getCamInfo: camera 0 resource cost is 100
05-01 20:56:06.891  4163  4163 I QCamera2Factory: getCameraInfo : camera id = 0, facing info = BACK
05-01 20:56:06.891  4163  4163 I QCamera2Factory: getCameraInfo : X, camera id (0)
05-01 20:56:06.891  4163  4163 I QCamera2Factory: :openLegacy openLegacy halVersion: 256
05-01 20:56:06.893  4163  4311 D QCameraStateMachine: smEvtProcRoutine: E
05-01 20:56:06.897  4163  4313 I QCamera2HWI: deferredWorkRoutine: CAMERA_CMD_TYPE_START_DATA_PROC
05-01 20:56:06.902  4163  4163 I QCamera2HWI: setParallelMode: set value (0)
05-01 20:56:06.904  4163  4163 I QCamera2HWI: setParallelMode: get value (0)
05-01 20:56:06.905  4163  4163 I QCamera2HWI: [KPI Perf] openCamera: E PROFILE_OPEN_CAMERA camera id 0
05-01 20:56:06.905  4163  4163 D QCameraPerf: lock_acq_ss E
05-01 20:56:06.909  4163  4163 E ANDR-PERF: IPerf::tryGetService failed!
05-01 20:56:06.909  4163  4163 D QCameraPerf: lock_acq_ss min lock ret -1
05-01 20:56:06.909  4163  4163 E QCameraPerf: lock_acq_ss: failed to acquire lock
05-01 20:56:06.909  4163  4163 D QCameraPerf: lock_acq_ss X
05-01 20:56:06.909  4163  4163 D QCamera2HWI: [KPI Perf] openCamera: E, mCameraId = 0
05-01 20:56:06.909  4163  4163 E QCamera2HWI: INFO:MEMBOOST SET 2
05-01 20:56:06.910  4163  4163 I QCamera2HWI: Using pre allocated capabilities for cameraId 0,position 0
05-01 20:56:06.910  4163  4163 D mm-camera-intf: camera_open: E, camera_idx = 0
05-01 20:56:06.910  4163  4163 D mm-camera-intf: , num of camera is 3
05-01 20:56:06.910  4163  4313 I QCamera2HWI: dw->cmd: 5
05-01 20:56:06.910  4163  4313 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_PARAM_ALLOC
05-01 20:56:06.911  4163  4313 D QCameraHWI_Mem: allocOneBuffer : ION buffer 1 with size 782336 allocated
05-01 20:56:06.912  4163  4313 I QCamera2HWI: dw->cmd: 3
05-01 20:56:06.912  4163  4313 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_METADATA_ALLOC
05-01 20:56:06.912  4163  4313 D QCameraHWI_Mem: allocOneBuffer : ION buffer 1 with size 782336 allocated
05-01 20:56:06.914  4163  4313 I chatty  : uid=1047(cameraserver) CAM_defrdWrk identical 8 lines
05-01 20:56:06.914  4163  4313 D QCameraHWI_Mem: allocOneBuffer : ION buffer 1 with size 782336 allocated
05-01 20:56:06.914  4163  4313 I QCamera2HWI: dw->cmd: 9
05-01 20:56:06.914  4163  4313 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_PARAM_PRE_INIT
05-01 20:56:06.915  4163  4313 D QCameraParameters: initDefaultParameters: supported preview sizes: 1920x1080,1280x720,1440x1080,1088x1088,1056x864,960x720,720x480,640x480,352x288,320x240,176x144
05-01 20:56:06.915  4163  4313 D QCameraParameters: initDefaultParameters: supported video sizes: 1920x1080,1440x1440,1440x1080,1280x720,960x720,800x450,800x480,720x480,640x480,352x288,320x240,176x144
05-01 20:56:06.915  4163  4313 D QCameraParameters: initDefaultParameters: supported picture sizes: 4032x3024,4032x2268,3984x2988,3264x2448,3264x1836,3024x3024,2976x2976,2880x2160,2560x1920,2560x1440,2160x2160,2048x1152,1920x1080,1280x960,1280x720,960x720,640x480
05-01 20:56:06.915  4163  4313 D QCameraParameters: [DNG_DBG]initDefaultParameters: supported dng sizes: 4032x3024,4032x2268,3024x3024
05-01 20:56:06.915  4163  4313 D QCameraParameters: initDefaultParameters: supported preview fps range = (7000,7000),(15000,15000),(24000,24000),(7000,30000),(10000,30000),(15000,30000),(30000,30000)
05-01 20:56:06.915  4163  4313 D QCameraParameters: initDefaultParameters: camaera position(0). supported focus mode = auto,infinity,fixed,macro,continuous-video,continuous-picture,manual,object-tracking-video,object-tracking-picture
05-01 20:56:06.915  4163  4313 D QCameraParameters: [PARM_DBG] Setting focus mode auto
05-01 20:56:06.915  4163  4313 D QCameraParameters: setSaturation: Setting saturation 5
05-01 20:56:06.915  4163  4313 D QCameraParameters: setSharpness: Setting sharpness 12
05-01 20:56:06.915  4163  4313 D QCameraParameters: setContrast: Setting contrast 5
05-01 20:56:06.916  4163  4313 D QCameraParameters: setSkinToneEnhancement: Setting skintone enhancement 0
05-01 20:56:06.916  4163  4313 D QCameraParameters: setBrightness: Setting brightness 3
05-01 20:56:06.916  4163  4313 D QCameraParameters: setAutoExposure: Setting auto exposure center
05-01 20:56:06.916  4163  4313 D QCameraParameters: [PARM_DBG] Antibanding value from CSC = []
05-01 20:56:06.916  4163  4313 E QCameraParameters: Invalid AntiBanding value: 
05-01 20:56:06.916  4163  4313 D QCameraParameters: [PARM_DBG] Antibanding will be set as 50Hz
05-01 20:56:06.916  4163  4313 D QCameraParameters: initDefaultParameters: model ver :  
05-01 20:56:06.916  4163  4313 D QCameraParameters: [PARM_DBG][setRthdrModes::24307][value::off]
05-01 20:56:06.916  4163  4313 D QCameraParameters: setEffect: Setting effect none
05-01 20:56:06.917  4163  4313 D QCameraParameters: setWhiteBalance: Setting WhiteBalance current wb str auto value :0
05-01 20:56:06.917  4163  4313 D QCameraParameters: setFlash: m_bSamsungApp: 0, m_bIsFactoryBin: 0, preview_state: 0, m_bSysfsTorchOn: 0
05-01 20:56:06.917  4163  4313 D QCameraParameters: [PARM_DBG] zoom_level = 0
05-01 20:56:06.917  4163  4313 D QCameraParameters: setAEBracket, EXP_BRACKETING_OFF
05-01 20:56:06.917  4163  4313 D QCameraParameters: setLensShadeValue: Setting LensShade value enable
05-01 20:56:06.917  4163  4313 D QCameraParameters: setMCEValue: Setting AWBLock value enable
05-01 20:56:06.917  4163  4313 D QCameraParameters: setDISValue: Setting DIS value disable
05-01 20:56:06.917  4163  4313 D QCameraParameters: setToneMapMode: tone map mode 1 
05-01 20:56:06.917  4163  4313 D QCameraParameters: setSceneDetect: Setting Scene Detect off
05-01 20:56:06.918  4163  4313 D QCameraParameters: setSecureMode: Secure mode value: disable
05-01 20:56:06.918  4163  4313 D QCameraParameters: [PARM_DBG] m_bVisionMode = 0
05-01 20:56:06.918  4163  4313 D QCameraParameters: setAwbLock: Setting AWBLock value false
05-01 20:56:06.921  4163  4313 D QCameraParameters: setExifIspVersion: EXIF -FW [LOAD] : C12QSJK01SM
05-01 20:56:06.932  4163  4313 E QCameraParameters: setEdgeAlignmentEnabled: EdgeAlignment Enabled=0 and bypass =1
05-01 20:56:06.933  4163  4313 D QCameraParameters: [setCamtypeInterval] Camtype - 0
05-01 20:56:06.933  4163  4313 D QCameraParameters: [PARM_DBG] setNumOfSnapshot : nBurstNum = 1, nExpnum = 1
05-01 20:56:06.958  4163  4163 D mm-camera-intf: mm_camera_open:  opened, break out while loop
05-01 20:56:06.958  4163  4163 D mm-camera-intf: mm_camera_poll_thread_launch: wait
05-01 20:56:06.959  4163  4163 D mm-camera-intf: mm_camera_poll_thread_launch: done
05-01 20:56:06.959  4163  4163 D mm-camera-intf: mm_camera_poll_sig: wait
05-01 20:56:06.962  4163  4163 D mm-camera-intf: mm_camera_poll_sig: done
05-01 20:56:06.963  4163  4163 D mm-camera-intf: camera_open: X, Open succeded
05-01 20:56:06.963  4163  4163 D QCamera2HWI: isFactoryBin: User Binary
05-01 20:56:06.963  4163  4313 I QCamera2HWI: dw->cmd: 6
05-01 20:56:06.963  4163  4313 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_PARAM_INIT
05-01 20:56:06.964  4163  4163 I ServiceManager: Waiting for service 'display.qservice' on '/dev/binder'...
05-01 20:56:06.964  4163  4313 I QCamera2HWI: dw->cmd: 8
05-01 20:56:06.964  4163  4313 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_LIB_LOAD
05-01 20:56:06.967  4163  4313 D UniPlugin: uni_plugin_load is called!
05-01 20:56:06.967  4163  4313 D UniPlugin: __uni_plugin_load is called!
05-01 20:56:06.967  4163  4313 D UniPlugin: get_plugin_handle is called!
05-01 20:56:06.968  4163  4313 D UniPlugin: UniPlugin is called!
05-01 20:56:06.969  4163  4313 D UniPlugin: uni_plugin_load is called!
05-01 20:56:06.969  4163  4313 D UniPlugin: __uni_plugin_load is called!
05-01 20:56:06.969  4163  4313 D UniPlugin: get_plugin_handle is called!
05-01 20:56:06.970  4163  4313 D UniPlugin: UniPlugin is called!
05-01 20:56:06.970  4163  4313 D UniPlugin: uni_plugin_load is called!
05-01 20:56:06.970  4163  4313 D UniPlugin: __uni_plugin_load is called!
05-01 20:56:06.970  4163  4313 D UniPlugin: get_plugin_handle is called!
05-01 20:56:06.971  4163  4313 D UniPlugin: UniPlugin is called!
05-01 20:56:06.971  4163  4313 D UniPlugin: uni_plugin_load is called!
05-01 20:56:06.971  4163  4313 D UniPlugin: __uni_plugin_load is called!
05-01 20:56:06.971  4163  4313 D UniPlugin: get_plugin_handle is called!
05-01 20:56:06.972  4163  4313 D UniPlugin: UniPlugin is called!
05-01 20:56:06.972  4163  4313 D Dejagging_interface: [dejagging] dejagging_interface VERSION 10750217
05-01 20:56:06.972  4163  4313 D UniPlugin: uni_plugin_init is called!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] void* create_dejaggingCore() is called!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] dejaggingCore::dejaggingCore() is called!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] dejagging_params::dejagging_params() is called!
05-01 20:56:06.972  4163  4313 D Dejagging_interface: [dejagging] Objects Created!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] int dejaggingCore::dejagging_core_init(dejaggingCoreData_t*, tDejagTuningValues_type*) is called!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] CORE Ver 10780217 INIT
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging] int dejaggingCore::dejagging_core_memalloc(int) is called!
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging](dejagging_core_memalloc[178]): Register buffer for HVX, index: 0, data:0xed162000, size: 331776, fd: 39
05-01 20:56:06.972  4163  4313 D DejaggingCore: [dejagging]dynamic loading hvxdejagging lib
05-01 20:56:06.974  4163  4313 D DejaggingCore: [dejagging] Failed to find symbol libhvxdejagging
05-01 20:56:06.974  4163  4313 D QCamera2HWI: [Dejagging](load_uni_plugin[2045]): Set camera info: 0:109
05-01 20:56:06.974  4163  4313 D DejaggingCore: [dejagging] int dejagging_params::dejagging_parameter_init(int, int, tDejagTuningValues_type*, dejag_debug_info_t*) is called!
05-01 20:56:06.974  4163  4313 D DejaggingCore: [dejagging] : loading defalut param for imx260 = 496
05-01 20:56:06.974  4163  4313 D QCamera2HWI: [Lens_DC] uniplugin load E
05-01 20:56:06.974  4163  4313 D UniPlugin: uni_plugin_load is called!
05-01 20:56:06.974  4163  4313 D UniPlugin: __uni_plugin_load is called!
05-01 20:56:06.974  4163  4313 D UniPlugin: get_plugin_handle is called!
05-01 20:56:06.975  4163  4313 E UniPlugin: get_plugin_handle, Couldn't load the library(libldc_interface.so): dlopen failed: library "libldc_core.so" not found: needed by /system/vendor/lib/libldc_interface.so in namespace (default)
05-01 20:56:06.975  4163  4313 E QCamera2HWI: [Lens_DC](load_uni_plugin[2060]): LDC plugin load failed!!
05-01 20:56:06.975  4163  4313 D QCamera2HWI: [Lens_DC] uniplugin load X
05-01 20:56:06.975  4163  4313 I QCamera2HWI: dw->cmd: 7
```
