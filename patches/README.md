bionic patch used in development
to be replaced with something like this
https://review.lineageos.org/c/LineageOS/android_device_xiaomi_msm8996-common/+/224764

log with patch applied bellow
```
*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***
LineageOS Version: '18.1-20230502-UNOFFICIAL-heroqlte'
Build fingerprint: 'samsung/heroqltezc/heroqltechn:8.0.0/R16NW/G9300ZCS5CTA1:user/release-keys'
Revision: '15'
ABI: 'arm'
Timestamp: 2023-05-02 23:01:10+0200
pid: 16335, tid: 16422, name: cameraserver  >>> /system/bin/cameraserver <<<
uid: 1047
signal 6 (SIGABRT), code -1 (SI_QUEUE), fault addr --------
Abort message: 'stack corruption detected (-fstack-protector)'
    r0  00000000  r1  00004026  r2  00000006  r3  e413aef0
    r4  e413af04  r5  e413aee8  r6  00003fcf  r7  0000016b
    r8  e413aef0  r9  e413af00  r10 e413af20  r11 e413af10
    ip  00004026  sp  e413aec0  lr  ea1bb861  pc  ea1bb874

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
    00004004 -------- -------- -------- --------  ................
    00004014 -------- -------- -------- --------  ................
    00004024 -------- -------- -------- --------  ................
    00004034 -------- -------- -------- --------  ................
    00004044 -------- -------- -------- --------  ................
    00004054 -------- -------- -------- --------  ................
    00004064 -------- -------- -------- --------  ................
    00004074 -------- -------- -------- --------  ................
    00004084 -------- -------- -------- --------  ................
    00004094 -------- -------- -------- --------  ................
    000040a4 -------- -------- -------- --------  ................
    000040b4 -------- -------- -------- --------  ................
    000040c4 -------- -------- -------- --------  ................
    000040d4 -------- -------- -------- --------  ................
    000040e4 -------- -------- -------- --------  ................
    000040f4 -------- -------- -------- --------  ................

memory near r3 ([anon:stack_and_tls:16422]):
    e413aed0 00000000 00000000 00000000 00000000  ................
    e413aee0 00000000 00000000 ffffffdf ffffffff  ................
    e413aef0 00000000 00000000 ffffffff 00003fcf  .............?..
    e413af00 00000417 00000000 00000000 00000000  ................
    e413af10 00000000 00000000 00000000 00000000  ................
    e413af20 00000000 00000000 00000000 00000000  ................
    e413af30 00000000 00000000 00000000 00000000  ................
    e413af40 00000000 00000000 00000000 00000000  ................
    e413af50 00000000 00000000 00000000 00000000  ................
    e413af60 00000000 00000000 00000000 00000000  ................
    e413af70 00000000 00000000 00000000 00000000  ................
    e413af80 0000000a d428212f e424e0a0 e413afb0  ..../!(...$.....
    e413af90 e424e114 7673796e e7841490 00000000  ..$.nysv........
    e413afa0 0000000a ea1c94f7 e424e114 e5a3fed9  ..........$.....
    e413afb0 7673796e 00000000 00000000 00000000  nysv............
    e413afc0 de17f8d0 00001ad5 0002fc90 00000000  ................

memory near r4 ([anon:stack_and_tls:16422]):
    e413aee4 00000000 ffffffdf ffffffff 00000000  ................
    e413aef4 00000000 ffffffff 00003fcf 00000417  .........?......
    e413af04 00000000 00000000 00000000 00000000  ................
    e413af14 00000000 00000000 00000000 00000000  ................
    e413af24 00000000 00000000 00000000 00000000  ................
    e413af34 00000000 00000000 00000000 00000000  ................
    e413af44 00000000 00000000 00000000 00000000  ................
    e413af54 00000000 00000000 00000000 00000000  ................
    e413af64 00000000 00000000 00000000 00000000  ................
    e413af74 00000000 00000000 00000000 0000000a  ................
    e413af84 d428212f e424e0a0 e413afb0 e424e114  /!(...$.......$.
    e413af94 7673796e e7841490 00000000 0000000a  nysv............
    e413afa4 ea1c94f7 e424e114 e5a3fed9 7673796e  ......$.....nysv
    e413afb4 00000000 00000000 00000000 de17f8d0  ................
    e413afc4 00001ad5 0002fc90 00000000 def7c47a  ............z...
    e413afd4 00001ad5 00000000 eab41d60 e78414dc  ........`.......

memory near r5 ([anon:stack_and_tls:16422]):
    e413aec8 e413af50 e413af60 00000000 00000000  P...`...........
    e413aed8 00000000 00000000 00000000 00000000  ................
    e413aee8 ffffffdf ffffffff 00000000 00000000  ................
    e413aef8 ffffffff 00003fcf 00000417 00000000  .....?..........
    e413af08 00000000 00000000 00000000 00000000  ................
    e413af18 00000000 00000000 00000000 00000000  ................
    e413af28 00000000 00000000 00000000 00000000  ................
    e413af38 00000000 00000000 00000000 00000000  ................
    e413af48 00000000 00000000 00000000 00000000  ................
    e413af58 00000000 00000000 00000000 00000000  ................
    e413af68 00000000 00000000 00000000 00000000  ................
    e413af78 00000000 00000000 0000000a d428212f  ............/!(.
    e413af88 e424e0a0 e413afb0 e424e114 7673796e  ..$.......$.nysv
    e413af98 e7841490 00000000 0000000a ea1c94f7  ................
    e413afa8 e424e114 e5a3fed9 7673796e 00000000  ..$.....nysv....
    e413afb8 00000000 00000000 de17f8d0 00001ad5  ................

memory near r6:
    00003fac -------- -------- -------- --------  ................
    00003fbc -------- -------- -------- --------  ................
    00003fcc -------- -------- -------- --------  ................
    00003fdc -------- -------- -------- --------  ................
    00003fec -------- -------- -------- --------  ................
    00003ffc -------- -------- -------- --------  ................
    0000400c -------- -------- -------- --------  ................
    0000401c -------- -------- -------- --------  ................
    0000402c -------- -------- -------- --------  ................
    0000403c -------- -------- -------- --------  ................
    0000404c -------- -------- -------- --------  ................
    0000405c -------- -------- -------- --------  ................
    0000406c -------- -------- -------- --------  ................
    0000407c -------- -------- -------- --------  ................
    0000408c -------- -------- -------- --------  ................
    0000409c -------- -------- -------- --------  ................

memory near r8 ([anon:stack_and_tls:16422]):
    e413aed0 00000000 00000000 00000000 00000000  ................
    e413aee0 00000000 00000000 ffffffdf ffffffff  ................
    e413aef0 00000000 00000000 ffffffff 00003fcf  .............?..
    e413af00 00000417 00000000 00000000 00000000  ................
    e413af10 00000000 00000000 00000000 00000000  ................
    e413af20 00000000 00000000 00000000 00000000  ................
    e413af30 00000000 00000000 00000000 00000000  ................
    e413af40 00000000 00000000 00000000 00000000  ................
    e413af50 00000000 00000000 00000000 00000000  ................
    e413af60 00000000 00000000 00000000 00000000  ................
    e413af70 00000000 00000000 00000000 00000000  ................
    e413af80 0000000a d428212f e424e0a0 e413afb0  ..../!(...$.....
    e413af90 e424e114 7673796e e7841490 00000000  ..$.nysv........
    e413afa0 0000000a ea1c94f7 e424e114 e5a3fed9  ..........$.....
    e413afb0 7673796e 00000000 00000000 00000000  nysv............
    e413afc0 de17f8d0 00001ad5 0002fc90 00000000  ................

memory near r9 ([anon:stack_and_tls:16422]):
    e413aee0 00000000 00000000 ffffffdf ffffffff  ................
    e413aef0 00000000 00000000 ffffffff 00003fcf  .............?..
    e413af00 00000417 00000000 00000000 00000000  ................
    e413af10 00000000 00000000 00000000 00000000  ................
    e413af20 00000000 00000000 00000000 00000000  ................
    e413af30 00000000 00000000 00000000 00000000  ................
    e413af40 00000000 00000000 00000000 00000000  ................
    e413af50 00000000 00000000 00000000 00000000  ................
    e413af60 00000000 00000000 00000000 00000000  ................
    e413af70 00000000 00000000 00000000 00000000  ................
    e413af80 0000000a d428212f e424e0a0 e413afb0  ..../!(...$.....
    e413af90 e424e114 7673796e e7841490 00000000  ..$.nysv........
    e413afa0 0000000a ea1c94f7 e424e114 e5a3fed9  ..........$.....
    e413afb0 7673796e 00000000 00000000 00000000  nysv............
    e413afc0 de17f8d0 00001ad5 0002fc90 00000000  ................
    e413afd0 def7c47a 00001ad5 00000000 eab41d60  z...........`...

memory near r10 ([anon:stack_and_tls:16422]):
    e413af00 00000417 00000000 00000000 00000000  ................
    e413af10 00000000 00000000 00000000 00000000  ................
    e413af20 00000000 00000000 00000000 00000000  ................
    e413af30 00000000 00000000 00000000 00000000  ................
    e413af40 00000000 00000000 00000000 00000000  ................
    e413af50 00000000 00000000 00000000 00000000  ................
    e413af60 00000000 00000000 00000000 00000000  ................
    e413af70 00000000 00000000 00000000 00000000  ................
    e413af80 0000000a d428212f e424e0a0 e413afb0  ..../!(...$.....
    e413af90 e424e114 7673796e e7841490 00000000  ..$.nysv........
    e413afa0 0000000a ea1c94f7 e424e114 e5a3fed9  ..........$.....
    e413afb0 7673796e 00000000 00000000 00000000  nysv............
    e413afc0 de17f8d0 00001ad5 0002fc90 00000000  ................
    e413afd0 def7c47a 00001ad5 00000000 eab41d60  z...........`...
    e413afe0 e78414dc e9277f17 e413b0c0 e926ed0c  ......'.......&.
    e413aff0 e926f191 e413b01c ea212124 e926eb0b  ..&.....$!!...&.

memory near r11 ([anon:stack_and_tls:16422]):
    e413aef0 00000000 00000000 ffffffff 00003fcf  .............?..
    e413af00 00000417 00000000 00000000 00000000  ................
    e413af10 00000000 00000000 00000000 00000000  ................
    e413af20 00000000 00000000 00000000 00000000  ................
    e413af30 00000000 00000000 00000000 00000000  ................
    e413af40 00000000 00000000 00000000 00000000  ................
    e413af50 00000000 00000000 00000000 00000000  ................
    e413af60 00000000 00000000 00000000 00000000  ................
    e413af70 00000000 00000000 00000000 00000000  ................
    e413af80 0000000a d428212f e424e0a0 e413afb0  ..../!(...$.....
    e413af90 e424e114 7673796e e7841490 00000000  ..$.nysv........
    e413afa0 0000000a ea1c94f7 e424e114 e5a3fed9  ..........$.....
    e413afb0 7673796e 00000000 00000000 00000000  nysv............
    e413afc0 de17f8d0 00001ad5 0002fc90 00000000  ................
    e413afd0 def7c47a 00001ad5 00000000 eab41d60  z...........`...
    e413afe0 e78414dc e9277f17 e413b0c0 e926ed0c  ......'.......&.

memory near ip:
    00004004 -------- -------- -------- --------  ................
    00004014 -------- -------- -------- --------  ................
    00004024 -------- -------- -------- --------  ................
    00004034 -------- -------- -------- --------  ................
    00004044 -------- -------- -------- --------  ................
    00004054 -------- -------- -------- --------  ................
    00004064 -------- -------- -------- --------  ................
    00004074 -------- -------- -------- --------  ................
    00004084 -------- -------- -------- --------  ................
    00004094 -------- -------- -------- --------  ................
    000040a4 -------- -------- -------- --------  ................
    000040b4 -------- -------- -------- --------  ................
    000040c4 -------- -------- -------- --------  ................
    000040d4 -------- -------- -------- --------  ................
    000040e4 -------- -------- -------- --------  ................
    000040f4 -------- -------- -------- --------  ................

memory near sp ([anon:stack_and_tls:16422]):
    e413aea0 00000000 d428212f d428212f e413aee8  ..../!(./!(.....
    e413aeb0 d428212f e413aee8 00003fcf e424e114  /!(......?....$.
    e413aec0 e413af30 e413af40 e413af50 e413af60  0...@...P...`...
    e413aed0 00000000 00000000 00000000 00000000  ................
    e413aee0 00000000 00000000 ffffffdf ffffffff  ................
    e413aef0 00000000 00000000 ffffffff 00003fcf  .............?..
    e413af00 00000417 00000000 00000000 00000000  ................
    e413af10 00000000 00000000 00000000 00000000  ................
    e413af20 00000000 00000000 00000000 00000000  ................
    e413af30 00000000 00000000 00000000 00000000  ................
    e413af40 00000000 00000000 00000000 00000000  ................
    e413af50 00000000 00000000 00000000 00000000  ................
    e413af60 00000000 00000000 00000000 00000000  ................
    e413af70 00000000 00000000 00000000 00000000  ................
    e413af80 0000000a d428212f e424e0a0 e413afb0  ..../!(...$.....
    e413af90 e424e114 7673796e e7841490 00000000  ..$.nysv........

memory near lr (/apex/com.android.runtime/lib/bionic/libc.so):
    ea1bb840 20148acf 8ac0f904 30fff04f 8acff90a  ... ....O..0....
    ea1bb850 8acff90b 8acff909 900e960f efa8f04e  ............N...
    ea1bb860 90102100 46306021 22064639 f2404643  .!..!`0F9F."CF@.
    ea1bb870 df00176b a9044821 460a4478 0acdf960  k...!H..xD.F`...
    ea1bb880 0acdf942 60106800 22002006 e988f04f  B....h.`. ."O...
    ea1bb890 46292002 f04f2200 2014e8f4 ef28f04e  . )F."O.... N.(.
    ea1bb8a0 20e04605 ef24f04e 98034606 f90a4644  .F. N.$..F..DF..
    ea1bb8b0 f9008acf 98028acf 8acff90b 8acff900  ................
    ea1bb8c0 f9099801 f9008acf 98008acf 8acff900  ................
    ea1bb8d0 f9042014 f04f8ac0 950f30ff f04e900e  . ....O..0....N.
    ea1bb8e0 2100ef68 60219010 46314628 46432206  h..!..!`(F1F."CF
    ea1bb8f0 176bf240 207fdf00 e95af04f fffe957c  @.k.... O.Z.|...
    ea1bb900 f04e2300 460ab99d f06f4601 23000063  .#N....F.Fo.c..#
    ea1bb910 b99cf04e b082b510 4479490b 6821680c  N........IyD.h!h
    ea1bb920 21009101 46699100 e95af04f 28009900  ...!..iFO.Z....(
    ea1bb930 f04fbf08 980131ff 1a106822 ba08d102  ..O..1.."h......

memory near pc (/apex/com.android.runtime/lib/bionic/libc.so):
    ea1bb854 8acff909 900e960f efa8f04e 90102100  ........N....!..
    ea1bb864 46306021 22064639 f2404643 df00176b  !`0F9F."CF@.k...
    ea1bb874 a9044821 460a4478 0acdf960 0acdf942  !H..xD.F`...B...
    ea1bb884 60106800 22002006 e988f04f 46292002  .h.`. ."O.... )F
    ea1bb894 f04f2200 2014e8f4 ef28f04e 20e04605  ."O.... N.(..F. 
    ea1bb8a4 ef24f04e 98034606 f90a4644 f9008acf  N.$..F..DF......
    ea1bb8b4 98028acf 8acff90b 8acff900 f9099801  ................
    ea1bb8c4 f9008acf 98008acf 8acff900 f9042014  ............. ..
    ea1bb8d4 f04f8ac0 950f30ff f04e900e 2100ef68  ..O..0....N.h..!
    ea1bb8e4 60219010 46314628 46432206 176bf240  ..!`(F1F."CF@.k.
    ea1bb8f4 207fdf00 e95af04f fffe957c f04e2300  ... O.Z.|....#N.
    ea1bb904 460ab99d f06f4601 23000063 b99cf04e  ...F.Fo.c..#N...
    ea1bb914 b082b510 4479490b 6821680c 21009101  .....IyD.h!h...!
    ea1bb924 46699100 e95af04f 28009900 f04fbf08  ..iFO.Z....(..O.
    ea1bb934 980131ff 1a106822 ba08d102 bd10b002  .1.."h..........
    ea1bb944 ed44f04e 0005348e b082b510 4479490b  N.D..4.......IyD

memory map (1010 entries):
    b8a0d000-b8a0dfff r--         0      1000  /system/bin/cameraserver (BuildId: 3ce6a9b8517f1c13a31bfe4241e6e3) (load bias 0x1000)
    b8a0e000-b8a0efff r-x         0      1000  /system/bin/cameraserver (BuildId: 3ce6a9b8517f1c13a31bfe4241e6e3) (load bias 0x1000)
    b8a0f000-b8a0ffff r--         0      1000  /system/bin/cameraserver (BuildId: 3ce6a9b8517f1c13a31bfe4241e6e3) (load bias 0x1000)
    e3389000-e3389fff ---         0      1000
    e338a000-e3488fff rw-         0     ff000  [anon:stack_and_tls:16446]
    e3489000-e348afff ---         0      2000
    e348b000-e3589fff rw-         0     ff000  [anon:stack_and_tls:16445]
    e358a000-e358afff ---         0      1000
    e358b000-e3649fff rw-         0     bf000  anon_inode:dmabuf
    e364a000-e3708fff rw-         0     bf000  anon_inode:dmabuf
    e3709000-e37c7fff rw-         0     bf000  anon_inode:dmabuf
    e37c8000-e3886fff rw-         0     bf000  anon_inode:dmabuf
    e3887000-e3945fff rw-         0     bf000  anon_inode:dmabuf
    e3946000-e3a04fff rw-         0     bf000  anon_inode:dmabuf
    e3a05000-e3ac3fff rw-         0     bf000  anon_inode:dmabuf
    e3ac4000-e3b82fff rw-         0     bf000  anon_inode:dmabuf
    e3b83000-e3c41fff rw-         0     bf000  anon_inode:dmabuf
    e3c42000-e3d00fff rw-         0     bf000  anon_inode:dmabuf
    e3d01000-e3dbffff rw-         0     bf000  anon_inode:dmabuf
    e3dc0000-e3dfffff rw-         0     40000  [anon:scudo:primary]
    e3e0d000-e3e14fff r--         0      8000  /system/system_ext/lib/vendor.qti.hardware.perf@1.0.so (BuildId: e76d0dfe186b664c308052234f4a28) (load bias 0x1000)
    e3e15000-e3e1cfff r-x      7000      8000  /system/system_ext/lib/vendor.qti.hardware.perf@1.0.so (BuildId: e76d0dfe186b664c308052234f4a28) (load bias 0x1000)
    e3e1d000-e3e1efff r--      e000      2000  /system/system_ext/lib/vendor.qti.hardware.perf@1.0.so (BuildId: e76d0dfe186b664c308052234f4a28) (load bias 0x1000)
    e3e1f000-e3e1ffff rw-      f000      1000  /system/system_ext/lib/vendor.qti.hardware.perf@1.0.so (BuildId: e76d0dfe186b664c308052234f4a28) (load bias 0x1000)
    e3e5a000-e3e5afff r--         0      1000  /system/lib/libhidltransport.so (BuildId: c117839084beb33a304039342e5b3f) (load bias 0x1000)
    e3e5b000-e3e5bfff r-x         0      1000  /system/lib/libhidltransport.so (BuildId: c117839084beb33a304039342e5b3f) (load bias 0x1000)
    e3e5c000-e3e5cfff r--         0      1000  /system/lib/libhidltransport.so (BuildId: c117839084beb33a304039342e5b3f) (load bias 0x1000)
    e3e8b000-e3e8ffff r-x         0      5000  /system/vendor/lib/libqti-perfd-client.so (BuildId: 611ac7a83eeeb80349f81e916987f6)
    e3e90000-e3e90fff r--      4000      1000  /system/vendor/lib/libqti-perfd-client.so (BuildId: 611ac7a83eeeb80349f81e916987f6)
    e3e91000-e3e91fff rw-      5000      1000  /system/vendor/lib/libqti-perfd-client.so (BuildId: 611ac7a83eeeb80349f81e916987f6)
    e3ecd000-e3ecdfff r--         0      1000  /system/vendor/lib/hw/power.default.so (BuildId: f256170c173f5d9de7aad7232b8bad) (load bias 0x1000)
    e3ece000-e3ecefff r-x         0      1000  /system/vendor/lib/hw/power.default.so (BuildId: f256170c173f5d9de7aad7232b8bad) (load bias 0x1000)
    e3ecf000-e3ecffff r--         0      1000  /system/vendor/lib/hw/power.default.so (BuildId: f256170c173f5d9de7aad7232b8bad) (load bias 0x1000)
    e3ed0000-e3ed0fff rw-         0      1000  /system/vendor/lib/hw/power.default.so (BuildId: f256170c173f5d9de7aad7232b8bad) (load bias 0x1000)
    e3f3d000-e3f3dfff ---         0      1000
    e3f3e000-e403cfff rw-         0     ff000  [anon:stack_and_tls:16423]
    e403d000-e403efff ---         0      2000
    e403f000-e413dfff rw-         0     ff000  [anon:stack_and_tls:16422]
    e413e000-e413ffff ---         0      2000
    e4140000-e423efff rw-         0     ff000  [anon:stack_and_tls:16421]
    e423f000-e423ffff ---         0      1000
    e4240000-e467ffff rw-         0    440000  [anon:scudo:primary]
    e4691000-e4694fff r--         0      4000  /system/lib/libappfuse.so (BuildId: 10cfad2a73708b06fe57a100940e2b) (load bias 0x1000)
    e4695000-e4699fff r-x      3000      5000  /system/lib/libappfuse.so (BuildId: 10cfad2a73708b06fe57a100940e2b) (load bias 0x1000)
    e469a000-e469afff r--      7000      1000  /system/lib/libappfuse.so (BuildId: 10cfad2a73708b06fe57a100940e2b) (load bias 0x1000)
    e469b000-e469bfff rw-      7000      1000  /system/lib/libappfuse.so (BuildId: 10cfad2a73708b06fe57a100940e2b) (load bias 0x1000)
    e46c5000-e46c8fff r--         0      4000  /system/lib/libnetdbpf.so (BuildId: 245a957fb808f8d7bfe7e01e64a05f) (load bias 0x1000)
    e46c9000-e46d5fff r-x      3000      d000  /system/lib/libnetdbpf.so (BuildId: 245a957fb808f8d7bfe7e01e64a05f) (load bias 0x1000)
    e46d6000-e46d6fff r--      f000      1000  /system/lib/libnetdbpf.so (BuildId: 245a957fb808f8d7bfe7e01e64a05f) (load bias 0x1000)
    e4706000-e4716fff r-x         0     11000  /system/vendor/lib/libmmjpeg_interface.so (BuildId: 17b9ebc4cdfdae6aa0954b2d26c9e0)
    e4717000-e4717fff r--     10000      1000  /system/vendor/lib/libmmjpeg_interface.so (BuildId: 17b9ebc4cdfdae6aa0954b2d26c9e0)
    e4718000-e4718fff rw-     11000      1000  /system/vendor/lib/libmmjpeg_interface.so (BuildId: 17b9ebc4cdfdae6aa0954b2d26c9e0)
    e4777000-e4777fff r--         0      1000  /apex/com.android.os.statsd/lib/libstatssocket.so (BuildId: 5c5d96cc7d091e240e872aca24c4d1) (load bias 0x1000)
    e4778000-e477afff r-x         0      3000  /apex/com.android.os.statsd/lib/libstatssocket.so (BuildId: 5c5d96cc7d091e240e872aca24c4d1) (load bias 0x1000)
    e477b000-e477bfff r--      2000      1000  /apex/com.android.os.statsd/lib/libstatssocket.so (BuildId: 5c5d96cc7d091e240e872aca24c4d1) (load bias 0x1000)
    e477c000-e477cfff rw-      2000      1000  /apex/com.android.os.statsd/lib/libstatssocket.so (BuildId: 5c5d96cc7d091e240e872aca24c4d1) (load bias 0x1000)
    e4781000-e47a5fff r--         0     25000  /system/lib/libprotobuf-cpp-lite.so (BuildId: 1a61f25c73275e52c48e0ef1586b3d) (load bias 0x1000)
    e47a6000-e47d3fff r-x     24000     2e000  /system/lib/libprotobuf-cpp-lite.so (BuildId: 1a61f25c73275e52c48e0ef1586b3d) (load bias 0x1000)
    e47d4000-e47d5fff r--     51000      2000  /system/lib/libprotobuf-cpp-lite.so (BuildId: 1a61f25c73275e52c48e0ef1586b3d) (load bias 0x1000)
    e47d6000-e47d6fff rw-     52000      1000  /system/lib/libprotobuf-cpp-lite.so (BuildId: 1a61f25c73275e52c48e0ef1586b3d) (load bias 0x1000)
    e4815000-e481efff r--         0      a000  /system/lib/android.system.suspend@1.0.so (BuildId: da8839f31fafc2b88481b30776bb63) (load bias 0x1000)
    e481f000-e4828fff r-x      9000      a000  /system/lib/android.system.suspend@1.0.so (BuildId: da8839f31fafc2b88481b30776bb63) (load bias 0x1000)
    e4829000-e482afff r--     12000      2000  /system/lib/android.system.suspend@1.0.so (BuildId: da8839f31fafc2b88481b30776bb63) (load bias 0x1000)
    e482b000-e482bfff rw-     13000      1000  /system/lib/android.system.suspend@1.0.so (BuildId: da8839f31fafc2b88481b30776bb63) (load bias 0x1000)
    e4858000-e486ffff r-x         0     18000  /system/vendor/lib/libadsprpc.so (BuildId: 6afaa6936b07814003090119c5b11e)
    e4870000-e4870fff ---         0      1000
    e4871000-e4871fff r--     18000      1000  /system/vendor/lib/libadsprpc.so (BuildId: 6afaa6936b07814003090119c5b11e)
    e4872000-e4872fff rw-     19000      1000  /system/vendor/lib/libadsprpc.so (BuildId: 6afaa6936b07814003090119c5b11e)
    e4873000-e4873fff rw-         0      1000  [anon:.bss]
    e4881000-e4a94fff r--         0    214000  /system/lib/libpdfium.so (BuildId: 60df250b50712b017c9d56e3e8adbb) (load bias 0x1000)
    e4a95000-e4cdcfff r-x    213000    248000  /system/lib/libpdfium.so (BuildId: 60df250b50712b017c9d56e3e8adbb) (load bias 0x1000)
    e4cdd000-e4ce8fff r--    45a000      c000  /system/lib/libpdfium.so (BuildId: 60df250b50712b017c9d56e3e8adbb) (load bias 0x1000)
    e4ce9000-e4cecfff rw-    465000      4000  /system/lib/libpdfium.so (BuildId: 60df250b50712b017c9d56e3e8adbb) (load bias 0x1000)
    e4ced000-e4ceffff rw-         0      3000  [anon:.bss]
    e4d09000-e4d0dfff r--         0      5000  /system/vendor/lib/libqservice.so (BuildId: 5080c004048f9fcf44f3b1d06c98ff) (load bias 0x1000)
    e4d0e000-e4d0ffff r-x      4000      2000  /system/vendor/lib/libqservice.so (BuildId: 5080c004048f9fcf44f3b1d06c98ff) (load bias 0x1000)
    e4d10000-e4d12fff r--      5000      3000  /system/vendor/lib/libqservice.so (BuildId: 5080c004048f9fcf44f3b1d06c98ff) (load bias 0x1000)
    e4d13000-e4d13fff rw-      7000      1000  /system/vendor/lib/libqservice.so (BuildId: 5080c004048f9fcf44f3b1d06c98ff) (load bias 0x1000)
    e4d55000-e4d72fff r--         0     1e000  /system/lib/android.hardware.drm@1.2.so (BuildId: d593bbf3ec9ed30c0ff7e9ed9677c1) (load bias 0x1000)
    e4d73000-e4d9afff r-x     1d000     28000  /system/lib/android.hardware.drm@1.2.so (BuildId: d593bbf3ec9ed30c0ff7e9ed9677c1) (load bias 0x1000)
    e4d9b000-e4d9ffff r--     44000      5000  /system/lib/android.hardware.drm@1.2.so (BuildId: d593bbf3ec9ed30c0ff7e9ed9677c1) (load bias 0x1000)
    e4da0000-e4da0fff rw-     48000      1000  /system/lib/android.hardware.drm@1.2.so (BuildId: d593bbf3ec9ed30c0ff7e9ed9677c1) (load bias 0x1000)
    e4dfb000-e4dfdfff r--         0      3000  /system/vendor/lib/libshims_cameraclient.so (BuildId: bf81e0f1bea0745ef48e86b9e048f3) (load bias 0x1000)
    e4dfe000-e4dfefff r-x      2000      1000  /system/vendor/lib/libshims_cameraclient.so (BuildId: bf81e0f1bea0745ef48e86b9e048f3) (load bias 0x1000)
    e4dff000-e4dfffff r--      2000      1000  /system/vendor/lib/libshims_cameraclient.so (BuildId: bf81e0f1bea0745ef48e86b9e048f3) (load bias 0x1000)
    e4e09000-e4e29fff r-x         0     21000  /system/vendor/lib/libts_face_beautify_hal.so
    e4e2a000-e4e2afff r--     20000      1000  /system/vendor/lib/libts_face_beautify_hal.so
    e4e2b000-e4e2cfff rw-     21000      2000  /system/vendor/lib/libts_face_beautify_hal.so
    e4e69000-e4e6cfff r--         0      4000  /system/lib/libmeminfo.so (BuildId: a36493ce55d7cde6302af0c5edf199) (load bias 0x1000)
    e4e6d000-e4e71fff r-x      3000      5000  /system/lib/libmeminfo.so (BuildId: a36493ce55d7cde6302af0c5edf199) (load bias 0x1000)
    e4e72000-e4e73fff r--      7000      2000  /system/lib/libmeminfo.so (BuildId: a36493ce55d7cde6302af0c5edf199) (load bias 0x1000)
    e4e74000-e4e74fff rw-      8000      1000  /system/lib/libmeminfo.so (BuildId: a36493ce55d7cde6302af0c5edf199) (load bias 0x1000)
    e4e97000-e4eaffff r-x         0     19000  /system/vendor/lib/libmmcamera_interface.so (BuildId: 9f475d035ff525e57c9ce49f2fc642)
    e4eb0000-e4eb0fff ---         0      1000
    e4eb1000-e4eb1fff r--     19000      1000  /system/vendor/lib/libmmcamera_interface.so (BuildId: 9f475d035ff525e57c9ce49f2fc642)
    e4eb2000-e4eb2fff rw-     1a000      1000  /system/vendor/lib/libmmcamera_interface.so (BuildId: 9f475d035ff525e57c9ce49f2fc642)
    e4ec6000-e4ec7fff r--         0      2000  /system/lib/libhardware_legacy.so (BuildId: 0b7eb15bdbfbc784aa1aaaf83a7aa7) (load bias 0x1000)
    e4ec8000-e4ec9fff r-x      1000      2000  /system/lib/libhardware_legacy.so (BuildId: 0b7eb15bdbfbc784aa1aaaf83a7aa7) (load bias 0x1000)
    e4eca000-e4ecbfff r--      2000      2000  /system/lib/libhardware_legacy.so (BuildId: 0b7eb15bdbfbc784aa1aaaf83a7aa7) (load bias 0x1000)
    e4ecc000-e4eccfff rw-      3000      1000  /system/lib/libhardware_legacy.so (BuildId: 0b7eb15bdbfbc784aa1aaaf83a7aa7) (load bias 0x1000)
    e4f18000-e4f18fff r--         0      1000  /system/vendor/lib/libqdMetaData.so (BuildId: f58a53b36f7e94ce20ee1d8a7206af) (load bias 0x1000)
    e4f19000-e4f1bfff r-x         0      3000  /system/vendor/lib/libqdMetaData.so (BuildId: f58a53b36f7e94ce20ee1d8a7206af) (load bias 0x1000)
    e4f1c000-e4f1cfff r--      2000      1000  /system/vendor/lib/libqdMetaData.so (BuildId: f58a53b36f7e94ce20ee1d8a7206af) (load bias 0x1000)
    e4f6d000-e4f72fff r--         0      6000  /system/lib/libnativedisplay.so (BuildId: 54302bf1789bebc1c7a3ac833bf07f) (load bias 0x1000)
    e4f73000-e4f79fff r-x      5000      7000  /system/lib/libnativedisplay.so (BuildId: 54302bf1789bebc1c7a3ac833bf07f) (load bias 0x1000)
    e4f7a000-e4f7afff r--      b000      1000  /system/lib/libnativedisplay.so (BuildId: 54302bf1789bebc1c7a3ac833bf07f) (load bias 0x1000)
    e4f7b000-e4f7bfff rw-      b000      1000  /system/lib/libnativedisplay.so (BuildId: 54302bf1789bebc1c7a3ac833bf07f) (load bias 0x1000)
    e4f86000-e4f8dfff r--         0      8000  /system/lib/libsensor.so (BuildId: d4891ced498f71bcf030d1793c5154) (load bias 0x1000)
    e4f8e000-e4f93fff r-x      7000      6000  /system/lib/libsensor.so (BuildId: d4891ced498f71bcf030d1793c5154) (load bias 0x1000)
    e4f94000-e4f95fff r--      c000      2000  /system/lib/libsensor.so (BuildId: d4891ced498f71bcf030d1793c5154) (load bias 0x1000)
    e4f96000-e4f97fff rw-      d000      2000  /system/lib/libsensor.so (BuildId: d4891ced498f71bcf030d1793c5154) (load bias 0x1000)
    e4fc0000-e4fc1fff r--         0      2000  /system/lib/libusbhost.so (BuildId: 9bb3c4bec6463e7aafd1e106292895) (load bias 0x1000)
    e4fc2000-e4fc3fff r-x      1000      2000  /system/lib/libusbhost.so (BuildId: 9bb3c4bec6463e7aafd1e106292895) (load bias 0x1000)
    e4fc4000-e4fc4fff r--      2000      1000  /system/lib/libusbhost.so (BuildId: 9bb3c4bec6463e7aafd1e106292895) (load bias 0x1000)
    e502e000-e5031fff r-x         0      4000  /system/vendor/lib/libqomx_core.so (BuildId: 8bfdf4d07819aa36160dcb3fddee7b)
    e5032000-e5032fff r--      3000      1000  /system/vendor/lib/libqomx_core.so (BuildId: 8bfdf4d07819aa36160dcb3fddee7b)
    e5033000-e5033fff rw-      4000      1000  /system/vendor/lib/libqomx_core.so (BuildId: 8bfdf4d07819aa36160dcb3fddee7b)
    e5044000-e5044fff r--         0      1000  /system/lib/libmedia_jni_utils.so (BuildId: dd4fd4cc0c9824295c7d4bb9dfddbb) (load bias 0x1000)
    e5045000-e5046fff r-x         0      2000  /system/lib/libmedia_jni_utils.so (BuildId: dd4fd4cc0c9824295c7d4bb9dfddbb) (load bias 0x1000)
    e5047000-e5047fff r--      1000      1000  /system/lib/libmedia_jni_utils.so (BuildId: dd4fd4cc0c9824295c7d4bb9dfddbb) (load bias 0x1000)
    e5084000-e5087fff r--         0      4000  /system/lib/libpiex.so (BuildId: ff2fa5ad3905443ca1739e4f8a276e) (load bias 0x1000)
    e5088000-e5094fff r-x      3000      d000  /system/lib/libpiex.so (BuildId: ff2fa5ad3905443ca1739e4f8a276e) (load bias 0x1000)
    e5095000-e5096fff r--      f000      2000  /system/lib/libpiex.so (BuildId: ff2fa5ad3905443ca1739e4f8a276e) (load bias 0x1000)
    e50c5000-e50e6fff r--         0     22000  /system/lib/libharfbuzz_ng.so (BuildId: cafbcd7f7056e2daf222f33495252e) (load bias 0x1000)
    e50e7000-e516dfff r-x     21000     87000  /system/lib/libharfbuzz_ng.so (BuildId: cafbcd7f7056e2daf222f33495252e) (load bias 0x1000)
    e516e000-e516efff r--     a7000      1000  /system/lib/libharfbuzz_ng.so (BuildId: cafbcd7f7056e2daf222f33495252e) (load bias 0x1000)
    e516f000-e516ffff rw-     a7000      1000  /system/lib/libharfbuzz_ng.so (BuildId: cafbcd7f7056e2daf222f33495252e) (load bias 0x1000)
    e5170000-e5170fff rw-         0      1000  [anon:.bss]
    e5183000-e5187fff r--         0      5000  /system/lib/libnetdutils.so (BuildId: 0cd420ff4bee11e730ce17f0422daa) (load bias 0x1000)
    e5188000-e5190fff r-x      4000      9000  /system/lib/libnetdutils.so (BuildId: 0cd420ff4bee11e730ce17f0422daa) (load bias 0x1000)
    e5191000-e5191fff r--      c000      1000  /system/lib/libnetdutils.so (BuildId: 0cd420ff4bee11e730ce17f0422daa) (load bias 0x1000)
    e5192000-e5192fff rw-      c000      1000  /system/lib/libnetdutils.so (BuildId: 0cd420ff4bee11e730ce17f0422daa) (load bias 0x1000)
    e51e5000-e51eafff r--         0      6000  /system/lib/libpowermanager.so (BuildId: 89c17155369d75ec69fc15a468148c) (load bias 0x1000)
    e51eb000-e51effff r-x      5000      5000  /system/lib/libpowermanager.so (BuildId: 89c17155369d75ec69fc15a468148c) (load bias 0x1000)
    e51f0000-e51f2fff r--      9000      3000  /system/lib/libpowermanager.so (BuildId: 89c17155369d75ec69fc15a468148c) (load bias 0x1000)
    e51f3000-e51f3fff rw-      b000      1000  /system/lib/libpowermanager.so (BuildId: 89c17155369d75ec69fc15a468148c) (load bias 0x1000)
    e521b000-e5224fff r--         0      a000  /system/lib/libminikin.so (BuildId: 3ac01ee0a0545d51a5ac9724607bf7) (load bias 0x1000)
    e5225000-e5238fff r-x      9000     14000  /system/lib/libminikin.so (BuildId: 3ac01ee0a0545d51a5ac9724607bf7) (load bias 0x1000)
    e5239000-e523afff r--     1c000      2000  /system/lib/libminikin.so (BuildId: 3ac01ee0a0545d51a5ac9724607bf7) (load bias 0x1000)
    e523b000-e523bfff rw-     1d000      1000  /system/lib/libminikin.so (BuildId: 3ac01ee0a0545d51a5ac9724607bf7) (load bias 0x1000)
    e5248000-e527dfff r--         0     36000  /system/lib/libcrypto.so (BuildId: 2f03399683a8e8f3241d4d13506a57) (load bias 0x1000)
    e527e000-e5302fff r-x     35000     85000  /system/lib/libcrypto.so (BuildId: 2f03399683a8e8f3241d4d13506a57) (load bias 0x1000)
    e5303000-e530bfff r--     b9000      9000  /system/lib/libcrypto.so (BuildId: 2f03399683a8e8f3241d4d13506a57) (load bias 0x1000)
    e530c000-e530cfff rw-     c1000      1000  /system/lib/libcrypto.so (BuildId: 2f03399683a8e8f3241d4d13506a57) (load bias 0x1000)
    e530d000-e530dfff rw-         0      1000  [anon:.bss]
    e5340000-e5348fff r-x         0      9000  /system/lib/libsecnativefeature.so (BuildId: dd53d8f3ceac162fe4391c293fe90d)
    e5349000-e5349fff r--      8000      1000  /system/lib/libsecnativefeature.so (BuildId: dd53d8f3ceac162fe4391c293fe90d)
    e534a000-e534afff rw-      9000      1000  /system/lib/libsecnativefeature.so (BuildId: dd53d8f3ceac162fe4391c293fe90d)
    e53a6000-e53aefff r--         0      9000  /system/lib/libmediadrmmetrics_lite.so (BuildId: 3c323debd13da69adfed3e46ae39d7) (load bias 0x1000)
    e53af000-e53b9fff r-x      8000      b000  /system/lib/libmediadrmmetrics_lite.so (BuildId: 3c323debd13da69adfed3e46ae39d7) (load bias 0x1000)
    e53ba000-e53bafff r--     12000      1000  /system/lib/libmediadrmmetrics_lite.so (BuildId: 3c323debd13da69adfed3e46ae39d7) (load bias 0x1000)
    e53bb000-e53bbfff rw-     12000      1000  /system/lib/libmediadrmmetrics_lite.so (BuildId: 3c323debd13da69adfed3e46ae39d7) (load bias 0x1000)
    e53e6000-e54d7fff r--         0     f2000  /system/lib/libhwui.so (BuildId: 288de00354b6513c223b078d2d60e1) (load bias 0x1000)
    e54d8000-e5962fff r-x     f1000    48b000  /system/lib/libhwui.so (BuildId: 288de00354b6513c223b078d2d60e1) (load bias 0x1000)
    e5963000-e5979fff r--    57b000     17000  /system/lib/libhwui.so (BuildId: 288de00354b6513c223b078d2d60e1) (load bias 0x1000)
    e597a000-e597bfff rw-    591000      2000  /system/lib/libhwui.so (BuildId: 288de00354b6513c223b078d2d60e1) (load bias 0x1000)
    e597c000-e597ffff rw-         0      4000  [anon:.bss]
    e5985000-e5aa2fff r-x         0    11e000  /system/vendor/lib/hw/camera.msm8996.so (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73) (load bias 0x1000)
    e5aa3000-e5aa3fff ---         0      1000
    e5aa4000-e5aa7fff r--    11e000      4000  /system/vendor/lib/hw/camera.msm8996.so (BuildId: a8ad8c7abbd23d6fa46ae262cb240b) (load bias 0x1000)
    e5aa8000-e5b0afff rw-    122000     63000  /system/vendor/lib/hw/camera.msm8996.so (BuildId: a8ad8c7abbd23d6fa46ae262cb240b) (load bias 0x1000)
    e5b0b000-e5b0bfff rw-         0      1000  [anon:.bss]
    e5b62000-e5b65fff r--         0      4000  /system/lib/libdataloader.so (BuildId: 618fc461a82646f28eb924333a09e5) (load bias 0x1000)
    e5b66000-e5b6cfff r-x      3000      7000  /system/lib/libdataloader.so (BuildId: 618fc461a82646f28eb924333a09e5) (load bias 0x1000)
    e5b6d000-e5b6efff r--      9000      2000  /system/lib/libdataloader.so (BuildId: 618fc461a82646f28eb924333a09e5) (load bias 0x1000)
    e5b6f000-e5b6ffff rw-      a000      1000  /system/lib/libdataloader.so (BuildId: 618fc461a82646f28eb924333a09e5) (load bias 0x1000)
    e5b9e000-e5ba1fff r--         0      4000  /system/lib/libstatslog.so (BuildId: 09f0fb5b83f1e0243cc9509144d827) (load bias 0x1000)
    e5ba2000-e5ba7fff r-x      3000      6000  /system/lib/libstatslog.so (BuildId: 09f0fb5b83f1e0243cc9509144d827) (load bias 0x1000)
    e5ba8000-e5ba8fff r--      8000      1000  /system/lib/libstatslog.so (BuildId: 09f0fb5b83f1e0243cc9509144d827) (load bias 0x1000)
    e5bc6000-e5bcbfff r--         0      6000  /system/lib/libz.so (BuildId: 62a421af05ff940a1799f29f12d20b) (load bias 0x1000)
    e5bcc000-e5bdbfff r-x      5000     10000  /system/lib/libz.so (BuildId: 62a421af05ff940a1799f29f12d20b) (load bias 0x1000)
    e5bdc000-e5bddfff r--     14000      2000  /system/lib/libz.so (BuildId: 62a421af05ff940a1799f29f12d20b) (load bias 0x1000)
    e5bde000-e5bdefff rw-     15000      1000  /system/lib/libz.so (BuildId: 62a421af05ff940a1799f29f12d20b) (load bias 0x1000)
    e5c26000-e5c28fff r--         0      3000  /system/lib/libheif.so (BuildId: f6c0ec20de5622597739af722429a1) (load bias 0x1000)
    e5c29000-e5c2bfff r-x      2000      3000  /system/lib/libheif.so (BuildId: f6c0ec20de5622597739af722429a1) (load bias 0x1000)
    e5c2c000-e5c2cfff r--      4000      1000  /system/lib/libheif.so (BuildId: f6c0ec20de5622597739af722429a1) (load bias 0x1000)
    e5c40000-e5c4bfff r--         0      c000  /system/lib/libmediandk.so (BuildId: 810e5058c7090d4d205ff6a9319e8b) (load bias 0x1000)
    e5c4c000-e5c58fff r-x      b000      d000  /system/lib/libmediandk.so (BuildId: 810e5058c7090d4d205ff6a9319e8b) (load bias 0x1000)
    e5c59000-e5c5afff r--     17000      2000  /system/lib/libmediandk.so (BuildId: 810e5058c7090d4d205ff6a9319e8b) (load bias 0x1000)
    e5c5b000-e5c5bfff rw-     18000      1000  /system/lib/libmediandk.so (BuildId: 810e5058c7090d4d205ff6a9319e8b) (load bias 0x1000)
    e5c81000-e5c84fff r-x         0      4000  /system/lib/libuniplugin.so (BuildId: f28f207f3884c85c62a46de2c135fe)
    e5c85000-e5c85fff r--      3000      1000  /system/lib/libuniplugin.so (BuildId: f28f207f3884c85c62a46de2c135fe)
    e5c86000-e5c86fff rw-      4000      1000  /system/lib/libuniplugin.so (BuildId: f28f207f3884c85c62a46de2c135fe)
    e5cd0000-e5cd6fff r--         0      7000  /system/lib/android.hardware.memtrack@1.0.so (BuildId: a31f29a14a161a669be9414b193be8) (load bias 0x1000)
    e5cd7000-e5cddfff r-x      6000      7000  /system/lib/android.hardware.memtrack@1.0.so (BuildId: a31f29a14a161a669be9414b193be8) (load bias 0x1000)
    e5cde000-e5cdefff r--      c000      1000  /system/lib/android.hardware.memtrack@1.0.so (BuildId: a31f29a14a161a669be9414b193be8) (load bias 0x1000)
    e5cdf000-e5cdffff rw-      c000      1000  /system/lib/android.hardware.memtrack@1.0.so (BuildId: a31f29a14a161a669be9414b193be8) (load bias 0x1000)
    e5d2f000-e5d4dfff r--         0     1f000  /system/lib/libft2.so (BuildId: b347feb0cdc1505f45209d740a109c) (load bias 0x1000)
    e5d4e000-e5db6fff r-x     1e000     69000  /system/lib/libft2.so (BuildId: b347feb0cdc1505f45209d740a109c) (load bias 0x1000)
    e5db7000-e5dbafff r--     86000      4000  /system/lib/libft2.so (BuildId: b347feb0cdc1505f45209d740a109c) (load bias 0x1000)
    e5dcc000-e5dccfff r--         0      1000  /system/lib/libmediandk_utils.so (BuildId: 2d1c8dadb27b2e1440649cbbb5cd1c) (load bias 0x1000)
    e5dcd000-e5dcdfff r-x         0      1000  /system/lib/libmediandk_utils.so (BuildId: 2d1c8dadb27b2e1440649cbbb5cd1c) (load bias 0x1000)
    e5dce000-e5dcefff r--         0      1000  /system/lib/libmediandk_utils.so (BuildId: 2d1c8dadb27b2e1440649cbbb5cd1c) (load bias 0x1000)
    e5e21000-e5e31fff r--         0     11000  /system/lib/libsqlite.so (BuildId: 8f34ae3efc4311f602654e2ee24854) (load bias 0x1000)
    e5e32000-e5ef0fff r-x     10000     bf000  /system/lib/libsqlite.so (BuildId: 8f34ae3efc4311f602654e2ee24854) (load bias 0x1000)
    e5ef1000-e5ef3fff r--     ce000      3000  /system/lib/libsqlite.so (BuildId: 8f34ae3efc4311f602654e2ee24854) (load bias 0x1000)
    e5ef4000-e5ef5fff rw-     d0000      2000  /system/lib/libsqlite.so (BuildId: 8f34ae3efc4311f602654e2ee24854) (load bias 0x1000)
    e5f15000-e5f20fff r--         0      c000  /system/lib/libandroid.so (BuildId: 143242387c520a6b7dbaeeda55e958) (load bias 0x1000)
    e5f21000-e5f2cfff r-x      b000      c000  /system/lib/libandroid.so (BuildId: 143242387c520a6b7dbaeeda55e958) (load bias 0x1000)
    e5f2d000-e5f2efff r--     16000      2000  /system/lib/libandroid.so (BuildId: 143242387c520a6b7dbaeeda55e958) (load bias 0x1000)
    e5f2f000-e5f2ffff rw-     17000      1000  /system/lib/libandroid.so (BuildId: 143242387c520a6b7dbaeeda55e958) (load bias 0x1000)
    e5f65000-e5f65fff r--         0      1000  /system/lib/libETC1.so (BuildId: 9218f8cf9b262bcfc9cb11281ac917) (load bias 0x1000)
    e5f66000-e5f67fff r-x         0      2000  /system/lib/libETC1.so (BuildId: 9218f8cf9b262bcfc9cb11281ac917) (load bias 0x1000)
    e5f68000-e5f68fff r--      1000      1000  /system/lib/libETC1.so (BuildId: 9218f8cf9b262bcfc9cb11281ac917) (load bias 0x1000)
    e5f8f000-e5f96fff r--         0      8000  /system/lib/libincfs.so (BuildId: 26fb8e0799a1da76009d2c77c94566) (load bias 0x1000)
    e5f97000-e5fa5fff r-x      7000      f000  /system/lib/libincfs.so (BuildId: 26fb8e0799a1da76009d2c77c94566) (load bias 0x1000)
    e5fa6000-e5fa6fff r--     15000      1000  /system/lib/libincfs.so (BuildId: 26fb8e0799a1da76009d2c77c94566) (load bias 0x1000)
    e5fa7000-e5fa7fff rw-     15000      1000  /system/lib/libincfs.so (BuildId: 26fb8e0799a1da76009d2c77c94566) (load bias 0x1000)
    e5fcb000-e5fd7fff r--         0      d000  /system/lib/android.hardware.drm@1.3.so (BuildId: cac8de19186c83ee62606bbc3ff0bc) (load bias 0x1000)
    e5fd8000-e5fe3fff r-x      c000      c000  /system/lib/android.hardware.drm@1.3.so (BuildId: cac8de19186c83ee62606bbc3ff0bc) (load bias 0x1000)
    e5fe4000-e5fe6fff r--     17000      3000  /system/lib/android.hardware.drm@1.3.so (BuildId: cac8de19186c83ee62606bbc3ff0bc) (load bias 0x1000)
    e5fe7000-e5fe7fff rw-     19000      1000  /system/lib/android.hardware.drm@1.3.so (BuildId: cac8de19186c83ee62606bbc3ff0bc) (load bias 0x1000)
    e6008000-e601dfff r--         0     16000  /apex/com.android.os.statsd/lib/libstatspull.so (BuildId: a310d71d06f962354584ec84e1dab9) (load bias 0x1000)
    e601e000-e6031fff r-x     15000     14000  /apex/com.android.os.statsd/lib/libstatspull.so (BuildId: a310d71d06f962354584ec84e1dab9) (load bias 0x1000)
    e6032000-e6034fff r--     28000      3000  /apex/com.android.os.statsd/lib/libstatspull.so (BuildId: a310d71d06f962354584ec84e1dab9) (load bias 0x1000)
    e6035000-e6035fff rw-     2a000      1000  /apex/com.android.os.statsd/lib/libstatspull.so (BuildId: a310d71d06f962354584ec84e1dab9) (load bias 0x1000)
    e6058000-e6061fff r--         0      a000  /system/lib/libvulkan.so (BuildId: c7183a5bbab858d7d94869eb833ad8) (load bias 0x1000)
    e6062000-e6071fff r-x      9000     10000  /system/lib/libvulkan.so (BuildId: c7183a5bbab858d7d94869eb833ad8) (load bias 0x1000)
    e6072000-e6072fff r--     18000      1000  /system/lib/libvulkan.so (BuildId: c7183a5bbab858d7d94869eb833ad8) (load bias 0x1000)
    e6073000-e6073fff rw-     18000      1000  /system/lib/libvulkan.so (BuildId: c7183a5bbab858d7d94869eb833ad8) (load bias 0x1000)
    e6096000-e60a2fff r--         0      d000  /system/lib/libmediadrm.so (BuildId: 016b016701e13e71f86e1b58df8655) (load bias 0x1000)
    e60a3000-e60b3fff r-x      c000     11000  /system/lib/libmediadrm.so (BuildId: 016b016701e13e71f86e1b58df8655) (load bias 0x1000)
    e60b4000-e60b5fff r--     1c000      2000  /system/lib/libmediadrm.so (BuildId: 016b016701e13e71f86e1b58df8655) (load bias 0x1000)
    e60b6000-e60b6fff rw-     1d000      1000  /system/lib/libmediadrm.so (BuildId: 016b016701e13e71f86e1b58df8655) (load bias 0x1000)
    e60de000-e60e0fff r--         0      3000  /system/lib/libbpf.so (BuildId: 078838023e3887462c765214da15d4) (load bias 0x1000)
    e60e1000-e60e4fff r-x      2000      4000  /system/lib/libbpf.so (BuildId: 078838023e3887462c765214da15d4) (load bias 0x1000)
    e60e5000-e60e6fff r--      5000      2000  /system/lib/libbpf.so (BuildId: 078838023e3887462c765214da15d4) (load bias 0x1000)
    e6127000-e6128fff r--         0      2000  /apex/com.android.art/lib/libnativehelper.so (BuildId: f85c9cd808b82f019734115f57d205) (load bias 0x1000)
    e6129000-e612bfff r-x      1000      3000  /apex/com.android.art/lib/libnativehelper.so (BuildId: f85c9cd808b82f019734115f57d205) (load bias 0x1000)
    e612c000-e612cfff r--      3000      1000  /apex/com.android.art/lib/libnativehelper.so (BuildId: f85c9cd808b82f019734115f57d205) (load bias 0x1000)
    e612d000-e612dfff rw-      3000      1000  /apex/com.android.art/lib/libnativehelper.so (BuildId: f85c9cd808b82f019734115f57d205) (load bias 0x1000)
    e6150000-e6150fff r--         0      1000  /system/lib/libstdc++.so (BuildId: 9c1f0a32d5b662a94f5b15c05b58fa) (load bias 0x1000)
    e6151000-e6152fff r-x         0      2000  /system/lib/libstdc++.so (BuildId: 9c1f0a32d5b662a94f5b15c05b58fa) (load bias 0x1000)
    e6153000-e6153fff r--      1000      1000  /system/lib/libstdc++.so (BuildId: 9c1f0a32d5b662a94f5b15c05b58fa) (load bias 0x1000)
    e6184000-e6186fff r--         0      3000  /system/lib/libbpf_android.so (BuildId: 93ea429968a4703e29a0f19cdebd90) (load bias 0x1000)
    e6187000-e618dfff r-x      2000      7000  /system/lib/libbpf_android.so (BuildId: 93ea429968a4703e29a0f19cdebd90) (load bias 0x1000)
    e618e000-e618efff r--      8000      1000  /system/lib/libbpf_android.so (BuildId: 93ea429968a4703e29a0f19cdebd90) (load bias 0x1000)
    e618f000-e618ffff rw-      8000      1000  /system/lib/libbpf_android.so (BuildId: 93ea429968a4703e29a0f19cdebd90) (load bias 0x1000)
    e61ce000-e61d4fff r-x         0      7000  /system/lib/libsensorlistener.so (BuildId: ca749e0ec4abdbe52a2e8661562bfe)
    e61d5000-e61d5fff ---         0      1000
    e61d6000-e61d6fff r--      7000      1000  /system/lib/libsensorlistener.so (BuildId: ca749e0ec4abdbe52a2e8661562bfe)
    e61d7000-e61d7fff rw-      8000      1000  /system/lib/libsensorlistener.so (BuildId: ca749e0ec4abdbe52a2e8661562bfe)
    e6206000-e626afff r--         0     65000  /system/lib/libandroid_runtime.so (BuildId: 81436fcb982e92e3f0f151e05d3425) (load bias 0x1000)
    e626b000-e6316fff r-x     64000     ac000  /system/lib/libandroid_runtime.so (BuildId: 81436fcb982e92e3f0f151e05d3425) (load bias 0x1000)
    e6317000-e6322fff r--    10f000      c000  /system/lib/libandroid_runtime.so (BuildId: 81436fcb982e92e3f0f151e05d3425) (load bias 0x1000)
    e6323000-e6324fff rw-    11a000      2000  /system/lib/libandroid_runtime.so (BuildId: 81436fcb982e92e3f0f151e05d3425) (load bias 0x1000)
    e6325000-e6325fff rw-         0      1000  [anon:.bss]
    e6355000-e63e0fff r--         0     8c000  /system/vendor/lib/libfastcvopt.so (BuildId: c38f73ffe7b6b3006c49805792e2b8)
    e63e1000-e6668fff r-x     8c000    288000  /system/vendor/lib/libfastcvopt.so (BuildId: c38f73ffe7b6b3006c49805792e2b8)
    e6669000-e694ffff rw-    314000    2e7000  /system/vendor/lib/libfastcvopt.so (BuildId: c38f73ffe7b6b3006c49805792e2b8)
    e6950000-e6953fff r--    5fb000      4000  /system/vendor/lib/libfastcvopt.so (BuildId: c38f73ffe7b6b3006c49805792e2b8)
    e6954000-e6974fff rw-         0     21000  [anon:.bss]
    e699b000-e69bdfff r--         0     23000  /system/lib/libandroidfw.so (BuildId: 7cb467e353d3e2cca9eb47653820b7) (load bias 0x1000)
    e69be000-e69e9fff r-x     22000     2c000  /system/lib/libandroidfw.so (BuildId: 7cb467e353d3e2cca9eb47653820b7) (load bias 0x1000)
    e69ea000-e69ebfff r--     4d000      2000  /system/lib/libandroidfw.so (BuildId: 7cb467e353d3e2cca9eb47653820b7) (load bias 0x1000)
    e69ec000-e69ecfff rw-     4e000      1000  /system/lib/libandroidfw.so (BuildId: 7cb467e353d3e2cca9eb47653820b7) (load bias 0x1000)
    e6a04000-e6a06fff r-x         0      3000  /system/lib/libuniapi.so (BuildId: ff4fb3cc5bcde8827c44bcde8b3540)
    e6a07000-e6a07fff ---         0      1000
    e6a08000-e6a08fff r--      3000      1000  /system/lib/libuniapi.so (BuildId: ff4fb3cc5bcde8827c44bcde8b3540)
    e6a09000-e6a09fff rw-      4000      1000  /system/lib/libuniapi.so (BuildId: ff4fb3cc5bcde8827c44bcde8b3540)
    e6a6b000-e6a6efff r--         0      4000  /system/lib/libhidl-gen-utils.so (BuildId: d5802bef9d0ffc2d0972d89dcfc04b) (load bias 0x1000)
    e6a6f000-e6a74fff r-x      3000      6000  /system/lib/libhidl-gen-utils.so (BuildId: d5802bef9d0ffc2d0972d89dcfc04b) (load bias 0x1000)
    e6a75000-e6a75fff r--      8000      1000  /system/lib/libhidl-gen-utils.so (BuildId: d5802bef9d0ffc2d0972d89dcfc04b) (load bias 0x1000)
    e6a8d000-e6aa0fff r--         0     14000  /system/lib/android.hardware.drm@1.1.so (BuildId: 94b54fcf6e0d7c5c8a6a2fa024176b) (load bias 0x1000)
    e6aa1000-e6abbfff r-x     13000     1b000  /system/lib/android.hardware.drm@1.1.so (BuildId: 94b54fcf6e0d7c5c8a6a2fa024176b) (load bias 0x1000)
    e6abc000-e6abefff r--     2d000      3000  /system/lib/android.hardware.drm@1.1.so (BuildId: 94b54fcf6e0d7c5c8a6a2fa024176b) (load bias 0x1000)
    e6abf000-e6abffff rw-     2f000      1000  /system/lib/android.hardware.drm@1.1.so (BuildId: 94b54fcf6e0d7c5c8a6a2fa024176b) (load bias 0x1000)
    e6ae4000-e6b10fff r--         0     2d000  /system/lib/libdng_sdk.so (BuildId: bea2591c9e43e7629097951227627c) (load bias 0x1000)
    e6b11000-e6b69fff r-x     2c000     59000  /system/lib/libdng_sdk.so (BuildId: bea2591c9e43e7629097951227627c) (load bias 0x1000)
    e6b6a000-e6b6dfff r--     84000      4000  /system/lib/libdng_sdk.so (BuildId: bea2591c9e43e7629097951227627c) (load bias 0x1000)
    e6b6e000-e6b6efff rw-     87000      1000  /system/lib/libdng_sdk.so (BuildId: bea2591c9e43e7629097951227627c) (load bias 0x1000)
    e6b6f000-e6b6ffff rw-         0      1000  [anon:.bss]
    e6b9b000-e6b9dfff r--         0      3000  /system/lib/libdebuggerd_client.so (BuildId: eaee557e78d6f43655ffab4344d557) (load bias 0x1000)
    e6b9e000-e6ba2fff r-x      2000      5000  /system/lib/libdebuggerd_client.so (BuildId: eaee557e78d6f43655ffab4344d557) (load bias 0x1000)
    e6ba3000-e6ba3fff r--      6000      1000  /system/lib/libdebuggerd_client.so (BuildId: eaee557e78d6f43655ffab4344d557) (load bias 0x1000)
    e6bdc000-e6be0fff r--         0      5000  /system/lib/libziparchive.so (BuildId: af1a482caea1f2421b63bd895f93d2) (load bias 0x1000)
    e6be1000-e6be6fff r-x      4000      6000  /system/lib/libziparchive.so (BuildId: af1a482caea1f2421b63bd895f93d2) (load bias 0x1000)
    e6be7000-e6be7fff r--      9000      1000  /system/lib/libziparchive.so (BuildId: af1a482caea1f2421b63bd895f93d2) (load bias 0x1000)
    e6c01000-e6c76fff r-x         0     76000  /system/vendor/lib/libts_detected_face_hal.so
    e6c77000-e6c7afff r--     75000      4000  /system/vendor/lib/libts_detected_face_hal.so
    e6c7b000-e6cb5fff rw-     79000     3b000  /system/vendor/lib/libts_detected_face_hal.so
    e6cb6000-e6cbbfff rw-         0      6000  [anon:.bss]
    e6cc7000-e6ce5fff r--         0     1f000  /system/lib/libvintf.so (BuildId: 50223e8424c0579cb141dc06404489) (load bias 0x1000)
    e6ce6000-e6d23fff r-x     1e000     3e000  /system/lib/libvintf.so (BuildId: 50223e8424c0579cb141dc06404489) (load bias 0x1000)
    e6d24000-e6d26fff r--     5b000      3000  /system/lib/libvintf.so (BuildId: 50223e8424c0579cb141dc06404489) (load bias 0x1000)
    e6d27000-e6d27fff rw-     5d000      1000  /system/lib/libvintf.so (BuildId: 50223e8424c0579cb141dc06404489) (load bias 0x1000)
    e6d28000-e6d28fff rw-         0      1000  [anon:.bss]
    e6d48000-e6d53fff r--         0      c000  /system/lib/libGLESv3.so (BuildId: d0ad352ff019354d3caccadf9d1021) (load bias 0x1000)
    e6d54000-e6d58fff r-x      b000      5000  /system/lib/libGLESv3.so (BuildId: d0ad352ff019354d3caccadf9d1021) (load bias 0x1000)
    e6d59000-e6d59fff r--      f000      1000  /system/lib/libGLESv3.so (BuildId: d0ad352ff019354d3caccadf9d1021) (load bias 0x1000)
    e6da3000-e6da8fff r--         0      6000  /system/lib/libimg_utils.so (BuildId: 27b96ce00b61c8b5f1c7e4453b5b82) (load bias 0x1000)
    e6da9000-e6daffff r-x      5000      7000  /system/lib/libimg_utils.so (BuildId: 27b96ce00b61c8b5f1c7e4453b5b82) (load bias 0x1000)
    e6db0000-e6db1fff r--      b000      2000  /system/lib/libimg_utils.so (BuildId: 27b96ce00b61c8b5f1c7e4453b5b82) (load bias 0x1000)
    e6db2000-e6db2fff rw-      c000      1000  /system/lib/libimg_utils.so (BuildId: 27b96ce00b61c8b5f1c7e4453b5b82) (load bias 0x1000)
    e6de8000-e6de9fff r--         0      2000  /system/lib/server_configurable_flags.so (BuildId: 6c6f636fc10100d21cdbb72cd759dc) (load bias 0x1000)
    e6dea000-e6deafff r-x      1000      1000  /system/lib/server_configurable_flags.so (BuildId: 6c6f636fc10100d21cdbb72cd759dc) (load bias 0x1000)
    e6deb000-e6decfff r--      1000      2000  /system/lib/server_configurable_flags.so (BuildId: 6c6f636fc10100d21cdbb72cd759dc) (load bias 0x1000)
    e6e12000-e6e12fff r--         0      1000  /system/lib/libprocinfo.so (BuildId: 7041936c3a138432928e4c81a0ee2d) (load bias 0x1000)
    e6e13000-e6e14fff r-x         0      2000  /system/lib/libprocinfo.so (BuildId: 7041936c3a138432928e4c81a0ee2d) (load bias 0x1000)
    e6e15000-e6e15fff r--      1000      1000  /system/lib/libprocinfo.so (BuildId: 7041936c3a138432928e4c81a0ee2d) (load bias 0x1000)
    e6e48000-e6e4afff r--         0      3000  /system/lib/libtimeinstate.so (BuildId: 59cd7a72db21e861fa064bd70696b4) (load bias 0x1000)
    e6e4b000-e6e4ffff r-x      2000      5000  /system/lib/libtimeinstate.so (BuildId: 59cd7a72db21e861fa064bd70696b4) (load bias 0x1000)
    e6e50000-e6e51fff r--      6000      2000  /system/lib/libtimeinstate.so (BuildId: 59cd7a72db21e861fa064bd70696b4) (load bias 0x1000)
    e6e52000-e6e52fff rw-      7000      1000  /system/lib/libtimeinstate.so (BuildId: 59cd7a72db21e861fa064bd70696b4) (load bias 0x1000)
    e6e96000-e6e96fff r--         0      1000  /system/lib/libmemtrack.so (BuildId: 28ee9beff5e4c4edf21bc401561106) (load bias 0x1000)
    e6e97000-e6e98fff r-x         0      2000  /system/lib/libmemtrack.so (BuildId: 28ee9beff5e4c4edf21bc401561106) (load bias 0x1000)
    e6e99000-e6e99fff r--      1000      1000  /system/lib/libmemtrack.so (BuildId: 28ee9beff5e4c4edf21bc401561106) (load bias 0x1000)
    e6e9a000-e6e9afff rw-      1000      1000  /system/lib/libmemtrack.so (BuildId: 28ee9beff5e4c4edf21bc401561106) (load bias 0x1000)
    e6ec6000-e6ed0fff r--         0      b000  /system/vendor/lib/libOpenCL.so (BuildId: bc21948a85f1ffb4d3e51bd7b9fdf5)
    e6ed1000-e6ed7fff r-x      b000      7000  /system/vendor/lib/libOpenCL.so (BuildId: bc21948a85f1ffb4d3e51bd7b9fdf5)
    e6ed8000-e6ed8fff rw-     12000      1000  /system/vendor/lib/libOpenCL.so (BuildId: bc21948a85f1ffb4d3e51bd7b9fdf5)
    e6ed9000-e6ed9fff r--     13000      1000  /system/vendor/lib/libOpenCL.so (BuildId: bc21948a85f1ffb4d3e51bd7b9fdf5)
    e6eda000-e6edafff rw-         0      1000  [anon:.bss]
    e6f04000-e6f0dfff r--         0      a000  /system/lib/libpng.so (BuildId: 68e0143c8a15b11f862900149d8b56) (load bias 0x1000)
    e6f0e000-e6f29fff r-x      9000     1c000  /system/lib/libpng.so (BuildId: 68e0143c8a15b11f862900149d8b56) (load bias 0x1000)
    e6f2a000-e6f2afff r--     24000      1000  /system/lib/libpng.so (BuildId: 68e0143c8a15b11f862900149d8b56) (load bias 0x1000)
    e6f75000-e6f78fff r--         0      4000  /system/vendor/lib/camera.device@3.3-impl.so (BuildId: af2e6a55798833a4d6a11a72f9e261) (load bias 0x1000)
    e6f79000-e6f7afff r-x      3000      2000  /system/vendor/lib/camera.device@3.3-impl.so (BuildId: af2e6a55798833a4d6a11a72f9e261) (load bias 0x1000)
    e6f7b000-e6f7cfff r--      4000      2000  /system/vendor/lib/camera.device@3.3-impl.so (BuildId: af2e6a55798833a4d6a11a72f9e261) (load bias 0x1000)
    e6f85000-e6f99fff r--         0     15000  /system/vendor/lib/camera.device@3.5-impl.so (BuildId: 272902c4712869043d7516abb953cd) (load bias 0x1000)
    e6f9a000-e6fa6fff r-x     14000      d000  /system/vendor/lib/camera.device@3.5-impl.so (BuildId: 272902c4712869043d7516abb953cd) (load bias 0x1000)
    e6fa7000-e6fa8fff r--     20000      2000  /system/vendor/lib/camera.device@3.5-impl.so (BuildId: 272902c4712869043d7516abb953cd) (load bias 0x1000)
    e6fa9000-e6fa9fff rw-     21000      1000  /system/vendor/lib/camera.device@3.5-impl.so (BuildId: 272902c4712869043d7516abb953cd) (load bias 0x1000)
    e6fd8000-e6fdcfff r--         0      5000  /system/lib/libtinyxml2.so (BuildId: da5dca37b88cc3a0e9f6bcc1d3a845) (load bias 0x1000)
    e6fdd000-e6fe3fff r-x      4000      7000  /system/lib/libtinyxml2.so (BuildId: da5dca37b88cc3a0e9f6bcc1d3a845) (load bias 0x1000)
    e6fe4000-e6fe5fff r--      a000      2000  /system/lib/libtinyxml2.so (BuildId: da5dca37b88cc3a0e9f6bcc1d3a845) (load bias 0x1000)
    e6fe6000-e6fe6fff rw-      b000      1000  /system/lib/libtinyxml2.so (BuildId: da5dca37b88cc3a0e9f6bcc1d3a845) (load bias 0x1000)
    e7001000-e7018fff r--         0     18000  /system/vendor/lib/camera.device@3.6-external-impl.so (BuildId: f49d6e381dbf381103a4050a6d02c6) (load bias 0x1000)
    e7019000-e702afff r-x     17000     12000  /system/vendor/lib/camera.device@3.6-external-impl.so (BuildId: f49d6e381dbf381103a4050a6d02c6) (load bias 0x1000)
    e702b000-e702cfff r--     28000      2000  /system/vendor/lib/camera.device@3.6-external-impl.so (BuildId: f49d6e381dbf381103a4050a6d02c6) (load bias 0x1000)
    e702d000-e702dfff rw-     29000      1000  /system/vendor/lib/camera.device@3.6-external-impl.so (BuildId: f49d6e381dbf381103a4050a6d02c6) (load bias 0x1000)
    e7047000-e7057fff r--         0     11000  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (BuildId: b7d0fa38f783397c09612cb018fb62) (load bias 0x1000)
    e7058000-e7069fff r-x     10000     12000  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (BuildId: b7d0fa38f783397c09612cb018fb62) (load bias 0x1000)
    e706a000-e706afff r--     22000      1000  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (BuildId: b7d0fa38f783397c09612cb018fb62) (load bias 0x1000)
    e706b000-e706bfff rw-     22000      1000  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (BuildId: b7d0fa38f783397c09612cb018fb62) (load bias 0x1000)
    e7087000-e7096fff r--         0     10000  /system/vendor/lib/camera.device@3.4-impl.so (BuildId: 1b0af53b621d40887ac843aaff5986) (load bias 0x1000)
    e7097000-e70a4fff r-x      f000      e000  /system/vendor/lib/camera.device@3.4-impl.so (BuildId: 1b0af53b621d40887ac843aaff5986) (load bias 0x1000)
    e70a5000-e70a5fff r--     1c000      1000  /system/vendor/lib/camera.device@3.4-impl.so (BuildId: 1b0af53b621d40887ac843aaff5986) (load bias 0x1000)
    e70a6000-e70a6fff rw-     1c000      1000  /system/vendor/lib/camera.device@3.4-impl.so (BuildId: 1b0af53b621d40887ac843aaff5986) (load bias 0x1000)
    e70ed000-e710efff r--         0     22000  /system/vendor/lib/camera.device@3.4-external-impl.so (BuildId: 736516e09e5dad7fba6ccdbc69c8e5) (load bias 0x1000)
    e710f000-e7133fff r-x     21000     25000  /system/vendor/lib/camera.device@3.4-external-impl.so (BuildId: 736516e09e5dad7fba6ccdbc69c8e5) (load bias 0x1000)
    e7134000-e7135fff r--     45000      2000  /system/vendor/lib/camera.device@3.4-external-impl.so (BuildId: 736516e09e5dad7fba6ccdbc69c8e5) (load bias 0x1000)
    e7136000-e7136fff rw-     46000      1000  /system/vendor/lib/camera.device@3.4-external-impl.so (BuildId: 736516e09e5dad7fba6ccdbc69c8e5) (load bias 0x1000)
    e7137000-e7137fff rw-         0      1000  [anon:.bss]
    e7163000-e716bfff r--         0      9000  /system/vendor/lib/android.hardware.camera.provider@2.4-external.so (BuildId: 04e278f0a0780bb3f42dc27531b2d2) (load bias 0x1000)
    e716c000-e7177fff r-x      8000      c000  /system/vendor/lib/android.hardware.camera.provider@2.4-external.so (BuildId: 04e278f0a0780bb3f42dc27531b2d2) (load bias 0x1000)
    e7178000-e7178fff r--     13000      1000  /system/vendor/lib/android.hardware.camera.provider@2.4-external.so (BuildId: 04e278f0a0780bb3f42dc27531b2d2) (load bias 0x1000)
    e7179000-e7179fff rw-     13000      1000  /system/vendor/lib/android.hardware.camera.provider@2.4-external.so (BuildId: 04e278f0a0780bb3f42dc27531b2d2) (load bias 0x1000)
    e7190000-e71a6fff r--         0     17000  /system/vendor/lib/camera.device@3.2-impl.so (BuildId: 838552881f80951535871948b9ef11) (load bias 0x1000)
    e71a7000-e71bafff r-x     16000     14000  /system/vendor/lib/camera.device@3.2-impl.so (BuildId: 838552881f80951535871948b9ef11) (load bias 0x1000)
    e71bb000-e71bcfff r--     29000      2000  /system/vendor/lib/camera.device@3.2-impl.so (BuildId: 838552881f80951535871948b9ef11) (load bias 0x1000)
    e71bd000-e71bdfff rw-     2a000      1000  /system/vendor/lib/camera.device@3.2-impl.so (BuildId: 838552881f80951535871948b9ef11) (load bias 0x1000)
    e71f1000-e71f2fff r--         0      2000  /system/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so (BuildId: de47815112eb07e146756f53cff030) (load bias 0x1000)
    e71f3000-e71f4fff r-x      1000      2000  /system/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so (BuildId: de47815112eb07e146756f53cff030) (load bias 0x1000)
    e71f5000-e71f5fff r--      2000      1000  /system/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so (BuildId: de47815112eb07e146756f53cff030) (load bias 0x1000)
    e71f6000-e71f6fff rw-      2000      1000  /system/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so (BuildId: de47815112eb07e146756f53cff030) (load bias 0x1000)
    e7218000-e7229fff r--         0     12000  /system/vendor/lib/camera.device@3.5-external-impl.so (BuildId: f55dca90cc1abe855a6b056074ccfc) (load bias 0x1000)
    e722a000-e7234fff r-x     11000      b000  /system/vendor/lib/camera.device@3.5-external-impl.so (BuildId: f55dca90cc1abe855a6b056074ccfc) (load bias 0x1000)
    e7235000-e7236fff r--     1b000      2000  /system/vendor/lib/camera.device@3.5-external-impl.so (BuildId: f55dca90cc1abe855a6b056074ccfc) (load bias 0x1000)
    e7237000-e7237fff rw-     1c000      1000  /system/vendor/lib/camera.device@3.5-external-impl.so (BuildId: f55dca90cc1abe855a6b056074ccfc) (load bias 0x1000)
    e7246000-e7258fff r--         0     13000  /system/vendor/lib/camera.device@1.0-impl.so (BuildId: 979c7154b395a85d9d59a1ab47711e) (load bias 0x1000)
    e7259000-e7266fff r-x     12000      e000  /system/vendor/lib/camera.device@1.0-impl.so (BuildId: 979c7154b395a85d9d59a1ab47711e) (load bias 0x1000)
    e7267000-e7268fff r--     1f000      2000  /system/vendor/lib/camera.device@1.0-impl.so (BuildId: 979c7154b395a85d9d59a1ab47711e) (load bias 0x1000)
    e7269000-e7269fff rw-     20000      1000  /system/vendor/lib/camera.device@1.0-impl.so (BuildId: 979c7154b395a85d9d59a1ab47711e) (load bias 0x1000)
    e7280000-e72bffff rw-         0     40000  [anon:scudo:primary]
    e72fe000-e72fefff ---         0      1000
    e72ff000-e73fdfff rw-         0     ff000  [anon:stack_and_tls:16337]
    e73fe000-e73fffff ---         0      2000
    e7400000-e74fefff rw-         0     ff000  [anon:stack_and_tls:16336]
    e74ff000-e74fffff ---         0      1000
    e7500000-e75bffff rw-         0     c0000  [anon:scudo:primary]
    e77c0000-e79fffff rw-         0    240000  [anon:scudo:primary]
    e7a11000-e7a17fff r--         0      7000  /system/lib/libstagefright_xmlparser.so (BuildId: 398651af1e50c8fe0ed8022d5ee53f) (load bias 0x1000)
    e7a18000-e7a22fff r-x      6000      b000  /system/lib/libstagefright_xmlparser.so (BuildId: 398651af1e50c8fe0ed8022d5ee53f) (load bias 0x1000)
    e7a23000-e7a23fff r--     10000      1000  /system/lib/libstagefright_xmlparser.so (BuildId: 398651af1e50c8fe0ed8022d5ee53f) (load bias 0x1000)
    e7a24000-e7a24fff rw-     10000      1000  /system/lib/libstagefright_xmlparser.so (BuildId: 398651af1e50c8fe0ed8022d5ee53f) (load bias 0x1000)
    e7a47000-e7a55fff r--         0      f000  /system/lib/android.hardware.media.c2@1.1.so (BuildId: 9ac0ce14689626b094034678f06201) (load bias 0x1000)
    e7a56000-e7a66fff r-x      e000     11000  /system/lib/android.hardware.media.c2@1.1.so (BuildId: 9ac0ce14689626b094034678f06201) (load bias 0x1000)
    e7a67000-e7a69fff r--     1e000      3000  /system/lib/android.hardware.media.c2@1.1.so (BuildId: 9ac0ce14689626b094034678f06201) (load bias 0x1000)
    e7a6a000-e7a6afff rw-     20000      1000  /system/lib/android.hardware.media.c2@1.1.so (BuildId: 9ac0ce14689626b094034678f06201) (load bias 0x1000)
    e7a86000-e7a86fff r--         0      1000  /system/lib/libcgrouprc.so (BuildId: fc4e78628adfb415fe7b77c05061c9) (load bias 0x1000)
    e7a87000-e7a88fff r-x         0      2000  /system/lib/libcgrouprc.so (BuildId: fc4e78628adfb415fe7b77c05061c9) (load bias 0x1000)
    e7a89000-e7a89fff r--      1000      1000  /system/lib/libcgrouprc.so (BuildId: fc4e78628adfb415fe7b77c05061c9) (load bias 0x1000)
    e7a8a000-e7a8afff rw-      1000      1000  /system/lib/libcgrouprc.so (BuildId: fc4e78628adfb415fe7b77c05061c9) (load bias 0x1000)
    e7ad8000-e7afbfff r--         0     24000  /system/lib/android.hardware.media.c2@1.0.so (BuildId: e8ba3480fc5b4bea3065749b063811) (load bias 0x1000)
    e7afc000-e7b38fff r-x     23000     3d000  /system/lib/android.hardware.media.c2@1.0.so (BuildId: e8ba3480fc5b4bea3065749b063811) (load bias 0x1000)
    e7b39000-e7b3efff r--     5f000      6000  /system/lib/android.hardware.media.c2@1.0.so (BuildId: e8ba3480fc5b4bea3065749b063811) (load bias 0x1000)
    e7b3f000-e7b3ffff rw-     64000      1000  /system/lib/android.hardware.media.c2@1.0.so (BuildId: e8ba3480fc5b4bea3065749b063811) (load bias 0x1000)
    e7b41000-e7b56fff r--         0     16000  /system/lib/android.hardware.camera.device@3.5.so (BuildId: 20f3dff77d042e3d6f9f0aa19a07a8) (load bias 0x1000)
    e7b57000-e7b6cfff r-x     15000     16000  /system/lib/android.hardware.camera.device@3.5.so (BuildId: 20f3dff77d042e3d6f9f0aa19a07a8) (load bias 0x1000)
    e7b6d000-e7b70fff r--     2a000      4000  /system/lib/android.hardware.camera.device@3.5.so (BuildId: 20f3dff77d042e3d6f9f0aa19a07a8) (load bias 0x1000)
    e7b71000-e7b71fff rw-     2d000      1000  /system/lib/android.hardware.camera.device@3.5.so (BuildId: 20f3dff77d042e3d6f9f0aa19a07a8) (load bias 0x1000)
    e7b89000-e7c1ffff r--         0     97000  /apex/com.android.art/lib/libicui18n.so (BuildId: 286ffd2ae0d403ea55017e95e3f338) (load bias 0x1000)
    e7c20000-e7d2bfff r-x     96000    10c000  /apex/com.android.art/lib/libicui18n.so (BuildId: 286ffd2ae0d403ea55017e95e3f338) (load bias 0x1000)
    e7d2c000-e7d36fff r--    1a1000      b000  /apex/com.android.art/lib/libicui18n.so (BuildId: 286ffd2ae0d403ea55017e95e3f338) (load bias 0x1000)
    e7d37000-e7d37fff rw-    1ab000      1000  /apex/com.android.art/lib/libicui18n.so (BuildId: 286ffd2ae0d403ea55017e95e3f338) (load bias 0x1000)
    e7d38000-e7d38fff rw-         0      1000  [anon:.bss]
    e7d55000-e7d62fff r--         0      e000  /system/lib/libimage_io.so (BuildId: f46f1caf703c7b061e4e7d5c21e07e) (load bias 0x1000)
    e7d63000-e7d71fff r-x      d000      f000  /system/lib/libimage_io.so (BuildId: f46f1caf703c7b061e4e7d5c21e07e) (load bias 0x1000)
    e7d72000-e7d73fff r--     1b000      2000  /system/lib/libimage_io.so (BuildId: f46f1caf703c7b061e4e7d5c21e07e) (load bias 0x1000)
    e7da8000-e7daefff r--         0      7000  /system/lib/android.hardware.graphics.allocator@4.0.so (BuildId: a0994d3e5cc52970348842c82ec1d4) (load bias 0x1000)
    e7daf000-e7db5fff r-x      6000      7000  /system/lib/android.hardware.graphics.allocator@4.0.so (BuildId: a0994d3e5cc52970348842c82ec1d4) (load bias 0x1000)
    e7db6000-e7db7fff r--      c000      2000  /system/lib/android.hardware.graphics.allocator@4.0.so (BuildId: a0994d3e5cc52970348842c82ec1d4) (load bias 0x1000)
    e7db8000-e7db8fff rw-      d000      1000  /system/lib/android.hardware.graphics.allocator@4.0.so (BuildId: a0994d3e5cc52970348842c82ec1d4) (load bias 0x1000)
    e7dc8000-e7dd1fff r--         0      a000  /system/lib/libcodec2_client.so (BuildId: 9dc966fcee48fc25530ab87f4529d3) (load bias 0x1000)
    e7dd2000-e7ddffff r-x      9000      e000  /system/lib/libcodec2_client.so (BuildId: 9dc966fcee48fc25530ab87f4529d3) (load bias 0x1000)
    e7de0000-e7de0fff r--     16000      1000  /system/lib/libcodec2_client.so (BuildId: 9dc966fcee48fc25530ab87f4529d3) (load bias 0x1000)
    e7de1000-e7de1fff rw-     16000      1000  /system/lib/libcodec2_client.so (BuildId: 9dc966fcee48fc25530ab87f4529d3) (load bias 0x1000)
    e7e0c000-e7e1bfff r--         0     10000  /system/lib/android.hardware.camera.device@3.2.so (BuildId: 6a9a20a8d7b780577e762b50aafe91) (load bias 0x1000)
    e7e1c000-e7e31fff r-x      f000     16000  /system/lib/android.hardware.camera.device@3.2.so (BuildId: 6a9a20a8d7b780577e762b50aafe91) (load bias 0x1000)
    e7e32000-e7e34fff r--     24000      3000  /system/lib/android.hardware.camera.device@3.2.so (BuildId: 6a9a20a8d7b780577e762b50aafe91) (load bias 0x1000)
    e7e35000-e7e35fff rw-     26000      1000  /system/lib/android.hardware.camera.device@3.2.so (BuildId: 6a9a20a8d7b780577e762b50aafe91) (load bias 0x1000)
    e7e5a000-e7e5bfff r--         0      2000  /system/lib/libaudiomanager.so (BuildId: d8ead402c085295da9cb877d43d45b) (load bias 0x1000)
    e7e5c000-e7e5dfff r-x      1000      2000  /system/lib/libaudiomanager.so (BuildId: d8ead402c085295da9cb877d43d45b) (load bias 0x1000)
    e7e5e000-e7e5efff r--      2000      1000  /system/lib/libaudiomanager.so (BuildId: d8ead402c085295da9cb877d43d45b) (load bias 0x1000)
    e7e5f000-e7e5ffff rw-      2000      1000  /system/lib/libaudiomanager.so (BuildId: d8ead402c085295da9cb877d43d45b) (load bias 0x1000)
    e7ea7000-e7eaafff r--         0      4000  /system/lib/libselinux.so (BuildId: d22148ee48457dd6c31fab8fe60ba6) (load bias 0x1000)
    e7eab000-e7eb7fff r-x      3000      d000  /system/lib/libselinux.so (BuildId: d22148ee48457dd6c31fab8fe60ba6) (load bias 0x1000)
    e7eb8000-e7eb8fff r--      f000      1000  /system/lib/libselinux.so (BuildId: d22148ee48457dd6c31fab8fe60ba6) (load bias 0x1000)
    e7eb9000-e7eb9fff rw-      f000      1000  /system/lib/libselinux.so (BuildId: d22148ee48457dd6c31fab8fe60ba6) (load bias 0x1000)
    e7eba000-e7ebafff rw-         0      1000  [anon:.bss]
    e7ed8000-e7edbfff r--         0      4000  /system/lib/libGLESv1_CM.so (BuildId: 642b02538917f5b7445ad012e3e650) (load bias 0x1000)
    e7edc000-e7eddfff r-x      3000      2000  /system/lib/libGLESv1_CM.so (BuildId: 642b02538917f5b7445ad012e3e650) (load bias 0x1000)
    e7ede000-e7edffff r--      4000      2000  /system/lib/libGLESv1_CM.so (BuildId: 642b02538917f5b7445ad012e3e650) (load bias 0x1000)
    e7f28000-e7f2cfff r--         0      5000  /system/lib/libmedia_codeclist.so (BuildId: c89d21262214e500481125fc6b93bf) (load bias 0x1000)
    e7f2d000-e7f2ffff r-x      4000      3000  /system/lib/libmedia_codeclist.so (BuildId: c89d21262214e500481125fc6b93bf) (load bias 0x1000)
    e7f30000-e7f31fff r--      6000      2000  /system/lib/libmedia_codeclist.so (BuildId: c89d21262214e500481125fc6b93bf) (load bias 0x1000)
    e7f32000-e7f32fff rw-      7000      1000  /system/lib/libmedia_codeclist.so (BuildId: c89d21262214e500481125fc6b93bf) (load bias 0x1000)
    e7f71000-e7f90fff r--         0     20000  /system/lib/libcamera_client.so (BuildId: 61a265239844ab640695d1692b372f) (load bias 0x1000)
    e7f91000-e7faffff r-x     1f000     1f000  /system/lib/libcamera_client.so (BuildId: 61a265239844ab640695d1692b372f) (load bias 0x1000)
    e7fb0000-e7fb5fff r--     3d000      6000  /system/lib/libcamera_client.so (BuildId: 61a265239844ab640695d1692b372f) (load bias 0x1000)
    e7fb6000-e7fb6fff rw-     42000      1000  /system/lib/libcamera_client.so (BuildId: 61a265239844ab640695d1692b372f) (load bias 0x1000)
    e7fda000-e7fe2fff r--         0      9000  /system/lib/android.hardware.graphics.mapper@2.1.so (BuildId: 69fcac82326a1b884cf0e6f3de1d3f) (load bias 0x1000)
    e7fe3000-e7febfff r-x      8000      9000  /system/lib/android.hardware.graphics.mapper@2.1.so (BuildId: 69fcac82326a1b884cf0e6f3de1d3f) (load bias 0x1000)
    e7fec000-e7fedfff r--     10000      2000  /system/lib/android.hardware.graphics.mapper@2.1.so (BuildId: 69fcac82326a1b884cf0e6f3de1d3f) (load bias 0x1000)
    e7fee000-e7feefff rw-     11000      1000  /system/lib/android.hardware.graphics.mapper@2.1.so (BuildId: 69fcac82326a1b884cf0e6f3de1d3f) (load bias 0x1000)
    e8039000-e803afff r--         0      2000  /system/lib/libstagefright_omx_utils.so (BuildId: 3d2973faa7d13ecc1a0c9abe7fdc39) (load bias 0x1000)
    e803b000-e803cfff r-x      1000      2000  /system/lib/libstagefright_omx_utils.so (BuildId: 3d2973faa7d13ecc1a0c9abe7fdc39) (load bias 0x1000)
    e803d000-e803dfff r--      2000      1000  /system/lib/libstagefright_omx_utils.so (BuildId: 3d2973faa7d13ecc1a0c9abe7fdc39) (load bias 0x1000)
    e803e000-e803efff rw-      2000      1000  /system/lib/libstagefright_omx_utils.so (BuildId: 3d2973faa7d13ecc1a0c9abe7fdc39) (load bias 0x1000)
    e8044000-e804efff r--         0      b000  /system/lib/libsfplugin_ccodec_utils.so (BuildId: bbb1468334932ead24090352381319) (load bias 0x1000)
    e804f000-e8074fff r-x      a000     26000  /system/lib/libsfplugin_ccodec_utils.so (BuildId: bbb1468334932ead24090352381319) (load bias 0x1000)
    e8075000-e8075fff r--     2f000      1000  /system/lib/libsfplugin_ccodec_utils.so (BuildId: bbb1468334932ead24090352381319) (load bias 0x1000)
    e8076000-e8076fff rw-     2f000      1000  /system/lib/libsfplugin_ccodec_utils.so (BuildId: bbb1468334932ead24090352381319) (load bias 0x1000)
    e8077000-e8077fff rw-         0      1000  [anon:.bss]
    e8096000-e809dfff r--         0      8000  /system/lib/android.hardware.graphics.allocator@2.0.so (BuildId: b382da87bbce7ffd49b0471de574ca) (load bias 0x1000)
    e809e000-e80a4fff r-x      7000      7000  /system/lib/android.hardware.graphics.allocator@2.0.so (BuildId: b382da87bbce7ffd49b0471de574ca) (load bias 0x1000)
    e80a5000-e80a6fff r--      d000      2000  /system/lib/android.hardware.graphics.allocator@2.0.so (BuildId: b382da87bbce7ffd49b0471de574ca) (load bias 0x1000)
    e80a7000-e80a7fff rw-      e000      1000  /system/lib/android.hardware.graphics.allocator@2.0.so (BuildId: b382da87bbce7ffd49b0471de574ca) (load bias 0x1000)
    e80e7000-e80e7fff r--         0      1000  /system/lib/libmedia_omx_client.so (BuildId: a8f83f536a88f051f890ca9a718040) (load bias 0x1000)
    e80e8000-e80e9fff r-x         0      2000  /system/lib/libmedia_omx_client.so (BuildId: a8f83f536a88f051f890ca9a718040) (load bias 0x1000)
    e80ea000-e80eafff r--      1000      1000  /system/lib/libmedia_omx_client.so (BuildId: a8f83f536a88f051f890ca9a718040) (load bias 0x1000)
    e810b000-e8115fff r--         0      b000  /system/lib/libmedia_omx.so (BuildId: eb57a3e7d443b9a5c07ac460da1a5c) (load bias 0x1000)
    e8116000-e8121fff r-x      a000      c000  /system/lib/libmedia_omx.so (BuildId: eb57a3e7d443b9a5c07ac460da1a5c) (load bias 0x1000)
    e8122000-e8125fff r--     15000      4000  /system/lib/libmedia_omx.so (BuildId: eb57a3e7d443b9a5c07ac460da1a5c) (load bias 0x1000)
    e8126000-e8126fff rw-     18000      1000  /system/lib/libmedia_omx.so (BuildId: eb57a3e7d443b9a5c07ac460da1a5c) (load bias 0x1000)
    e8169000-e816ffff r--         0      7000  /system/lib/android.hidl.memory.token@1.0.so (BuildId: 9fd8915bc834807753a2d1175fe3e9) (load bias 0x1000)
    e8170000-e8176fff r-x      6000      7000  /system/lib/android.hidl.memory.token@1.0.so (BuildId: 9fd8915bc834807753a2d1175fe3e9) (load bias 0x1000)
    e8177000-e8177fff r--      c000      1000  /system/lib/android.hidl.memory.token@1.0.so (BuildId: 9fd8915bc834807753a2d1175fe3e9) (load bias 0x1000)
    e8178000-e8178fff rw-      c000      1000  /system/lib/android.hidl.memory.token@1.0.so (BuildId: 9fd8915bc834807753a2d1175fe3e9) (load bias 0x1000)
    e81a2000-e81a4fff r--         0      3000  /system/lib/capture_state_listener-aidl-V1-cpp.so (BuildId: a7fbfea67d0fc707c5643246b0710e) (load bias 0x1000)
    e81a5000-e81a5fff r-x      2000      1000  /system/lib/capture_state_listener-aidl-V1-cpp.so (BuildId: a7fbfea67d0fc707c5643246b0710e) (load bias 0x1000)
    e81a6000-e81a7fff r--      2000      2000  /system/lib/capture_state_listener-aidl-V1-cpp.so (BuildId: a7fbfea67d0fc707c5643246b0710e) (load bias 0x1000)
    e81a8000-e81a8fff rw-      3000      1000  /system/lib/capture_state_listener-aidl-V1-cpp.so (BuildId: a7fbfea67d0fc707c5643246b0710e) (load bias 0x1000)
    e81d0000-e81d7fff r--         0      8000  /system/lib/android.hardware.cas.native@1.0.so (BuildId: 957fd9be5072ae4e907167b0dc522a) (load bias 0x1000)
    e81d8000-e81dffff r-x      7000      8000  /system/lib/android.hardware.cas.native@1.0.so (BuildId: 957fd9be5072ae4e907167b0dc522a) (load bias 0x1000)
    e81e0000-e81e1fff r--      e000      2000  /system/lib/android.hardware.cas.native@1.0.so (BuildId: 957fd9be5072ae4e907167b0dc522a) (load bias 0x1000)
    e81e2000-e81e2fff rw-      f000      1000  /system/lib/android.hardware.cas.native@1.0.so (BuildId: 957fd9be5072ae4e907167b0dc522a) (load bias 0x1000)
    e8203000-e8210fff r--         0      e000  /system/lib/libRScpp.so (BuildId: c08e7321d7dab64711690fea9d9c8a) (load bias 0x1000)
    e8211000-e8235fff r-x      d000     25000  /system/lib/libRScpp.so (BuildId: c08e7321d7dab64711690fea9d9c8a) (load bias 0x1000)
    e8236000-e8236fff r--     31000      1000  /system/lib/libRScpp.so (BuildId: c08e7321d7dab64711690fea9d9c8a) (load bias 0x1000)
    e8237000-e8237fff rw-     31000      1000  /system/lib/libRScpp.so (BuildId: c08e7321d7dab64711690fea9d9c8a) (load bias 0x1000)
    e824c000-e825afff r--         0      f000  /system/lib/android.hardware.graphics.bufferqueue@2.0.so (BuildId: 3b53e79eb13ff1d263ad868d503fa2) (load bias 0x1000)
    e825b000-e826ffff r-x      e000     15000  /system/lib/android.hardware.graphics.bufferqueue@2.0.so (BuildId: 3b53e79eb13ff1d263ad868d503fa2) (load bias 0x1000)
    e8270000-e8271fff r--     22000      2000  /system/lib/android.hardware.graphics.bufferqueue@2.0.so (BuildId: 3b53e79eb13ff1d263ad868d503fa2) (load bias 0x1000)
    e8272000-e8272fff rw-     23000      1000  /system/lib/android.hardware.graphics.bufferqueue@2.0.so (BuildId: 3b53e79eb13ff1d263ad868d503fa2) (load bias 0x1000)
    e82a8000-e82abfff r--         0      4000  /system/lib/libsensorprivacy.so (BuildId: 67e617eec4da30c54dbd2bab964423) (load bias 0x1000)
    e82ac000-e82aefff r-x      3000      3000  /system/lib/libsensorprivacy.so (BuildId: 67e617eec4da30c54dbd2bab964423) (load bias 0x1000)
    e82af000-e82b0fff r--      5000      2000  /system/lib/libsensorprivacy.so (BuildId: 67e617eec4da30c54dbd2bab964423) (load bias 0x1000)
    e82b1000-e82b1fff rw-      6000      1000  /system/lib/libsensorprivacy.so (BuildId: 67e617eec4da30c54dbd2bab964423) (load bias 0x1000)
    e82de000-e82e4fff r--         0      7000  /system/lib/libstagefright_bufferqueue_helper.so (BuildId: 0f502f8f8310ede0e8f40321b3ccbd) (load bias 0x1000)
    e82e5000-e82ebfff r-x      6000      7000  /system/lib/libstagefright_bufferqueue_helper.so (BuildId: 0f502f8f8310ede0e8f40321b3ccbd) (load bias 0x1000)
    e82ec000-e82edfff r--      c000      2000  /system/lib/libstagefright_bufferqueue_helper.so (BuildId: 0f502f8f8310ede0e8f40321b3ccbd) (load bias 0x1000)
    e8300000-e83a2fff r--         0     a3000  /system/lib/libcameraservice.so (BuildId: eb914082381abdc2ccc1e3344f38ce) (load bias 0x1000)
    e83a3000-e8458fff r-x     a2000     b6000  /system/lib/libcameraservice.so (BuildId: eb914082381abdc2ccc1e3344f38ce) (load bias 0x1000)
    e8459000-e846afff r--    157000     12000  /system/lib/libcameraservice.so (BuildId: eb914082381abdc2ccc1e3344f38ce) (load bias 0x1000)
    e846b000-e846bfff rw-    168000      1000  /system/lib/libcameraservice.so (BuildId: eb914082381abdc2ccc1e3344f38ce) (load bias 0x1000)
    e84b8000-e84b8fff r--         0      1000  /system/lib/libhardware.so (BuildId: 23b7054f87a01d05e403d78b19a808) (load bias 0x1000)
    e84b9000-e84b9fff r-x         0      1000  /system/lib/libhardware.so (BuildId: 23b7054f87a01d05e403d78b19a808) (load bias 0x1000)
    e84ba000-e84bafff r--         0      1000  /system/lib/libhardware.so (BuildId: 23b7054f87a01d05e403d78b19a808) (load bias 0x1000)
    e84c2000-e84d6fff r--         0     15000  /system/lib/android.hardware.camera.device@1.0.so (BuildId: e64d8d2da6c5ad025ec04b12dd1aff) (load bias 0x1000)
    e84d7000-e84fafff r-x     14000     24000  /system/lib/android.hardware.camera.device@1.0.so (BuildId: e64d8d2da6c5ad025ec04b12dd1aff) (load bias 0x1000)
    e84fb000-e84fdfff r--     37000      3000  /system/lib/android.hardware.camera.device@1.0.so (BuildId: e64d8d2da6c5ad025ec04b12dd1aff) (load bias 0x1000)
    e84fe000-e84fefff rw-     39000      1000  /system/lib/android.hardware.camera.device@1.0.so (BuildId: e64d8d2da6c5ad025ec04b12dd1aff) (load bias 0x1000)
    e8526000-e852efff r--         0      9000  /system/system_ext/lib/vendor.qti.hardware.camera.device@1.0.so (BuildId: 02850db2faa219cbe59c6777e275df) (load bias 0x1000)
    e852f000-e8536fff r-x      8000      8000  /system/system_ext/lib/vendor.qti.hardware.camera.device@1.0.so (BuildId: 02850db2faa219cbe59c6777e275df) (load bias 0x1000)
    e8537000-e8538fff r--      f000      2000  /system/system_ext/lib/vendor.qti.hardware.camera.device@1.0.so (BuildId: 02850db2faa219cbe59c6777e275df) (load bias 0x1000)
    e8539000-e8539fff rw-     10000      1000  /system/system_ext/lib/vendor.qti.hardware.camera.device@1.0.so (BuildId: 02850db2faa219cbe59c6777e275df) (load bias 0x1000)
    e8548000-e8548fff r--         0      1000  /system/lib/android.hidl.token@1.0-utils.so (BuildId: f65d0f5e774cf6f59b6c276a976e25) (load bias 0x1000)
    e8549000-e854afff r-x         0      2000  /system/lib/android.hidl.token@1.0-utils.so (BuildId: f65d0f5e774cf6f59b6c276a976e25) (load bias 0x1000)
    e854b000-e854bfff r--      1000      1000  /system/lib/android.hidl.token@1.0-utils.so (BuildId: f65d0f5e774cf6f59b6c276a976e25) (load bias 0x1000)
    e854c000-e854cfff rw-      1000      1000  /system/lib/android.hidl.token@1.0-utils.so (BuildId: f65d0f5e774cf6f59b6c276a976e25) (load bias 0x1000)
    e858c000-e85a0fff r--         0     15000  /system/lib/android.hardware.camera.device@3.6.so (BuildId: 2bd013d2bc80ebb3263911ee33d04c) (load bias 0x1000)
    e85a1000-e85b5fff r-x     14000     15000  /system/lib/android.hardware.camera.device@3.6.so (BuildId: 2bd013d2bc80ebb3263911ee33d04c) (load bias 0x1000)
    e85b6000-e85b9fff r--     28000      4000  /system/lib/android.hardware.camera.device@3.6.so (BuildId: 2bd013d2bc80ebb3263911ee33d04c) (load bias 0x1000)
    e85ba000-e85bafff rw-     2b000      1000  /system/lib/android.hardware.camera.device@3.6.so (BuildId: 2bd013d2bc80ebb3263911ee33d04c) (load bias 0x1000)
    e85c5000-e85d1fff r--         0      d000  /system/lib/libEGL.so (BuildId: 1618966766a631560dafcce203b25b) (load bias 0x1000)
    e85d2000-e85e2fff r-x      c000     11000  /system/lib/libEGL.so (BuildId: 1618966766a631560dafcce203b25b) (load bias 0x1000)
    e85e3000-e85e5fff r--     1c000      3000  /system/lib/libEGL.so (BuildId: 1618966766a631560dafcce203b25b) (load bias 0x1000)
    e85e6000-e85e6fff rw-     1e000      1000  /system/lib/libEGL.so (BuildId: 1618966766a631560dafcce203b25b) (load bias 0x1000)
    e85e7000-e85eafff rw-         0      4000  [anon:.bss]
    e8618000-e861ffff r--         0      8000  /system/lib/libbufferhubqueue.so (BuildId: 658329d7b142b51b2d4009fb7d185a) (load bias 0x1000)
    e8620000-e862bfff r-x      7000      c000  /system/lib/libbufferhubqueue.so (BuildId: 658329d7b142b51b2d4009fb7d185a) (load bias 0x1000)
    e862c000-e862cfff r--     12000      1000  /system/lib/libbufferhubqueue.so (BuildId: 658329d7b142b51b2d4009fb7d185a) (load bias 0x1000)
    e862d000-e862dfff rw-     12000      1000  /system/lib/libbufferhubqueue.so (BuildId: 658329d7b142b51b2d4009fb7d185a) (load bias 0x1000)
    e8644000-e866ffff r--         0     2c000  /system/lib/libcodec2_vndk.so (BuildId: 8038df0966178b3c112b2c29a8b90a) (load bias 0x1000)
    e8670000-e86abfff r-x     2b000     3c000  /system/lib/libcodec2_vndk.so (BuildId: 8038df0966178b3c112b2c29a8b90a) (load bias 0x1000)
    e86ac000-e86adfff r--     66000      2000  /system/lib/libcodec2_vndk.so (BuildId: 8038df0966178b3c112b2c29a8b90a) (load bias 0x1000)
    e86ae000-e86aefff rw-     67000      1000  /system/lib/libcodec2_vndk.so (BuildId: 8038df0966178b3c112b2c29a8b90a) (load bias 0x1000)
    e86ed000-e86edfff r--         0      1000  /system/lib/android.hardware.graphics.common@1.0.so (BuildId: ed4d41e9e997f570c1d4e91ad8cb32) (load bias 0x1000)
    e86ee000-e86eefff r-x         0      1000  /system/lib/android.hardware.graphics.common@1.0.so (BuildId: ed4d41e9e997f570c1d4e91ad8cb32) (load bias 0x1000)
    e86ef000-e86effff r--         0      1000  /system/lib/android.hardware.graphics.common@1.0.so (BuildId: ed4d41e9e997f570c1d4e91ad8cb32) (load bias 0x1000)
    e8714000-e871afff r--         0      7000  /system/lib/android.hidl.allocator@1.0.so (BuildId: c14ea752e0ef2671e2def308721aea) (load bias 0x1000)
    e871b000-e8722fff r-x      6000      8000  /system/lib/android.hidl.allocator@1.0.so (BuildId: c14ea752e0ef2671e2def308721aea) (load bias 0x1000)
    e8723000-e8723fff r--      d000      1000  /system/lib/android.hidl.allocator@1.0.so (BuildId: c14ea752e0ef2671e2def308721aea) (load bias 0x1000)
    e8724000-e8724fff rw-      d000      1000  /system/lib/android.hidl.allocator@1.0.so (BuildId: c14ea752e0ef2671e2def308721aea) (load bias 0x1000)
    e8744000-e8744fff r--         0      1000  /system/lib/libcodec2.so (BuildId: 6a7a75100a009b2a3e82ebfae6c45b) (load bias 0x1000)
    e8745000-e8745fff r-x         0      1000  /system/lib/libcodec2.so (BuildId: 6a7a75100a009b2a3e82ebfae6c45b) (load bias 0x1000)
    e8746000-e8746fff r--         0      1000  /system/lib/libcodec2.so (BuildId: 6a7a75100a009b2a3e82ebfae6c45b) (load bias 0x1000)
    e8784000-e8784fff r--         0      1000  /system/lib/libsync.so (BuildId: ca124b596a13cabea87014faa9dc57) (load bias 0x1000)
    e8785000-e8785fff r-x         0      1000  /system/lib/libsync.so (BuildId: ca124b596a13cabea87014faa9dc57) (load bias 0x1000)
    e8786000-e8786fff r--         0      1000  /system/lib/libsync.so (BuildId: ca124b596a13cabea87014faa9dc57) (load bias 0x1000)
    e8787000-e8787fff rw-         0      1000  /system/lib/libsync.so (BuildId: ca124b596a13cabea87014faa9dc57) (load bias 0x1000)
    e87c4000-e87cefff r--         0      b000  /system/lib/libyuv.so (BuildId: 730f376192284ac68bf752f82f6e66) (load bias 0x1000)
    e87cf000-e87f7fff r-x      a000     29000  /system/lib/libyuv.so (BuildId: 730f376192284ac68bf752f82f6e66) (load bias 0x1000)
    e87f8000-e87f9fff r--     32000      2000  /system/lib/libyuv.so (BuildId: 730f376192284ac68bf752f82f6e66) (load bias 0x1000)
    e87fa000-e87fafff rw-     33000      1000  /system/lib/libyuv.so (BuildId: 730f376192284ac68bf752f82f6e66) (load bias 0x1000)
    e882e000-e882efff r--         0      1000  /apex/com.android.runtime/lib/bionic/libdl_android.so (BuildId: 3ee98ca7c0608e7485ed2c38198132) (load bias 0x1000)
    e882f000-e882ffff r-x         0      1000  /apex/com.android.runtime/lib/bionic/libdl_android.so (BuildId: 3ee98ca7c0608e7485ed2c38198132) (load bias 0x1000)
    e8830000-e8830fff r--         0      1000  /apex/com.android.runtime/lib/bionic/libdl_android.so (BuildId: 3ee98ca7c0608e7485ed2c38198132) (load bias 0x1000)
    e8870000-e8874fff r--         0      5000  /system/lib/libcutils.so (BuildId: d003730663af9c54005c071e73824d) (load bias 0x1000)
    e8875000-e887bfff r-x      4000      7000  /system/lib/libcutils.so (BuildId: d003730663af9c54005c071e73824d) (load bias 0x1000)
    e887c000-e887dfff r--      a000      2000  /system/lib/libcutils.so (BuildId: d003730663af9c54005c071e73824d) (load bias 0x1000)
    e887e000-e887efff rw-      b000      1000  /system/lib/libcutils.so (BuildId: d003730663af9c54005c071e73824d) (load bias 0x1000)
    e88a3000-e88a5fff r--         0      3000  /system/lib/libnativewindow.so (BuildId: 113a6ba124469ae49a4926f0bce678) (load bias 0x1000)
    e88a6000-e88a7fff r-x      2000      2000  /system/lib/libnativewindow.so (BuildId: 113a6ba124469ae49a4926f0bce678) (load bias 0x1000)
    e88a8000-e88a8fff r--      3000      1000  /system/lib/libnativewindow.so (BuildId: 113a6ba124469ae49a4926f0bce678) (load bias 0x1000)
    e88e4000-e88e6fff r--         0      3000  /system/lib/libexpat.so (BuildId: 99e6ac651af29b0ea42c146f6811e1) (load bias 0x1000)
    e88e7000-e88f9fff r-x      2000     13000  /system/lib/libexpat.so (BuildId: 99e6ac651af29b0ea42c146f6811e1) (load bias 0x1000)
    e88fa000-e88fcfff r--     14000      3000  /system/lib/libexpat.so (BuildId: 99e6ac651af29b0ea42c146f6811e1) (load bias 0x1000)
    e8921000-e8929fff r--         0      9000  /system/lib/libaudioutils.so (BuildId: d75276490439cc20f2ee8f769e6f33) (load bias 0x1000)
    e892a000-e8938fff r-x      8000      f000  /system/lib/libaudioutils.so (BuildId: d75276490439cc20f2ee8f769e6f33) (load bias 0x1000)
    e8939000-e893afff r--     16000      2000  /system/lib/libaudioutils.so (BuildId: d75276490439cc20f2ee8f769e6f33) (load bias 0x1000)
    e8940000-e894dfff r--         0      e000  /system/lib/android.hardware.camera.provider@2.6.so (BuildId: 10213e7cfb9885028568838bf7f964) (load bias 0x1000)
    e894e000-e895bfff r-x      d000      e000  /system/lib/android.hardware.camera.provider@2.6.so (BuildId: 10213e7cfb9885028568838bf7f964) (load bias 0x1000)
    e895c000-e895dfff r--     1a000      2000  /system/lib/android.hardware.camera.provider@2.6.so (BuildId: 10213e7cfb9885028568838bf7f964) (load bias 0x1000)
    e895e000-e895efff rw-     1b000      1000  /system/lib/android.hardware.camera.provider@2.6.so (BuildId: 10213e7cfb9885028568838bf7f964) (load bias 0x1000)
    e898b000-e899ffff r--         0     15000  /system/lib/libdynamic_depth.so (BuildId: e586bbd65719b52c770282e150dae8) (load bias 0x1000)
    e89a0000-e89bbfff r-x     14000     1c000  /system/lib/libdynamic_depth.so (BuildId: e586bbd65719b52c770282e150dae8) (load bias 0x1000)
    e89bc000-e89bdfff r--     2f000      2000  /system/lib/libdynamic_depth.so (BuildId: e586bbd65719b52c770282e150dae8) (load bias 0x1000)
    e89f9000-e89f9fff r--         0      1000  /system/lib/android.hardware.common-V1-ndk_platform.so (BuildId: f66fc6a1f3b7f02b67e72966b0f992) (load bias 0x1000)
    e89fa000-e89fafff r-x         0      1000  /system/lib/android.hardware.common-V1-ndk_platform.so (BuildId: f66fc6a1f3b7f02b67e72966b0f992) (load bias 0x1000)
    e89fb000-e89fcfff r--         0      2000  /system/lib/android.hardware.common-V1-ndk_platform.so (BuildId: f66fc6a1f3b7f02b67e72966b0f992) (load bias 0x1000)
    e89fd000-e89fdfff rw-      1000      1000  /system/lib/android.hardware.common-V1-ndk_platform.so (BuildId: f66fc6a1f3b7f02b67e72966b0f992) (load bias 0x1000)
    e8a15000-e8a16fff r--         0      2000  /system/lib/libstagefright_codecbase.so (BuildId: f0ce3693a6c124448b4bad89ee8725) (load bias 0x1000)
    e8a17000-e8a19fff r-x      1000      3000  /system/lib/libstagefright_codecbase.so (BuildId: f0ce3693a6c124448b4bad89ee8725) (load bias 0x1000)
    e8a1a000-e8a1afff r--      3000      1000  /system/lib/libstagefright_codecbase.so (BuildId: f0ce3693a6c124448b4bad89ee8725) (load bias 0x1000)
    e8a41000-e8a41fff r--         0      1000  /system/lib/libspeexresampler.so (BuildId: a18ba6ee093e3f1a62cad0cdb12067) (load bias 0x1000)
    e8a42000-e8a44fff r-x         0      3000  /system/lib/libspeexresampler.so (BuildId: a18ba6ee093e3f1a62cad0cdb12067) (load bias 0x1000)
    e8a45000-e8a45fff r--      2000      1000  /system/lib/libspeexresampler.so (BuildId: a18ba6ee093e3f1a62cad0cdb12067) (load bias 0x1000)
    e8aaf000-e8aaffff r--         0      1000  /system/lib/libvndksupport.so (BuildId: 853c8906e1fb64a866849f3e02a352) (load bias 0x1000)
    e8ab0000-e8ab0fff r-x         0      1000  /system/lib/libvndksupport.so (BuildId: 853c8906e1fb64a866849f3e02a352) (load bias 0x1000)
    e8ab1000-e8ab1fff r--         0      1000  /system/lib/libvndksupport.so (BuildId: 853c8906e1fb64a866849f3e02a352) (load bias 0x1000)
    e8ab2000-e8ab2fff rw-         0      1000  /system/lib/libvndksupport.so (BuildId: 853c8906e1fb64a866849f3e02a352) (load bias 0x1000)
    e8ac4000-e8ac4fff r--         0      1000  /system/lib/android.hardware.graphics.common@1.2.so (BuildId: 8239a04a00216c639cc5b8011a6233) (load bias 0x1000)
    e8ac5000-e8ac5fff r-x         0      1000  /system/lib/android.hardware.graphics.common@1.2.so (BuildId: 8239a04a00216c639cc5b8011a6233) (load bias 0x1000)
    e8ac6000-e8ac6fff r--         0      1000  /system/lib/android.hardware.graphics.common@1.2.so (BuildId: 8239a04a00216c639cc5b8011a6233) (load bias 0x1000)
    e8b06000-e8b10fff r--         0      b000  /system/lib/android.hardware.graphics.mapper@4.0.so (BuildId: 7079e2a8967d0f42452e5644e96c3d) (load bias 0x1000)
    e8b11000-e8b1efff r-x      a000      e000  /system/lib/android.hardware.graphics.mapper@4.0.so (BuildId: 7079e2a8967d0f42452e5644e96c3d) (load bias 0x1000)
    e8b1f000-e8b20fff r--     17000      2000  /system/lib/android.hardware.graphics.mapper@4.0.so (BuildId: 7079e2a8967d0f42452e5644e96c3d) (load bias 0x1000)
    e8b21000-e8b21fff rw-     18000      1000  /system/lib/android.hardware.graphics.mapper@4.0.so (BuildId: 7079e2a8967d0f42452e5644e96c3d) (load bias 0x1000)
    e8b4b000-e8b4cfff r--         0      2000  /system/lib/android.hardware.graphics.common-V1-ndk_platform.so (BuildId: 943501ceb821b27adc142b359a5193) (load bias 0x1000)
    e8b4d000-e8b4efff r-x      1000      2000  /system/lib/android.hardware.graphics.common-V1-ndk_platform.so (BuildId: 943501ceb821b27adc142b359a5193) (load bias 0x1000)
    e8b4f000-e8b4ffff r--      2000      1000  /system/lib/android.hardware.graphics.common-V1-ndk_platform.so (BuildId: 943501ceb821b27adc142b359a5193) (load bias 0x1000)
    e8b50000-e8b50fff rw-      2000      1000  /system/lib/android.hardware.graphics.common-V1-ndk_platform.so (BuildId: 943501ceb821b27adc142b359a5193) (load bias 0x1000)
    e8b93000-e8b97fff r--         0      5000  /system/lib/libbinder_ndk.so (BuildId: 70a2715bbbe87229b9600992e57445) (load bias 0x1000)
    e8b98000-e8b9dfff r-x      4000      6000  /system/lib/libbinder_ndk.so (BuildId: 70a2715bbbe87229b9600992e57445) (load bias 0x1000)
    e8b9e000-e8b9ffff r--      9000      2000  /system/lib/libbinder_ndk.so (BuildId: 70a2715bbbe87229b9600992e57445) (load bias 0x1000)
    e8ba0000-e8ba0fff rw-      a000      1000  /system/lib/libbinder_ndk.so (BuildId: 70a2715bbbe87229b9600992e57445) (load bias 0x1000)
    e8bdc000-e8be4fff r--         0      9000  /apex/com.android.runtime/lib/bionic/libm.so (BuildId: 99dcc9f84f405783cbbb96ba6396e3) (load bias 0x1000)
    e8be5000-e8bf9fff r-x      8000     15000  /apex/com.android.runtime/lib/bionic/libm.so (BuildId: 99dcc9f84f405783cbbb96ba6396e3) (load bias 0x1000)
    e8bfa000-e8bfafff r--     1c000      1000  /apex/com.android.runtime/lib/bionic/libm.so (BuildId: 99dcc9f84f405783cbbb96ba6396e3) (load bias 0x1000)
    e8bfb000-e8bfbfff rw-     1c000      1000  /apex/com.android.runtime/lib/bionic/libm.so (BuildId: 99dcc9f84f405783cbbb96ba6396e3) (load bias 0x1000)
    e8c0c000-e8c1bfff r--         0     10000  /system/lib/libexif.so (BuildId: e9aa65aef83a76e5b80ade91856903) (load bias 0x1000)
    e8c1c000-e8c27fff r-x      f000      c000  /system/lib/libexif.so (BuildId: e9aa65aef83a76e5b80ade91856903) (load bias 0x1000)
    e8c28000-e8c34fff r--     1a000      d000  /system/lib/libexif.so (BuildId: e9aa65aef83a76e5b80ade91856903) (load bias 0x1000)
    e8c4f000-e8c51fff r--         0      3000  /system/lib/libhidlmemory.so (BuildId: 162c5f7744fef40dddd64978d1f0a3) (load bias 0x1000)
    e8c52000-e8c52fff r-x      2000      1000  /system/lib/libhidlmemory.so (BuildId: 162c5f7744fef40dddd64978d1f0a3) (load bias 0x1000)
    e8c53000-e8c54fff r--      2000      2000  /system/lib/libhidlmemory.so (BuildId: 162c5f7744fef40dddd64978d1f0a3) (load bias 0x1000)
    e8c55000-e8c55fff rw-      3000      1000  /system/lib/libhidlmemory.so (BuildId: 162c5f7744fef40dddd64978d1f0a3) (load bias 0x1000)
    e8cb9000-e8cb9fff r--         0      1000  /system/lib/android.hidl.safe_union@1.0.so (BuildId: 5e727b4ef5d9fab5e2c13b8897061a) (load bias 0x1000)
    e8cba000-e8cbafff r-x         0      1000  /system/lib/android.hidl.safe_union@1.0.so (BuildId: 5e727b4ef5d9fab5e2c13b8897061a) (load bias 0x1000)
    e8cbb000-e8cbbfff r--         0      1000  /system/lib/android.hidl.safe_union@1.0.so (BuildId: 5e727b4ef5d9fab5e2c13b8897061a) (load bias 0x1000)
    e8cc2000-e8ccefff r--         0      d000  /system/lib/libSurfaceFlingerProp.so (BuildId: fc63db0f69059fb6fd2374f21156b0) (load bias 0x1000)
    e8ccf000-e8cd6fff r-x      c000      8000  /system/lib/libSurfaceFlingerProp.so (BuildId: fc63db0f69059fb6fd2374f21156b0) (load bias 0x1000)
    e8cd7000-e8cd7fff r--     13000      1000  /system/lib/libSurfaceFlingerProp.so (BuildId: fc63db0f69059fb6fd2374f21156b0) (load bias 0x1000)
    e8cd8000-e8cd8fff rw-     13000      1000  /system/lib/libSurfaceFlingerProp.so (BuildId: fc63db0f69059fb6fd2374f21156b0) (load bias 0x1000)
    e8d0b000-e8d3bfff r--         0     31000  /system/lib/libhidlbase.so (BuildId: 9f0a04e76cd96132856f2de8daea6c) (load bias 0x1000)
    e8d3c000-e8d87fff r-x     30000     4c000  /system/lib/libhidlbase.so (BuildId: 9f0a04e76cd96132856f2de8daea6c) (load bias 0x1000)
    e8d88000-e8d8dfff r--     7b000      6000  /system/lib/libhidlbase.so (BuildId: 9f0a04e76cd96132856f2de8daea6c) (load bias 0x1000)
    e8d8e000-e8d8efff rw-     80000      1000  /system/lib/libhidlbase.so (BuildId: 9f0a04e76cd96132856f2de8daea6c) (load bias 0x1000)
    e8d8f000-e8d8ffff rw-         0      1000  [anon:.bss]
    e8dc1000-e8e43fff r--         0     83000  /apex/com.android.art/lib/libicuuc.so (BuildId: ca3cb941a7cfaf18f7f308f0d0fdc2) (load bias 0x1000)
    e8e44000-e8eedfff r-x     82000     aa000  /apex/com.android.art/lib/libicuuc.so (BuildId: ca3cb941a7cfaf18f7f308f0d0fdc2) (load bias 0x1000)
    e8eee000-e8ef9fff r--    12b000      c000  /apex/com.android.art/lib/libicuuc.so (BuildId: ca3cb941a7cfaf18f7f308f0d0fdc2) (load bias 0x1000)
    e8efa000-e8efafff rw-    136000      1000  /apex/com.android.art/lib/libicuuc.so (BuildId: ca3cb941a7cfaf18f7f308f0d0fdc2) (load bias 0x1000)
    e8efb000-e8efbfff rw-         0      1000  [anon:.bss]
    e8f18000-e8f1afff r--         0      3000  /system/lib/liblog.so (BuildId: ea3b7544f61ab43cd60aa36b33e2b9) (load bias 0x1000)
    e8f1b000-e8f23fff r-x      2000      9000  /system/lib/liblog.so (BuildId: ea3b7544f61ab43cd60aa36b33e2b9) (load bias 0x1000)
    e8f24000-e8f25fff r--      a000      2000  /system/lib/liblog.so (BuildId: ea3b7544f61ab43cd60aa36b33e2b9) (load bias 0x1000)
    e8f26000-e8f26fff rw-      b000      1000  /system/lib/liblog.so (BuildId: ea3b7544f61ab43cd60aa36b33e2b9) (load bias 0x1000)
    e8f41000-e8f68fff r--         0     28000  /system/lib/libmedia.so (BuildId: eed524ea6e082028505dcfa0b1421d) (load bias 0x1000)
    e8f69000-e8f8dfff r-x     27000     25000  /system/lib/libmedia.so (BuildId: eed524ea6e082028505dcfa0b1421d) (load bias 0x1000)
    e8f8e000-e8f97fff r--     4b000      a000  /system/lib/libmedia.so (BuildId: eed524ea6e082028505dcfa0b1421d) (load bias 0x1000)
    e8f98000-e8f98fff rw-     54000      1000  /system/lib/libmedia.so (BuildId: eed524ea6e082028505dcfa0b1421d) (load bias 0x1000)
    e8fc4000-e8fc8fff r--         0      5000  /system/lib/libmemunreachable.so (BuildId: 8d4aa81216cdf24c77cdd06948c017) (load bias 0x1000)
    e8fc9000-e8fe1fff r-x      4000     19000  /system/lib/libmemunreachable.so (BuildId: 8d4aa81216cdf24c77cdd06948c017) (load bias 0x1000)
    e8fe2000-e8fe3fff r--     1c000      2000  /system/lib/libmemunreachable.so (BuildId: 8d4aa81216cdf24c77cdd06948c017) (load bias 0x1000)
    e8fe4000-e8fe4fff rw-     1d000      1000  /system/lib/libmemunreachable.so (BuildId: 8d4aa81216cdf24c77cdd06948c017) (load bias 0x1000)
    e9005000-e9037fff r--         0     33000  /system/lib/libbinder.so (BuildId: 143a2f61bb86fec9ad94912bba365f) (load bias 0x1000)
    e9038000-e9068fff r-x     32000     31000  /system/lib/libbinder.so (BuildId: 143a2f61bb86fec9ad94912bba365f) (load bias 0x1000)
    e9069000-e9072fff r--     62000      a000  /system/lib/libbinder.so (BuildId: 143a2f61bb86fec9ad94912bba365f) (load bias 0x1000)
    e9073000-e9074fff rw-     6b000      2000  /system/lib/libbinder.so (BuildId: 143a2f61bb86fec9ad94912bba365f) (load bias 0x1000)
    e9084000-e9084fff r--         0      1000  /system/lib/android.hardware.configstore-utils.so (BuildId: 8adededc1ce08f6a246e4f337705e9) (load bias 0x1000)
    e9085000-e9085fff r-x         0      1000  /system/lib/android.hardware.configstore-utils.so (BuildId: 8adededc1ce08f6a246e4f337705e9) (load bias 0x1000)
    e9086000-e9086fff r--         0      1000  /system/lib/android.hardware.configstore-utils.so (BuildId: 8adededc1ce08f6a246e4f337705e9) (load bias 0x1000)
    e90d6000-e90e5fff r--         0     10000  /system/lib/android.frameworks.cameraservice.device@2.0.so (BuildId: 131c7781de5415b97c904eeb6f04cd) (load bias 0x1000)
    e90e6000-e90fbfff r-x      f000     16000  /system/lib/android.frameworks.cameraservice.device@2.0.so (BuildId: 131c7781de5415b97c904eeb6f04cd) (load bias 0x1000)
    e90fc000-e90fdfff r--     24000      2000  /system/lib/android.frameworks.cameraservice.device@2.0.so (BuildId: 131c7781de5415b97c904eeb6f04cd) (load bias 0x1000)
    e90fe000-e90fefff rw-     25000      1000  /system/lib/android.frameworks.cameraservice.device@2.0.so (BuildId: 131c7781de5415b97c904eeb6f04cd) (load bias 0x1000)
    e9133000-e9133fff r--         0      1000  /system/lib/libion.so (BuildId: 6b359cccea1b2486bee4d20b178fb2) (load bias 0x1000)
    e9134000-e9135fff r-x         0      2000  /system/lib/libion.so (BuildId: 6b359cccea1b2486bee4d20b178fb2) (load bias 0x1000)
    e9136000-e9136fff r--      1000      1000  /system/lib/libion.so (BuildId: 6b359cccea1b2486bee4d20b178fb2) (load bias 0x1000)
    e9137000-e9137fff rw-      1000      1000  /system/lib/libion.so (BuildId: 6b359cccea1b2486bee4d20b178fb2) (load bias 0x1000)
    e9141000-e9151fff r--         0     11000  /system/lib/android.hardware.cas@1.0.so (BuildId: 4785d7f48e05d4467a03d93b4ac1cf) (load bias 0x1000)
    e9152000-e916bfff r-x     10000     1a000  /system/lib/android.hardware.cas@1.0.so (BuildId: 4785d7f48e05d4467a03d93b4ac1cf) (load bias 0x1000)
    e916c000-e916ffff r--     29000      4000  /system/lib/android.hardware.cas@1.0.so (BuildId: 4785d7f48e05d4467a03d93b4ac1cf) (load bias 0x1000)
    e9170000-e9170fff rw-     2c000      1000  /system/lib/android.hardware.cas@1.0.so (BuildId: 4785d7f48e05d4467a03d93b4ac1cf) (load bias 0x1000)
    e9196000-e919bfff r--         0      6000  /system/lib/libbacktrace.so (BuildId: 7753b7a899c4aab01bfc41c907f308) (load bias 0x1000)
    e919c000-e91aefff r-x      5000     13000  /system/lib/libbacktrace.so (BuildId: 7753b7a899c4aab01bfc41c907f308) (load bias 0x1000)
    e91af000-e91b0fff r--     17000      2000  /system/lib/libbacktrace.so (BuildId: 7753b7a899c4aab01bfc41c907f308) (load bias 0x1000)
    e91b1000-e91b1fff rw-     18000      1000  /system/lib/libbacktrace.so (BuildId: 7753b7a899c4aab01bfc41c907f308) (load bias 0x1000)
    e91d3000-e91dcfff r--         0      a000  /system/lib/android.hidl.memory@1.0.so (BuildId: 38b11267187dd41df199d3f8425ad0) (load bias 0x1000)
    e91dd000-e91e9fff r-x      9000      d000  /system/lib/android.hidl.memory@1.0.so (BuildId: 38b11267187dd41df199d3f8425ad0) (load bias 0x1000)
    e91ea000-e91ebfff r--     15000      2000  /system/lib/android.hidl.memory@1.0.so (BuildId: 38b11267187dd41df199d3f8425ad0) (load bias 0x1000)
    e91ec000-e91ecfff rw-     16000      1000  /system/lib/android.hidl.memory@1.0.so (BuildId: 38b11267187dd41df199d3f8425ad0) (load bias 0x1000)
    e922d000-e922dfff r--         0      1000  /system/lib/android.frameworks.cameraservice.common@2.0.so (BuildId: 95bf283673d5c5344d301f27453d39) (load bias 0x1000)
    e922e000-e922efff r-x         0      1000  /system/lib/android.frameworks.cameraservice.common@2.0.so (BuildId: 95bf283673d5c5344d301f27453d39) (load bias 0x1000)
    e922f000-e922ffff r--         0      1000  /system/lib/android.frameworks.cameraservice.common@2.0.so (BuildId: 95bf283673d5c5344d301f27453d39) (load bias 0x1000)
    e9266000-e926ffff r--         0      a000  /system/lib/libutils.so (BuildId: 2fb179aed2791695f9ce7e382aa6e55e) (load bias 0x1000)
    e9270000-e9279fff r-x      9000      a000  /system/lib/libutils.so (BuildId: 2fb179aed2791695f9ce7e382aa6e55e) (load bias 0x1000)
    e927a000-e927bfff r--     12000      2000  /system/lib/libutils.so (BuildId: 2fb179aed2791695f9ce7e382aa6e5) (load bias 0x1000)
    e927c000-e927cfff rw-     13000      1000  /system/lib/libutils.so (BuildId: 2fb179aed2791695f9ce7e382aa6e5) (load bias 0x1000)
    e928d000-e929efff r--         0     12000  /system/lib/libinput.so (BuildId: f1dcf30b8f21d99ff0c91856adc48b) (load bias 0x1000)
    e929f000-e92b2fff r-x     11000     14000  /system/lib/libinput.so (BuildId: f1dcf30b8f21d99ff0c91856adc48b) (load bias 0x1000)
    e92b3000-e92b5fff r--     24000      3000  /system/lib/libinput.so (BuildId: f1dcf30b8f21d99ff0c91856adc48b) (load bias 0x1000)
    e92b6000-e92b6fff rw-     26000      1000  /system/lib/libinput.so (BuildId: f1dcf30b8f21d99ff0c91856adc48b) (load bias 0x1000)
    e92f2000-e92f2fff r--         0      1000  /apex/com.android.runtime/lib/bionic/libdl.so (BuildId: 9cabc583e8a93f938bb577e00f965f) (load bias 0x1000)
    e92f3000-e92f3fff r-x         0      1000  /apex/com.android.runtime/lib/bionic/libdl.so (BuildId: 9cabc583e8a93f938bb577e00f965f) (load bias 0x1000)
    e92f4000-e92f4fff r--         0      1000  /apex/com.android.runtime/lib/bionic/libdl.so (BuildId: 9cabc583e8a93f938bb577e00f965f) (load bias 0x1000)
    e92f5000-e92f5fff ---         0      1000
    e92f6000-e92f6fff rw-         0      1000  [anon:.bss]
    e9327000-e932dfff r--         0      7000  /system/lib/libcodec2_hidl_client@1.0.so (BuildId: 825c133fbab140e2a889ea5bfd855f) (load bias 0x1000)
    e932e000-e9339fff r-x      6000      c000  /system/lib/libcodec2_hidl_client@1.0.so (BuildId: 825c133fbab140e2a889ea5bfd855f) (load bias 0x1000)
    e933a000-e933bfff r--     11000      2000  /system/lib/libcodec2_hidl_client@1.0.so (BuildId: 825c133fbab140e2a889ea5bfd855f) (load bias 0x1000)
    e9351000-e935afff r--         0      a000  /system/lib/android.hardware.configstore@1.1.so (BuildId: faefc6cc819e54deaa8fc64202706b) (load bias 0x1000)
    e935b000-e9363fff r-x      9000      9000  /system/lib/android.hardware.configstore@1.1.so (BuildId: faefc6cc819e54deaa8fc64202706b) (load bias 0x1000)
    e9364000-e9365fff r--     11000      2000  /system/lib/android.hardware.configstore@1.1.so (BuildId: faefc6cc819e54deaa8fc64202706b) (load bias 0x1000)
    e9366000-e9366fff rw-     12000      1000  /system/lib/android.hardware.configstore@1.1.so (BuildId: faefc6cc819e54deaa8fc64202706b) (load bias 0x1000)
    e9398000-e939efff r--         0      7000  /system/lib/android.hidl.token@1.0.so (BuildId: 7ed3fa8524e2daa3088a588fe6a06f) (load bias 0x1000)
    e939f000-e93a7fff r-x      6000      9000  /system/lib/android.hidl.token@1.0.so (BuildId: 7ed3fa8524e2daa3088a588fe6a06f) (load bias 0x1000)
    e93a8000-e93a8fff r--      e000      1000  /system/lib/android.hidl.token@1.0.so (BuildId: 7ed3fa8524e2daa3088a588fe6a06f) (load bias 0x1000)
    e93a9000-e93a9fff rw-      e000      1000  /system/lib/android.hidl.token@1.0.so (BuildId: 7ed3fa8524e2daa3088a588fe6a06f) (load bias 0x1000)
    e93ca000-e9414fff r--         0     4b000  /system/lib/libgui.so (BuildId: b79c4081861ce3ff6f696e68377ce1) (load bias 0x1000)
    e9415000-e9466fff r-x     4a000     52000  /system/lib/libgui.so (BuildId: b79c4081861ce3ff6f696e68377ce1) (load bias 0x1000)
    e9467000-e9474fff r--     9b000      e000  /system/lib/libgui.so (BuildId: b79c4081861ce3ff6f696e68377ce1) (load bias 0x1000)
    e9475000-e9475fff rw-     a8000      1000  /system/lib/libgui.so (BuildId: b79c4081861ce3ff6f696e68377ce1) (load bias 0x1000)
    e94b3000-e94b3fff r--         0      1000  /system/lib/libpackagelistparser.so (BuildId: 079155d74c6e5c5311f5dcd20b1442) (load bias 0x1000)
    e94b4000-e94b4fff r-x         0      1000  /system/lib/libpackagelistparser.so (BuildId: 079155d74c6e5c5311f5dcd20b1442) (load bias 0x1000)
    e94b5000-e94b5fff r--         0      1000  /system/lib/libpackagelistparser.so (BuildId: 079155d74c6e5c5311f5dcd20b1442) (load bias 0x1000)
    e94c1000-e94d0fff r--         0     10000  /system/lib/libprocessgroup.so (BuildId: 7877285fbf21813c65b80693c5449c) (load bias 0x1000)
    e94d1000-e94ecfff r-x      f000     1c000  /system/lib/libprocessgroup.so (BuildId: 7877285fbf21813c65b80693c5449c) (load bias 0x1000)
    e94ed000-e94edfff r--     2a000      1000  /system/lib/libprocessgroup.so (BuildId: 7877285fbf21813c65b80693c5449c) (load bias 0x1000)
    e94ee000-e94eefff rw-     2a000      1000  /system/lib/libprocessgroup.so (BuildId: 7877285fbf21813c65b80693c5449c) (load bias 0x1000)
    e950e000-e9516fff r--         0      9000  /system/lib/libmedia_helper.so (BuildId: 02579ce701841ab6dc5f3acd1fc700) (load bias 0x1000)
    e9517000-e951dfff r-x      8000      7000  /system/lib/libmedia_helper.so (BuildId: 02579ce701841ab6dc5f3acd1fc700) (load bias 0x1000)
    e951e000-e951ffff r--      e000      2000  /system/lib/libmedia_helper.so (BuildId: 02579ce701841ab6dc5f3acd1fc700) (load bias 0x1000)
    e956d000-e956efff r--         0      2000  /system/lib/libaudiopolicy.so (BuildId: df407d011e84d9f18c6076fbd1fabe) (load bias 0x1000)
    e956f000-e9570fff r-x      1000      2000  /system/lib/libaudiopolicy.so (BuildId: df407d011e84d9f18c6076fbd1fabe) (load bias 0x1000)
    e9571000-e9571fff r--      2000      1000  /system/lib/libaudiopolicy.so (BuildId: df407d011e84d9f18c6076fbd1fabe) (load bias 0x1000)
    e9596000-e9599fff r--         0      4000  /system/lib/libvibrator.so (BuildId: f10529830162888dce341d9d298043) (load bias 0x1000)
    e959a000-e959cfff r-x      3000      3000  /system/lib/libvibrator.so (BuildId: f10529830162888dce341d9d298043) (load bias 0x1000)
    e959d000-e959efff r--      5000      2000  /system/lib/libvibrator.so (BuildId: f10529830162888dce341d9d298043) (load bias 0x1000)
    e959f000-e959ffff rw-      6000      1000  /system/lib/libvibrator.so (BuildId: f10529830162888dce341d9d298043) (load bias 0x1000)
    e95ce000-e95dbfff r--         0      e000  /system/lib/libnblog.so (BuildId: 400d4be1d6aaecd9b3138791c42e65) (load bias 0x1000)
    e95dc000-e95effff r-x      d000     14000  /system/lib/libnblog.so (BuildId: 400d4be1d6aaecd9b3138791c42e65) (load bias 0x1000)
    e95f0000-e95f0fff r--     20000      1000  /system/lib/libnblog.so (BuildId: 400d4be1d6aaecd9b3138791c42e65) (load bias 0x1000)
    e95f1000-e95f1fff rw-     20000      1000  /system/lib/libnblog.so (BuildId: 400d4be1d6aaecd9b3138791c42e65) (load bias 0x1000)
    e9622000-e963afff r--         0     19000  /system/lib/android.hardware.drm@1.0.so (BuildId: 4acbfedcbdcd40b0d408ec3f4c1910) (load bias 0x1000)
    e963b000-e9668fff r-x     18000     2e000  /system/lib/android.hardware.drm@1.0.so (BuildId: 4acbfedcbdcd40b0d408ec3f4c1910) (load bias 0x1000)
    e9669000-e966dfff r--     45000      5000  /system/lib/android.hardware.drm@1.0.so (BuildId: 4acbfedcbdcd40b0d408ec3f4c1910) (load bias 0x1000)
    e966e000-e966efff rw-     49000      1000  /system/lib/android.hardware.drm@1.0.so (BuildId: 4acbfedcbdcd40b0d408ec3f4c1910) (load bias 0x1000)
    e9691000-e96a9fff r--         0     19000  /apex/com.android.art/lib/libandroidicu.so (BuildId: 0ddec0f30af041b4c5e963bfdffff0) (load bias 0x1000)
    e96aa000-e96b3fff r-x     18000      a000  /apex/com.android.art/lib/libandroidicu.so (BuildId: 0ddec0f30af041b4c5e963bfdffff0) (load bias 0x1000)
    e96b4000-e96b5fff r--     21000      2000  /apex/com.android.art/lib/libandroidicu.so (BuildId: 0ddec0f30af041b4c5e963bfdffff0) (load bias 0x1000)
    e96b6000-e96b6fff rw-     22000      1000  /apex/com.android.art/lib/libandroidicu.so (BuildId: 0ddec0f30af041b4c5e963bfdffff0) (load bias 0x1000)
    e96c5000-e96f7fff r--         0     33000  /system/lib/libc++.so (BuildId: ce87175e190e84526111aaae6c3e9a) (load bias 0x1000)
    e96f8000-e9737fff r-x     32000     40000  /system/lib/libc++.so (BuildId: ce87175e190e84526111aaae6c3e9a) (load bias 0x1000)
    e9738000-e973bfff r--     71000      4000  /system/lib/libc++.so (BuildId: ce87175e190e84526111aaae6c3e9a) (load bias 0x1000)
    e973c000-e973cfff rw-     74000      1000  /system/lib/libc++.so (BuildId: ce87175e190e84526111aaae6c3e9a) (load bias 0x1000)
    e973d000-e973dfff rw-         0      1000  [anon:.bss]
    e9746000-e9746fff r--         0      1000  /system/lib/libhidlallocatorutils.so (BuildId: f59b0b224b8ac8ea99623596399f99) (load bias 0x1000)
    e9747000-e9747fff r-x         0      1000  /system/lib/libhidlallocatorutils.so (BuildId: f59b0b224b8ac8ea99623596399f99) (load bias 0x1000)
    e9748000-e9748fff r--         0      1000  /system/lib/libhidlallocatorutils.so (BuildId: f59b0b224b8ac8ea99623596399f99) (load bias 0x1000)
    e9785000-e978ffff r--         0      b000  /system/lib/android.frameworks.bufferhub@1.0.so (BuildId: c70d1dd20d70db75cc9077103f1690) (load bias 0x1000)
    e9790000-e979bfff r-x      a000      c000  /system/lib/android.frameworks.bufferhub@1.0.so (BuildId: c70d1dd20d70db75cc9077103f1690) (load bias 0x1000)
    e979c000-e979dfff r--     15000      2000  /system/lib/android.frameworks.bufferhub@1.0.so (BuildId: c70d1dd20d70db75cc9077103f1690) (load bias 0x1000)
    e979e000-e979efff rw-     16000      1000  /system/lib/android.frameworks.bufferhub@1.0.so (BuildId: c70d1dd20d70db75cc9077103f1690) (load bias 0x1000)
    e97d9000-e97e0fff r--         0      8000  /system/lib/android.hardware.graphics.mapper@2.0.so (BuildId: c27188c3554acf49193c219ba63d30) (load bias 0x1000)
    e97e1000-e97e9fff r-x      7000      9000  /system/lib/android.hardware.graphics.mapper@2.0.so (BuildId: c27188c3554acf49193c219ba63d30) (load bias 0x1000)
    e97ea000-e97ebfff r--      f000      2000  /system/lib/android.hardware.graphics.mapper@2.0.so (BuildId: c27188c3554acf49193c219ba63d30) (load bias 0x1000)
    e97ec000-e97ecfff rw-     10000      1000  /system/lib/android.hardware.graphics.mapper@2.0.so (BuildId: c27188c3554acf49193c219ba63d30) (load bias 0x1000)
    e9809000-e9813fff r--         0      b000  /system/lib/libstagefright_framecapture_utils.so (BuildId: 5be6ac51b161271484e3b62ca8e570) (load bias 0x1000)
    e9814000-e9826fff r-x      a000     13000  /system/lib/libstagefright_framecapture_utils.so (BuildId: 5be6ac51b161271484e3b62ca8e570) (load bias 0x1000)
    e9827000-e9827fff r--     1c000      1000  /system/lib/libstagefright_framecapture_utils.so (BuildId: 5be6ac51b161271484e3b62ca8e570) (load bias 0x1000)
    e9828000-e9828fff rw-     1c000      1000  /system/lib/libstagefright_framecapture_utils.so (BuildId: 5be6ac51b161271484e3b62ca8e570) (load bias 0x1000)
    e9840000-e9843fff r--         0      4000  /system/lib/libbufferhub.so (BuildId: b5d2dffaf080d1fbe5da81438fdca6) (load bias 0x1000)
    e9844000-e984afff r-x      3000      7000  /system/lib/libbufferhub.so (BuildId: b5d2dffaf080d1fbe5da81438fdca6) (load bias 0x1000)
    e984b000-e984bfff r--      9000      1000  /system/lib/libbufferhub.so (BuildId: b5d2dffaf080d1fbe5da81438fdca6) (load bias 0x1000)
    e984c000-e984cfff rw-      9000      1000  /system/lib/libbufferhub.so (BuildId: b5d2dffaf080d1fbe5da81438fdca6) (load bias 0x1000)
    e989f000-e989ffff r--         0      1000  /system/lib/android.hardware.graphics.common@1.1.so (BuildId: 953c851c936bc2c69a81a64df6f709) (load bias 0x1000)
    e98a0000-e98a0fff r-x         0      1000  /system/lib/android.hardware.graphics.common@1.1.so (BuildId: 953c851c936bc2c69a81a64df6f709) (load bias 0x1000)
    e98a1000-e98a1fff r--         0      1000  /system/lib/android.hardware.graphics.common@1.1.so (BuildId: 953c851c936bc2c69a81a64df6f709) (load bias 0x1000)
    e98da000-e98dafff r--         0      1000  /system/lib/libnativebridge_lazy.so (BuildId: 98a8fbcfafd750f8a4b95a6a6f79a6) (load bias 0x1000)
    e98db000-e98dcfff r-x         0      2000  /system/lib/libnativebridge_lazy.so (BuildId: 98a8fbcfafd750f8a4b95a6a6f79a6) (load bias 0x1000)
    e98dd000-e98ddfff r--      1000      1000  /system/lib/libnativebridge_lazy.so (BuildId: 98a8fbcfafd750f8a4b95a6a6f79a6) (load bias 0x1000)
    e98de000-e98defff rw-      1000      1000  /system/lib/libnativebridge_lazy.so (BuildId: 98a8fbcfafd750f8a4b95a6a6f79a6) (load bias 0x1000)
    e9916000-e991afff r--         0      5000  /system/lib/libdatasource.so (BuildId: edd944f666fba0bc1eba7c68b1e83c) (load bias 0x1000)
    e991b000-e9920fff r-x      4000      6000  /system/lib/libdatasource.so (BuildId: edd944f666fba0bc1eba7c68b1e83c) (load bias 0x1000)
    e9921000-e9922fff r--      9000      2000  /system/lib/libdatasource.so (BuildId: edd944f666fba0bc1eba7c68b1e83c) (load bias 0x1000)
    e9923000-e9923fff rw-      a000      1000  /system/lib/libdatasource.so (BuildId: edd944f666fba0bc1eba7c68b1e83c) (load bias 0x1000)
    e9955000-e995ffff r--         0      b000  /system/lib/libmediautils.so (BuildId: b98b3b93f0bf1e4dfbf20a2fa65db1) (load bias 0x1000)
    e9960000-e9975fff r-x      a000     16000  /system/lib/libmediautils.so (BuildId: b98b3b93f0bf1e4dfbf20a2fa65db1) (load bias 0x1000)
    e9976000-e9977fff r--     1f000      2000  /system/lib/libmediautils.so (BuildId: b98b3b93f0bf1e4dfbf20a2fa65db1) (load bias 0x1000)
    e9978000-e9978fff rw-     20000      1000  /system/lib/libmediautils.so (BuildId: b98b3b93f0bf1e4dfbf20a2fa65db1) (load bias 0x1000)
    e9979000-e9979fff rw-         0      1000  [anon:.bss]
    e9982000-e9986fff r--         0      5000  /system/lib/libgraphicsenv.so (BuildId: 685930229973cf766b0a9722bd1256) (load bias 0x1000)
    e9987000-e998afff r-x      4000      4000  /system/lib/libgraphicsenv.so (BuildId: 685930229973cf766b0a9722bd1256) (load bias 0x1000)
    e998b000-e998cfff r--      7000      2000  /system/lib/libgraphicsenv.so (BuildId: 685930229973cf766b0a9722bd1256) (load bias 0x1000)
    e998d000-e998dfff rw-      8000      1000  /system/lib/libgraphicsenv.so (BuildId: 685930229973cf766b0a9722bd1256) (load bias 0x1000)
    e99dc000-e9a0bfff r--         0     30000  /system/lib/libxml2.so (BuildId: 101763ecc644f91e711fcae04a57e7) (load bias 0x1000)
    e9a0c000-e9aaefff r-x     2f000     a3000  /system/lib/libxml2.so (BuildId: 101763ecc644f91e711fcae04a57e7) (load bias 0x1000)
    e9aaf000-e9ab0fff r--     d1000      2000  /system/lib/libxml2.so (BuildId: 101763ecc644f91e711fcae04a57e7) (load bias 0x1000)
    e9ab1000-e9ab2fff rw-     d2000      2000  /system/lib/libxml2.so (BuildId: 101763ecc644f91e711fcae04a57e7) (load bias 0x1000)
    e9ad4000-e9adffff r--         0      c000  /system/lib/libGLESv2.so (BuildId: 5f565673bf2c9210cc10b34d71d814) (load bias 0x1000)
    e9ae0000-e9ae4fff r-x      b000      5000  /system/lib/libGLESv2.so (BuildId: 5f565673bf2c9210cc10b34d71d814) (load bias 0x1000)
    e9ae5000-e9ae5fff r--      f000      1000  /system/lib/libGLESv2.so (BuildId: 5f565673bf2c9210cc10b34d71d814) (load bias 0x1000)
    e9b1a000-e9b27fff r--         0      e000  /system/lib/libstagefright_foundation.so (BuildId: c20153f8748e0e8a65d5fb0a0c4920) (load bias 0x1000)
    e9b28000-e9b37fff r-x      d000     10000  /system/lib/libstagefright_foundation.so (BuildId: c20153f8748e0e8a65d5fb0a0c4920) (load bias 0x1000)
    e9b38000-e9b38fff r--     1c000      1000  /system/lib/libstagefright_foundation.so (BuildId: c20153f8748e0e8a65d5fb0a0c4920) (load bias 0x1000)
    e9b39000-e9b39fff rw-     1c000      1000  /system/lib/libstagefright_foundation.so (BuildId: c20153f8748e0e8a65d5fb0a0c4920) (load bias 0x1000)
    e9b42000-e9b5bfff r--         0     1a000  /system/lib/libunwindstack.so (BuildId: daa2bc4f8273530c912374af177f12) (load bias 0x1000)
    e9b5c000-e9b8ffff r-x     19000     34000  /system/lib/libunwindstack.so (BuildId: daa2bc4f8273530c912374af177f12) (load bias 0x1000)
    e9b90000-e9b92fff r--     4c000      3000  /system/lib/libunwindstack.so (BuildId: daa2bc4f8273530c912374af177f12) (load bias 0x1000)
    e9b93000-e9b93fff rw-     4e000      1000  /system/lib/libunwindstack.so (BuildId: daa2bc4f8273530c912374af177f12) (load bias 0x1000)
    e9bcc000-e9bdafff r--         0      f000  /system/lib/android.hardware.camera.device@3.4.so (BuildId: aa9c81c1fa2557b6d951f824ba4d5b) (load bias 0x1000)
    e9bdb000-e9be7fff r-x      e000      d000  /system/lib/android.hardware.camera.device@3.4.so (BuildId: aa9c81c1fa2557b6d951f824ba4d5b) (load bias 0x1000)
    e9be8000-e9beafff r--     1a000      3000  /system/lib/android.hardware.camera.device@3.4.so (BuildId: aa9c81c1fa2557b6d951f824ba4d5b) (load bias 0x1000)
    e9beb000-e9bebfff rw-     1c000      1000  /system/lib/android.hardware.camera.device@3.4.so (BuildId: aa9c81c1fa2557b6d951f824ba4d5b) (load bias 0x1000)
    e9c1d000-e9c22fff r--         0      6000  /system/lib/libgralloctypes.so (BuildId: be30e496f551130cb28d49361d7eb8) (load bias 0x1000)
    e9c23000-e9c29fff r-x      5000      7000  /system/lib/libgralloctypes.so (BuildId: be30e496f551130cb28d49361d7eb8) (load bias 0x1000)
    e9c2a000-e9c2afff r--      b000      1000  /system/lib/libgralloctypes.so (BuildId: be30e496f551130cb28d49361d7eb8) (load bias 0x1000)
    e9c2b000-e9c2bfff rw-      b000      1000  /system/lib/libgralloctypes.so (BuildId: be30e496f551130cb28d49361d7eb8) (load bias 0x1000)
    e9c2c000-e9c2cfff rw-         0      1000  [anon:.bss]
    e9c54000-e9c5dfff r--         0      a000  /system/lib/libbase.so (BuildId: 76191a1fb7b4892ba5b3fdb2384424) (load bias 0x1000)
    e9c5e000-e9c7dfff r-x      9000     20000  /system/lib/libbase.so (BuildId: 76191a1fb7b4892ba5b3fdb2384424) (load bias 0x1000)
    e9c7e000-e9c7efff r--     28000      1000  /system/lib/libbase.so (BuildId: 76191a1fb7b4892ba5b3fdb2384424) (load bias 0x1000)
    e9c7f000-e9c7ffff rw-     28000      1000  /system/lib/libbase.so (BuildId: 76191a1fb7b4892ba5b3fdb2384424) (load bias 0x1000)
    e9c9e000-e9c9efff r--         0      1000  /system/lib/libdexfile_support.so (BuildId: cb14de3de6d7d1532c5b38cff8ddd2) (load bias 0x1000)
    e9c9f000-e9ca0fff r-x         0      2000  /system/lib/libdexfile_support.so (BuildId: cb14de3de6d7d1532c5b38cff8ddd2) (load bias 0x1000)
    e9ca1000-e9ca1fff r--      1000      1000  /system/lib/libdexfile_support.so (BuildId: cb14de3de6d7d1532c5b38cff8ddd2) (load bias 0x1000)
    e9ca2000-e9ca2fff rw-      1000      1000  /system/lib/libdexfile_support.so (BuildId: cb14de3de6d7d1532c5b38cff8ddd2) (load bias 0x1000)
    e9cdd000-e9cddfff r--         0      1000  /system/lib/android.hardware.camera.common@1.0.so (BuildId: d60da9f1350924d3525406616188a8) (load bias 0x1000)
    e9cde000-e9cdefff r-x         0      1000  /system/lib/android.hardware.camera.common@1.0.so (BuildId: d60da9f1350924d3525406616188a8) (load bias 0x1000)
    e9cdf000-e9cdffff r--         0      1000  /system/lib/android.hardware.camera.common@1.0.so (BuildId: d60da9f1350924d3525406616188a8) (load bias 0x1000)
    e9d02000-e9d1bfff r--         0     1a000  /system/lib/libui.so (BuildId: e18426fd8d3ae21ae8b8f5171f90aa) (load bias 0x1000)
    e9d1c000-e9d34fff r-x     19000     19000  /system/lib/libui.so (BuildId: e18426fd8d3ae21ae8b8f5171f90aa) (load bias 0x1000)
    e9d35000-e9d36fff r--     31000      2000  /system/lib/libui.so (BuildId: e18426fd8d3ae21ae8b8f5171f90aa) (load bias 0x1000)
    e9d37000-e9d37fff rw-     32000      1000  /system/lib/libui.so (BuildId: e18426fd8d3ae21ae8b8f5171f90aa) (load bias 0x1000)
    e9d38000-e9d38fff rw-         0      1000  [anon:.bss]
    e9d61000-e9d64fff r--         0      4000  /system/lib/libcamera_metadata.so (BuildId: e32a2a3ea421d7655b0a1b8d184aec) (load bias 0x1000)
    e9d65000-e9d69fff r-x      3000      5000  /system/lib/libcamera_metadata.so (BuildId: e32a2a3ea421d7655b0a1b8d184aec) (load bias 0x1000)
    e9d6a000-e9d6afff r--      7000      1000  /system/lib/libcamera_metadata.so (BuildId: e32a2a3ea421d7655b0a1b8d184aec) (load bias 0x1000)
    e9d6b000-e9d6cfff rw-      7000      2000  /system/lib/libcamera_metadata.so (BuildId: e32a2a3ea421d7655b0a1b8d184aec) (load bias 0x1000)
    e9d8e000-e9da3fff r--         0     16000  /system/lib/libstagefright_omx.so (BuildId: 36a5a6a239caa558020ee148ef4d2f) (load bias 0x1000)
    e9da4000-e9dbafff r-x     15000     17000  /system/lib/libstagefright_omx.so (BuildId: 36a5a6a239caa558020ee148ef4d2f) (load bias 0x1000)
    e9dbb000-e9dbefff r--     2b000      4000  /system/lib/libstagefright_omx.so (BuildId: 36a5a6a239caa558020ee148ef4d2f) (load bias 0x1000)
    e9dbf000-e9dbffff rw-     2e000      1000  /system/lib/libstagefright_omx.so (BuildId: 36a5a6a239caa558020ee148ef4d2f) (load bias 0x1000)
    e9dd3000-e9de2fff r--         0     10000  /system/lib/android.hardware.graphics.bufferqueue@1.0.so (BuildId: 1e3f0db25b7406667ad7b9dbd962f8) (load bias 0x1000)
    e9de3000-e9dfbfff r-x      f000     19000  /system/lib/android.hardware.graphics.bufferqueue@1.0.so (BuildId: 1e3f0db25b7406667ad7b9dbd962f8) (load bias 0x1000)
    e9dfc000-e9dfefff r--     27000      3000  /system/lib/android.hardware.graphics.bufferqueue@1.0.so (BuildId: 1e3f0db25b7406667ad7b9dbd962f8) (load bias 0x1000)
    e9dff000-e9dfffff rw-     29000      1000  /system/lib/android.hardware.graphics.bufferqueue@1.0.so (BuildId: 1e3f0db25b7406667ad7b9dbd962f8) (load bias 0x1000)
    e9e0a000-e9e0dfff r--         0      4000  /system/lib/liblzma.so (BuildId: 2fc08a4cb61eba9b272a46773752d3) (load bias 0x1000)
    e9e0e000-e9e23fff r-x      3000     16000  /system/lib/liblzma.so (BuildId: 2fc08a4cb61eba9b272a46773752d3) (load bias 0x1000)
    e9e24000-e9e25fff r--     18000      2000  /system/lib/liblzma.so (BuildId: 2fc08a4cb61eba9b272a46773752d3) (load bias 0x1000)
    e9e26000-e9e26fff rw-     19000      1000  /system/lib/liblzma.so (BuildId: 2fc08a4cb61eba9b272a46773752d3) (load bias 0x1000)
    e9e27000-e9e2cfff rw-         0      6000  [anon:.bss]
    e9e46000-e9e46fff r--         0      1000  /system/lib/android.hardware.media@1.0.so (BuildId: 945e92f88acaeda3571844c953247d) (load bias 0x1000)
    e9e47000-e9e47fff r-x         0      1000  /system/lib/android.hardware.media@1.0.so (BuildId: 945e92f88acaeda3571844c953247d) (load bias 0x1000)
    e9e48000-e9e48fff r--         0      1000  /system/lib/android.hardware.media@1.0.so (BuildId: 945e92f88acaeda3571844c953247d) (load bias 0x1000)
    e9e91000-e9e91fff r--         0      1000  /system/lib/libcodec2_hidl_client@1.1.so (BuildId: 4a3bdf029c88b44ac9f3c0337851bb) (load bias 0x1000)
    e9e92000-e9e92fff r-x         0      1000  /system/lib/libcodec2_hidl_client@1.1.so (BuildId: 4a3bdf029c88b44ac9f3c0337851bb) (load bias 0x1000)
    e9e93000-e9e93fff r--         0      1000  /system/lib/libcodec2_hidl_client@1.1.so (BuildId: 4a3bdf029c88b44ac9f3c0337851bb) (load bias 0x1000)
    e9ec2000-e9ed1fff r--         0     10000  /system/lib/libstagefright_bufferpool@2.0.1.so (BuildId: c69cd0cc4f07ae8971b6cfd57bfc8d) (load bias 0x1000)
    e9ed2000-e9ee0fff r-x      f000      f000  /system/lib/libstagefright_bufferpool@2.0.1.so (BuildId: c69cd0cc4f07ae8971b6cfd57bfc8d) (load bias 0x1000)
    e9ee1000-e9ee2fff r--     1d000      2000  /system/lib/libstagefright_bufferpool@2.0.1.so (BuildId: c69cd0cc4f07ae8971b6cfd57bfc8d) (load bias 0x1000)
    e9ee3000-e9ee3fff rw-     1e000      1000  /system/lib/libstagefright_bufferpool@2.0.1.so (BuildId: c69cd0cc4f07ae8971b6cfd57bfc8d) (load bias 0x1000)
    e9f20000-e9f21fff r--         0      2000  /system/lib/libutilscallstack.so (BuildId: a62003a92f9f90e7de18d90171d815) (load bias 0x1000)
    e9f22000-e9f23fff r-x      1000      2000  /system/lib/libutilscallstack.so (BuildId: a62003a92f9f90e7de18d90171d815) (load bias 0x1000)
    e9f24000-e9f25fff r--      2000      2000  /system/lib/libutilscallstack.so (BuildId: a62003a92f9f90e7de18d90171d815) (load bias 0x1000)
    e9f41000-e9f41fff r--         0      1000  /system/lib/libfmq.so (BuildId: 474a89fa30a47072840fcb8258cb33) (load bias 0x1000)
    e9f42000-e9f44fff r-x         0      3000  /system/lib/libfmq.so (BuildId: 474a89fa30a47072840fcb8258cb33) (load bias 0x1000)
    e9f45000-e9f45fff r--      2000      1000  /system/lib/libfmq.so (BuildId: 474a89fa30a47072840fcb8258cb33) (load bias 0x1000)
    e9fab000-e9fb2fff r--         0      8000  /system/lib/android.hardware.graphics.allocator@3.0.so (BuildId: c3c6c2e9ad4dbe987427b0cafc1fe7) (load bias 0x1000)
    e9fb3000-e9fb9fff r-x      7000      7000  /system/lib/android.hardware.graphics.allocator@3.0.so (BuildId: c3c6c2e9ad4dbe987427b0cafc1fe7) (load bias 0x1000)
    e9fba000-e9fbbfff r--      d000      2000  /system/lib/android.hardware.graphics.allocator@3.0.so (BuildId: c3c6c2e9ad4dbe987427b0cafc1fe7) (load bias 0x1000)
    e9fbc000-e9fbcfff rw-      e000      1000  /system/lib/android.hardware.graphics.allocator@3.0.so (BuildId: c3c6c2e9ad4dbe987427b0cafc1fe7) (load bias 0x1000)
    e9fd5000-e9fdefff r--         0      a000  /system/lib/android.hardware.configstore@1.0.so (BuildId: d55deb259c36c89011ef407764aade) (load bias 0x1000)
    e9fdf000-e9fecfff r-x      9000      e000  /system/lib/android.hardware.configstore@1.0.so (BuildId: d55deb259c36c89011ef407764aade) (load bias 0x1000)
    e9fed000-e9feefff r--     16000      2000  /system/lib/android.hardware.configstore@1.0.so (BuildId: d55deb259c36c89011ef407764aade) (load bias 0x1000)
    e9fef000-e9feffff rw-     17000      1000  /system/lib/android.hardware.configstore@1.0.so (BuildId: d55deb259c36c89011ef407764aade) (load bias 0x1000)
    ea010000-ea01bfff r--         0      c000  /system/lib/android.hardware.camera.provider@2.4.so (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced) (load bias 0x1000)
    ea01c000-ea02afff r-x      b000      f000  /system/lib/android.hardware.camera.provider@2.4.so (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced) (load bias 0x1000)
    ea02b000-ea02cfff r--     19000      2000  /system/lib/android.hardware.camera.provider@2.4.so (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced) (load bias 0x1000)
    ea02d000-ea02dfff rw-     1a000      1000  /system/lib/android.hardware.camera.provider@2.4.so (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced) (load bias 0x1000)
    ea04e000-ea059fff r--         0      c000  /system/lib/libpdx_default_transport.so (BuildId: f6c882c3023ae937ce1d4551a31acc) (load bias 0x1000)
    ea05a000-ea067fff r-x      b000      e000  /system/lib/libpdx_default_transport.so (BuildId: f6c882c3023ae937ce1d4551a31acc) (load bias 0x1000)
    ea068000-ea069fff r--     18000      2000  /system/lib/libpdx_default_transport.so (BuildId: f6c882c3023ae937ce1d4551a31acc) (load bias 0x1000)
    ea06a000-ea06afff rw-     19000      1000  /system/lib/libpdx_default_transport.so (BuildId: f6c882c3023ae937ce1d4551a31acc) (load bias 0x1000)
    ea0a4000-ea0a4fff r--         0      1000  /system/lib/libnativeloader_lazy.so (BuildId: 0d8d2d4a6000db33b519fc3f8d9f02) (load bias 0x1000)
    ea0a5000-ea0a5fff r-x         0      1000  /system/lib/libnativeloader_lazy.so (BuildId: 0d8d2d4a6000db33b519fc3f8d9f02) (load bias 0x1000)
    ea0a6000-ea0a6fff r--         0      1000  /system/lib/libnativeloader_lazy.so (BuildId: 0d8d2d4a6000db33b519fc3f8d9f02) (load bias 0x1000)
    ea0a7000-ea0a7fff rw-         0      1000  /system/lib/libnativeloader_lazy.so (BuildId: 0d8d2d4a6000db33b519fc3f8d9f02) (load bias 0x1000)
    ea0a8000-ea0a8fff rw-         0      1000  [anon:bionic_alloc_small_objects]
    ea0dc000-ea0e4fff r--         0      9000  /system/lib/android.hardware.camera.provider@2.5.so (BuildId: 301f3f09d0133cb5e29089353694f0) (load bias 0x1000)
    ea0e5000-ea0ecfff r-x      8000      8000  /system/lib/android.hardware.camera.provider@2.5.so (BuildId: 301f3f09d0133cb5e29089353694f0) (load bias 0x1000)
    ea0ed000-ea0eefff r--      f000      2000  /system/lib/android.hardware.camera.provider@2.5.so (BuildId: 301f3f09d0133cb5e29089353694f0) (load bias 0x1000)
    ea0ef000-ea0effff rw-     10000      1000  /system/lib/android.hardware.camera.provider@2.5.so (BuildId: 301f3f09d0133cb5e29089353694f0) (load bias 0x1000)
    ea12c000-ea149fff r--         0     1e000  /system/lib/libpcre2.so (BuildId: c4f8e8f7d0bf7505a0d7e83a60897e) (load bias 0x1000)
    ea14a000-ea16cfff r-x     1d000     23000  /system/lib/libpcre2.so (BuildId: c4f8e8f7d0bf7505a0d7e83a60897e) (load bias 0x1000)
    ea16d000-ea16dfff r--     3f000      1000  /system/lib/libpcre2.so (BuildId: c4f8e8f7d0bf7505a0d7e83a60897e) (load bias 0x1000)
    ea16e000-ea16efff rw-     3f000      1000  /system/lib/libpcre2.so (BuildId: c4f8e8f7d0bf7505a0d7e83a60897e) (load bias 0x1000)
    ea183000-ea1aafff r--         0     28000  /apex/com.android.runtime/lib/bionic/libc.so (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42) (load bias 0x1000)
    ea1ab000-ea20cfff r-x     27000     62000  /apex/com.android.runtime/lib/bionic/libc.so (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42) (load bias 0x1000)
    ea20d000-ea20ffff r--     88000      3000  /apex/com.android.runtime/lib/bionic/libc.so (BuildId: ccd7bcca123d82d3ca1e1ec9736acd) (load bias 0x1000)
    ea210000-ea211fff rw-     8a000      2000  /apex/com.android.runtime/lib/bionic/libc.so (BuildId: ccd7bcca123d82d3ca1e1ec9736acd) (load bias 0x1000)
    ea212000-ea214fff rw-         0      3000  [anon:.bss]
    ea215000-ea215fff r--         0      1000  [anon:.bss]
    ea216000-ea233fff rw-         0     1e000  [anon:.bss]
    ea252000-ea257fff r--         0      6000  /system/lib/libjpeg.so (BuildId: 06b57278abcac5b0bcbd4667c1afd9) (load bias 0x1000)
    ea258000-ea296fff r-x      5000     3f000  /system/lib/libjpeg.so (BuildId: 06b57278abcac5b0bcbd4667c1afd9) (load bias 0x1000)
    ea297000-ea298fff r--     43000      2000  /system/lib/libjpeg.so (BuildId: 06b57278abcac5b0bcbd4667c1afd9) (load bias 0x1000)
    ea299000-ea299fff rw-     44000      1000  /system/lib/libjpeg.so (BuildId: 06b57278abcac5b0bcbd4667c1afd9) (load bias 0x1000)
    ea2cc000-ea2e9fff r--         0     1e000  /system/lib/libsfplugin_ccodec.so (BuildId: efce5428409db5a45a3428cb53865e) (load bias 0x1000)
    ea2ea000-ea325fff r-x     1d000     3c000  /system/lib/libsfplugin_ccodec.so (BuildId: efce5428409db5a45a3428cb53865e) (load bias 0x1000)
    ea326000-ea328fff r--     58000      3000  /system/lib/libsfplugin_ccodec.so (BuildId: efce5428409db5a45a3428cb53865e) (load bias 0x1000)
    ea329000-ea329fff rw-     5a000      1000  /system/lib/libsfplugin_ccodec.so (BuildId: efce5428409db5a45a3428cb53865e) (load bias 0x1000)
    ea35e000-ea35efff r--         0      1000  /system/lib/libandroid_runtime_lazy.so (BuildId: d11b460aae5ffd48ba8099eab4c0b4) (load bias 0x1000)
    ea35f000-ea35ffff r-x         0      1000  /system/lib/libandroid_runtime_lazy.so (BuildId: d11b460aae5ffd48ba8099eab4c0b4) (load bias 0x1000)
    ea360000-ea360fff r--         0      1000  /system/lib/libandroid_runtime_lazy.so (BuildId: d11b460aae5ffd48ba8099eab4c0b4) (load bias 0x1000)
    ea361000-ea361fff rw-         0      1000  /system/lib/libandroid_runtime_lazy.so (BuildId: d11b460aae5ffd48ba8099eab4c0b4) (load bias 0x1000)
    ea388000-ea3e6fff r--         0     5f000  /system/lib/libstagefright.so (BuildId: 5f24f7bf6d7f146840c6982d502f1b) (load bias 0x1000)
    ea3e7000-ea473fff r-x     5e000     8d000  /system/lib/libstagefright.so (BuildId: 5f24f7bf6d7f146840c6982d502f1b) (load bias 0x1000)
    ea474000-ea47cfff r--     ea000      9000  /system/lib/libstagefright.so (BuildId: 5f24f7bf6d7f146840c6982d502f1b) (load bias 0x1000)
    ea47d000-ea47dfff rw-     f2000      1000  /system/lib/libstagefright.so (BuildId: 5f24f7bf6d7f146840c6982d502f1b) (load bias 0x1000)
    ea481000-ea481fff rw-         0      1000  [anon:bionic_alloc_lob]
    ea498000-ea49dfff r--         0      6000  /system/lib/libaudiofoundation.so (BuildId: 83763e62e69e8104e90edd2d83deb5) (load bias 0x1000)
    ea49e000-ea4a4fff r-x      5000      7000  /system/lib/libaudiofoundation.so (BuildId: 83763e62e69e8104e90edd2d83deb5) (load bias 0x1000)
    ea4a5000-ea4a6fff r--      b000      2000  /system/lib/libaudiofoundation.so (BuildId: 83763e62e69e8104e90edd2d83deb5) (load bias 0x1000)
    ea4a7000-ea4a7fff rw-      c000      1000  /system/lib/libaudiofoundation.so (BuildId: 83763e62e69e8104e90edd2d83deb5) (load bias 0x1000)
    ea4a9000-ea4e8fff rw-         0     40000
    ea4e9000-ea4edfff r--         0      5000  /system/lib/libmediametrics.so (BuildId: c7d1590407da55e9e010d5f28bffd7) (load bias 0x1000)
    ea4ee000-ea4f4fff r-x      4000      7000  /system/lib/libmediametrics.so (BuildId: c7d1590407da55e9e010d5f28bffd7) (load bias 0x1000)
    ea4f5000-ea4f6fff r--      a000      2000  /system/lib/libmediametrics.so (BuildId: c7d1590407da55e9e010d5f28bffd7) (load bias 0x1000)
    ea4f7000-ea4f7fff rw-      b000      1000  /system/lib/libmediametrics.so (BuildId: c7d1590407da55e9e010d5f28bffd7) (load bias 0x1000)
    ea50e000-ea519fff r--         0      c000  /system/lib/android.frameworks.cameraservice.service@2.0.so (BuildId: 038bd0cdd7a3f228b6ce095f064849) (load bias 0x1000)
    ea51a000-ea527fff r-x      b000      e000  /system/lib/android.frameworks.cameraservice.service@2.0.so (BuildId: 038bd0cdd7a3f228b6ce095f064849) (load bias 0x1000)
    ea528000-ea52afff r--     18000      3000  /system/lib/android.frameworks.cameraservice.service@2.0.so (BuildId: 038bd0cdd7a3f228b6ce095f064849) (load bias 0x1000)
    ea52b000-ea52bfff rw-     1a000      1000  /system/lib/android.frameworks.cameraservice.service@2.0.so (BuildId: 038bd0cdd7a3f228b6ce095f064849) (load bias 0x1000)
    ea545000-ea545fff rw-         0      1000  [anon:bionic_alloc_small_objects]
    ea56a000-ea572fff r--         0      9000  /system/lib/android.hardware.graphics.mapper@3.0.so (BuildId: 8e8f7ddff12d3740bf47a08587e119) (load bias 0x1000)
    ea573000-ea57cfff r-x      8000      a000  /system/lib/android.hardware.graphics.mapper@3.0.so (BuildId: 8e8f7ddff12d3740bf47a08587e119) (load bias 0x1000)
    ea57d000-ea57efff r--     11000      2000  /system/lib/android.hardware.graphics.mapper@3.0.so (BuildId: 8e8f7ddff12d3740bf47a08587e119) (load bias 0x1000)
    ea57f000-ea57ffff rw-     12000      1000  /system/lib/android.hardware.graphics.mapper@3.0.so (BuildId: 8e8f7ddff12d3740bf47a08587e119) (load bias 0x1000)
    ea585000-ea592fff r--         0      e000  /system/lib/android.frameworks.cameraservice.service@2.1.so (BuildId: 191ccb1db9e3889df71752323d14ad) (load bias 0x1000)
    ea593000-ea59ffff r-x      d000      d000  /system/lib/android.frameworks.cameraservice.service@2.1.so (BuildId: 191ccb1db9e3889df71752323d14ad) (load bias 0x1000)
    ea5a0000-ea5a1fff r--     19000      2000  /system/lib/android.frameworks.cameraservice.service@2.1.so (BuildId: 191ccb1db9e3889df71752323d14ad) (load bias 0x1000)
    ea5a2000-ea5a2fff rw-     1a000      1000  /system/lib/android.frameworks.cameraservice.service@2.1.so (BuildId: 191ccb1db9e3889df71752323d14ad) (load bias 0x1000)
    ea5b5000-ea5d4fff r--         0     20000  /dev/__properties__/u:object_r:system_prop:s0
    ea5d5000-ea5ddfff r--         0      9000  /system/lib/android.hardware.camera.device@3.3.so (BuildId: 9a853dcd08326c98855db9a219cadb) (load bias 0x1000)
    ea5de000-ea5e5fff r-x      8000      8000  /system/lib/android.hardware.camera.device@3.3.so (BuildId: 9a853dcd08326c98855db9a219cadb) (load bias 0x1000)
    ea5e6000-ea5e7fff r--      f000      2000  /system/lib/android.hardware.camera.device@3.3.so (BuildId: 9a853dcd08326c98855db9a219cadb) (load bias 0x1000)
    ea5e8000-ea5e8fff rw-     10000      1000  /system/lib/android.hardware.camera.device@3.3.so (BuildId: 9a853dcd08326c98855db9a219cadb) (load bias 0x1000)
    ea607000-ea622fff r--         0     1c000  /system/lib/android.hardware.media.omx@1.0.so (BuildId: f0a5d2f02bc5f5cf80c55969850170) (load bias 0x1000)
    ea623000-ea653fff r-x     1b000     31000  /system/lib/android.hardware.media.omx@1.0.so (BuildId: f0a5d2f02bc5f5cf80c55969850170) (load bias 0x1000)
    ea654000-ea657fff r--     4b000      4000  /system/lib/android.hardware.media.omx@1.0.so (BuildId: f0a5d2f02bc5f5cf80c55969850170) (load bias 0x1000)
    ea658000-ea658fff rw-     4e000      1000  /system/lib/android.hardware.media.omx@1.0.so (BuildId: f0a5d2f02bc5f5cf80c55969850170) (load bias 0x1000)
    ea669000-ea688fff r--         0     20000  /dev/__properties__/u:object_r:radio_prop:s0
    ea689000-ea6b4fff r--         0     2c000  /system/lib/libaudioclient.so (BuildId: e40f438a548990a00a3d1536382cfc) (load bias 0x1000)
    ea6b5000-ea6ecfff r-x     2b000     38000  /system/lib/libaudioclient.so (BuildId: e40f438a548990a00a3d1536382cfc) (load bias 0x1000)
    ea6ed000-ea6f5fff r--     62000      9000  /system/lib/libaudioclient.so (BuildId: e40f438a548990a00a3d1536382cfc) (load bias 0x1000)
    ea6f6000-ea6f6fff rw-     6a000      1000  /system/lib/libaudioclient.so (BuildId: e40f438a548990a00a3d1536382cfc) (load bias 0x1000)
    ea70b000-ea71afff r--         0     10000  /system/lib/android.hardware.media.bufferpool@2.0.so (BuildId: 44e0d487f4e7191c9dbdc2eea02765) (load bias 0x1000)
    ea71b000-ea72dfff r-x      f000     13000  /system/lib/android.hardware.media.bufferpool@2.0.so (BuildId: 44e0d487f4e7191c9dbdc2eea02765) (load bias 0x1000)
    ea72e000-ea730fff r--     21000      3000  /system/lib/android.hardware.media.bufferpool@2.0.so (BuildId: 44e0d487f4e7191c9dbdc2eea02765) (load bias 0x1000)
    ea731000-ea731fff rw-     23000      1000  /system/lib/android.hardware.media.bufferpool@2.0.so (BuildId: 44e0d487f4e7191c9dbdc2eea02765) (load bias 0x1000)
    ea740000-ea75ffff r--         0     20000  /dev/__properties__/u:object_r:csc_prop:s0
    ea760000-ea77ffff r--         0     20000  /dev/__properties__/u:object_r:vendor_default_prop:s0
    ea780000-ea79ffff r--         0     20000  /dev/__properties__/u:object_r:camera_prop:s0
    ea7a0000-ea7a0fff ---         0      1000
    ea7a1000-ea7befff rw-         0     1e000  [anon:scudo:secondary]
    ea7bf000-ea7bffff ---         0      1000
    ea7c0000-ea7dffff r--         0     20000  /dev/__properties__/u:object_r:default_prop:s0
    ea7e0000-ea7fffff r--         0     20000  /dev/__properties__/u:object_r:exported_vold_prop:s0
    ea800000-ea9bffff rw-         0    1c0000  [anon:scudo:primary]
    ea9cf000-ea9cffff rw-         0      1000  [anon:bionic_alloc_small_objects]
    ea9e0000-ea9fffff r--         0     20000  /dev/__properties__/u:object_r:sec_camera_prop:s0
    eaa00000-eaa1ffff r--         0     20000  /dev/__properties__/u:object_r:vndk_prop:s0
    eaa20000-eaa3ffff r--         0     20000  /dev/__properties__/u:object_r:exported_default_prop:s0
    eaa40000-eac7ffff rw-         0    240000  [anon:scudo:primary]
    eac92000-eac92fff ---         0      1000
    eac93000-eac96fff rw-         0      4000  [anon:thread signal stack]
    eac97000-eac98fff r--         0      2000  /system/lib/libnetd_client.so (BuildId: 8ef7b076b07697876819f1acf85b34) (load bias 0x1000)
    eac99000-eac9bfff r-x      1000      3000  /system/lib/libnetd_client.so (BuildId: 8ef7b076b07697876819f1acf85b34) (load bias 0x1000)
    eac9c000-eac9cfff r--      3000      1000  /system/lib/libnetd_client.so (BuildId: 8ef7b076b07697876819f1acf85b34) (load bias 0x1000)
    eac9d000-eac9dfff rw-      3000      1000  /system/lib/libnetd_client.so (BuildId: 8ef7b076b07697876819f1acf85b34) (load bias 0x1000)
    eaca0000-eacbffff r--         0     20000  /dev/__properties__/u:object_r:hwservicemanager_prop:s0
    eacc0000-ead7ffff rw-         0     c0000  [anon:scudo:primary]
    ead80000-ead9ffff r--         0     20000  /dev/__properties__/u:object_r:logd_prop:s0
    eada0000-eada0fff rw-         0      1000  [anon:bionic_alloc_small_objects]
    eada4000-eada4fff ---         0      1000
    eada5000-eada8fff rw-         0      4000  [anon:thread signal stack]
    eada9000-eadc8fff r--         0     20000  /dev/__properties__/u:object_r:log_tag_prop:s0
    eadc9000-eade8fff r--         0     20000  /dev/__properties__/u:object_r:exported3_default_prop:s0
    eade9000-eae08fff r--         0     20000  /dev/__properties__/u:object_r:heapprofd_prop:s0
    eae09000-eae28fff r--         0     20000  /dev/__properties__/u:object_r:exported2_default_prop:s0
    eae29000-eae48fff r--         0     20000  /dev/__properties__/u:object_r:debug_prop:s0
    eae49000-eae68fff r--         0     20000  /dev/__properties__/properties_serial
    eae69000-eae78fff r--         0     10000  /dev/__properties__/property_info
    eae79000-eae79fff ---         0      1000
    eae7a000-eae7cfff rw-         0      3000  [anon:stack_and_tls:main]
    eae7d000-eae7dfff ---         0      1000
    eae82000-eae82fff ---         0      1000
    eae83000-eae86fff rw-         0      4000  [anon:thread signal stack]
    eae87000-eae87fff ---         0      1000
    eae88000-eae8bfff rw-         0      4000  [anon:thread signal stack]
    eae8c000-eae8cfff ---         0      1000
    eae8d000-eae90fff rw-         0      4000  [anon:thread signal stack]
    eae91000-eae91fff ---         0      1000
    eae92000-eae95fff rw-         0      4000  [anon:thread signal stack]
    eae96000-eae96fff ---         0      1000
    eae97000-eae9afff rw-         0      4000  [anon:thread signal stack]
    eae9b000-eae9efff r--         0      4000  [anon:atexit handlers]
    eae9f000-eaebefff r--         0     20000  /dev/__properties__/u:object_r:bq_config_prop:s0
    eaec1000-eaec1fff rw-         0      1000  [anon:abort message]
    eaec2000-eaee1fff r--         0     20000  /dev/__properties__/u:object_r:vendor_socket_hook_prop:s0
    eaee2000-eafa9fff r--         0     c8000  [anon:linker_alloc]
    eafaa000-eafc9fff r--         0     20000  /dev/__properties__/u:object_r:vndk_prop:s0
    eafca000-eafd1fff rw-         0      8000  [anon:bionic_alloc_small_objects]
    eafd2000-eb035fff rw-         0     64000  [anon:linker_alloc]
    eb036000-eb038fff rw-         0      3000  [anon:bionic_alloc_small_objects]
    eb039000-eb09cfff r--         0     64000  [anon:linker_alloc]
    eb09d000-eb09dfff rw-         0      1000  [anon:bionic_alloc_small_objects]
    eb09e000-eb0bdfff r--         0     20000  /dev/__properties__/u:object_r:debug_prop:s0
    eb0be000-eb0ddfff r--         0     20000  /dev/__properties__/u:object_r:exported2_default_prop:s0
    eb0de000-eb0defff ---         0      1000
    eb0df000-eb0e6fff rw-         0      8000
    eb0e7000-eb0e7fff ---         0      1000
    eb0e8000-eb107fff r--         0     20000  /dev/__properties__/properties_serial
    eb108000-eb109fff rw-         0      2000  [anon:System property context nodes]
    eb10a000-eb119fff r--         0     10000  /dev/__properties__/property_info
    eb11a000-eb17dfff r--         0     64000  [anon:linker_alloc]
    eb17e000-eb17efff rw-         0      1000  [anon:bionic_alloc_small_objects]
    eb17f000-eb17ffff r--         0      1000  [anon:atexit handlers]
    eb180000-eb180fff ---         0      1000
    eb181000-eb184fff rw-         0      4000  [anon:thread signal stack]
    eb185000-eb185fff rw-         0      1000  [anon:arc4random data]
    eb186000-eb187fff rw-         0      2000  [anon:System property context nodes]
    eb188000-eb188fff rw-         0      1000  [anon:arc4random data]
    eb189000-eb189fff r--         0      1000  [vvar]
    eb18a000-eb18afff r-x         0      1000  [vdso]
    eb18b000-eb1a3fff r--         0     19000  /apex/com.android.runtime/bin/linker (BuildId: f92895446b9ef957be369ff21bf520) (load bias 0x1000)
    eb1a4000-eb22bfff r-x     18000     88000  /apex/com.android.runtime/bin/linker (BuildId: f92895446b9ef957be369ff21bf520) (load bias 0x1000)
    eb22c000-eb22ffff r--     9f000      4000  /apex/com.android.runtime/bin/linker (BuildId: f92895446b9ef957be369ff21bf520) (load bias 0x1000)
    eb230000-eb231fff rw-     a2000      2000  /apex/com.android.runtime/bin/linker (BuildId: f92895446b9ef957be369ff21bf520) (load bias 0x1000)
    eb232000-eb234fff rw-         0      3000  [anon:.bss]
    eb235000-eb235fff r--         0      1000  [anon:.bss]
    eb236000-eb23bfff rw-         0      6000  [anon:.bss]
    ff8a7000-ff8c7fff rw-         0     21000  [stack]
    ffff0000-ffff0fff r-x         0      1000  [kuserhelpers]
--------- tail end of log main
05-02 23:01:10.631 16335 16335 D DejaggingCore: [dejagging] int dejaggingCore::dejagging_core_deinit() is called!
05-02 23:01:10.631 16335 16335 D DejaggingCore: [dejagging] int dejaggingCore::dejagging_core_memfree() is called!
05-02 23:01:10.631 16335 16335 D DejaggingCore: [Dejagging](dejagging_core_memfree[192]): Unregister buffer for HVX, index: 0, data:0xe9f5a000, size: 331776, fd: 39
05-02 23:01:10.632 16335 16335 D DejaggingCore: [dejagging] dejaggingCore::~dejaggingCore() is called!
05-02 23:01:10.632 16335 16335 D DejaggingCore: [dejagging] CORE MEM CHECK LEAK! 0
05-02 23:01:10.632 16335 16335 D DejaggingCore: [dejagging] int dejagging_params::dejagging_parameter_deinit() is called!
05-02 23:01:10.632 16335 16335 D DejaggingCore: [dejagging] dejagging_params::~dejagging_params() is called!
05-02 23:01:10.632 16335 16335 D DejaggingCore: [dejagging]PARAMS MEM LEAK CHECK! 0
05-02 23:01:10.632 16335 16335 D UniPlugin: uni_plugin_unload is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: __uni_plugin_unload is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: temp->name:dejaggingPlugin
05-02 23:01:10.632 16335 16335 D UniPlugin: ~UniPlugin is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: uni_plugin_deinit is called!
05-02 23:01:10.632 16335 16335 D ldc_interface: virtual int ldcPlugin::deinit_plugin() is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: uni_plugin_unload is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: __uni_plugin_unload is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: temp->name:LensDCPlugin
05-02 23:01:10.633 16335 16335 D ldc_interface: virtual ldcPlugin::~ldcPlugin() is called!
05-02 23:01:10.633 16335 16335 D DCDC    : [dcdc]int ldc_mem_free()
05-02 23:01:10.633 16335 16335 D DCDC    : [dcdc]int ldc_mem_free() Free Memory pDeltaX_buf
05-02 23:01:10.633 16335 16335 D DCDC    : [dcdc]int ldc_mem_free() Free Memory pDeltaY_buf
05-02 23:01:10.633 16335 16335 D UniPlugin: ~UniPlugin is called!
05-02 23:01:10.636 16335 16335 E ANDR-PERF: IPerf::tryGetService failed!
05-02 23:01:10.636 16335 16335 E QCameraPerf: lock_acq: failed to acquire lock
05-02 23:01:10.636 16335 16421 D QCameraStateMachine: smEvtProcRoutine: X
05-02 23:01:10.637 16335 16335 D QCamera2HWI: [KPI Perf] closeCamera: E, mCameraId = 0
05-02 23:01:10.637 16335 16335 I QCamera2HWI: waitDeferredWork: Invalid job id 0
05-02 23:01:10.637 16335 16335 I QCamera2HWI: waitDeferredWork: Invalid job id 0
05-02 23:01:10.637 16335 16335 E QCameraPostProc: [REPROC_DBG] STOP E
05-02 23:01:10.638 16335 16335 E QCameraPostProc: [REPROC_DBG] STOP X
05-02 23:01:10.638 16335 16335 D QCamera2HWI: deinitJpegHandle: E
05-02 23:01:10.638 16335 16335 D QCamera2HWI: deinitJpegHandle: X rc = 0
05-02 23:01:10.638 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.640 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.640 16335 16335 D mm-camera-intf: mm_camera_poll_thread_release: Sending MM_CAMERA_PIPE_CMD_EXIT to polling thread
05-02 23:01:10.640 16335 16446 D mm-camera-intf: mm_camera_poll_proc_pipe: Received MM_CAMERA_PIPE_CMD_EXIT
05-02 23:01:10.640 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.641 16335 16446 D mm-camera-intf: mm_camera_poll_fn: Exited polling function
05-02 23:01:10.641 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.642 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: Waiting for polling thread to exit
05-02 23:01:10.642 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: After polling thread exit
05-02 23:01:10.642 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: Waiting for cmd thread to exit
05-02 23:01:10.642 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: After cmd thread exit
05-02 23:01:10.718 16335 16335 D QCamera2HWI: [KPI Perf] closeCamera: X
05-02 23:01:10.718 16335 16335 D QCameraPerf: lock_rel_ss E
05-02 23:01:10.718 16335 16335 E QCameraPerf: lock_rel_ss: mPerfMinLockHandle < 0,check if lock is acquired
05-02 23:01:10.718 16335 16335 D QCameraPerf: lock_rel_ss E
05-02 23:01:10.718 16335 16335 E QCameraPerf: lock_rel_ss: mPerfMaxLockHandle < 0,check if lock is acquired
05-02 23:01:10.719 16335 16335 D QCamera2HWI: ~QCamera2HardwareInterface: X
05-02 23:01:10.719 16335 16335 D QCameraDisplay: [P_JOIN] ~QCameraDisplay: Waiting for display thread to exit
--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
pid: 16335, tid: 16335, name: cameraserver  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  ea7bef28  r1  00000089  r2  00000002  r3  00000000
    r4  00000000  r5  ffffffff  r6  00000000  r7  000000f0
    r8  00000002  r9  ea7bef28  r10 00000000  r11 00000000
    ip  ff8c6648  sp  ff8c6638  lr  ea1bc14f  pc  ea1b7064

backtrace:
      #00 pc 00034064  /apex/com.android.runtime/lib/bionic/libc.so (syscall+28) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 0003914b  /apex/com.android.runtime/lib/bionic/libc.so (__futex_wait_ex(void volatile*, bool, int, bool, timespec const*)+94) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 00080de3  /apex/com.android.runtime/lib/bionic/libc.so (pthread_cond_wait+32) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #03 pc 0001198b  /system/vendor/lib/libmmcamera_interface.so (mm_camera_poll_thread_launch+254) (BuildId: 9f475d035ff525e57c9ce49f2fc642)
      #04 pc 00008015  /system/vendor/lib/libmmcamera_interface.so (mm_camera_open+720) (BuildId: 9f475d035ff525e57c9ce49f2fc642)
      #05 pc 00007007  /system/vendor/lib/libmmcamera_interface.so (camera_open+294) (BuildId: 9f475d035ff525e57c9ce49f2fc642)
      #06 pc 0007a713  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCamera2HardwareInterface::openCamera()+450) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #07 pc 0007ab5d  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCamera2HardwareInterface::openCamera(hw_device_t**)+112) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #08 pc 0004833b  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCamera2Factory::openLegacy(int, unsigned int, hw_device_t**)+210) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #09 pc 0001d01d  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (android::hardware::camera::common::V1_0::helper::CameraModule::openLegacy(char const*, unsigned int, hw_device_t**)+32) (BuildId: b7d0fa38f783397c09612cb018fb62)
      #10 pc 00012bcd  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (android::hardware::camera::provider::V2_4::implementation::LegacyCameraProviderImpl_2_4::addDeviceNames(int, android::hardware::camera::common::V1_0::CameraDeviceStatus, bool)+368) (BuildId: b7d0fa38f783397c09612cb018fb62)
      #11 pc 00013c8f  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (android::hardware::camera::provider::V2_4::implementation::LegacyCameraProviderImpl_2_4::initialize()+622) (BuildId: b7d0fa38f783397c09612cb018fb62)
      #12 pc 00013a03  /system/vendor/lib/android.hardware.camera.provider@2.4-legacy.so (android::hardware::camera::provider::V2_4::implementation::LegacyCameraProviderImpl_2_4::LegacyCameraProviderImpl_2_4()+122) (BuildId: b7d0fa38f783397c09612cb018fb62)
      #13 pc 00002cc3  /system/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so (HIDL_FETCH_ICameraProvider+94) (BuildId: de47815112eb07e146756f53cff030)
      #14 pc 00043e5d  /system/lib/libhidlbase.so (android::hardware::PassthroughServiceManager::get(android::hardware::hidl_string const&, android::hardware::hidl_string const&)::'lambda'(void*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&)::operator()(void*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&) const+64) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #15 pc 0004045f  /system/lib/libhidlbase.so (android::hardware::PassthroughServiceManager::openLibs(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, std::__1::function<bool (void*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&)> const&)+710) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #16 pc 000429b3  /system/lib/libhidlbase.so (android::hardware::PassthroughServiceManager::get(android::hardware::hidl_string const&, android::hardware::hidl_string const&)+54) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #17 pc 0004130b  /system/lib/libhidlbase.so (android::hardware::details::getRawServiceInternal(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, bool, bool)+1298) (BuildId: 9f0a04e76cd96132856f2de8daea6c)
      #18 pc 00010ad5  /system/lib/android.hardware.camera.provider@2.4.so (android::sp<android::hardware::camera::provider::V2_4::ICameraProvider> android::hardware::details::getServiceInternal<android::hardware::camera::provider::V2_4::BpHwCameraProvider, android::hardware::camera::provider::V2_4::ICameraProvider, void, void>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, bool, bool)+156) (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced)
      #19 pc 00010a33  /system/lib/android.hardware.camera.provider@2.4.so (android::hardware::camera::provider::V2_4::ICameraProvider::tryGetService(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&, bool)+6) (BuildId: 7cc7bb4885eb37d6c1bfcf8ead5ced)
      #20 pc 000c6439  /system/lib/libcameraservice.so (android::CameraProviderManager::HardwareServiceInteractionProxy::tryGetService(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&)+6) (BuildId: eb914082381abdc2ccc1e3344f38ce)
      #21 pc 000bbd23  /system/lib/libcameraservice.so (android::CameraProviderManager::addProviderLocked(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&)+190) (BuildId: eb914082381abdc2ccc1e3344f38ce)
      #22 pc 000bbbad  /system/lib/libcameraservice.so (android::CameraProviderManager::initialize(android::wp<android::CameraProviderManager::StatusListener>, android::CameraProviderManager::ServiceInteractionProxy*)+240) (BuildId: eb914082381abdc2ccc1e3344f38ce)
      #23 pc 000a440f  /system/lib/libcameraservice.so (android::CameraService::enumerateProviders()+850) (BuildId: eb914082381abdc2ccc1e3344f38ce)
      #24 pc 000a3e47  /system/lib/libcameraservice.so (android::CameraService::onFirstRef()+118) (BuildId: eb914082381abdc2ccc1e3344f38ce)
      #25 pc 000019bb  /system/bin/cameraserver (android::BinderService<android::CameraService>::publish(bool, int)+110) (BuildId: 3ce6a9b8517f1c13a31bfe4241e6e3)
      #26 pc 000018cb  /system/bin/cameraserver (main+70) (BuildId: 3ce6a9b8517f1c13a31bfe4241e6e3)
      #27 pc 00033177  /apex/com.android.runtime/lib/bionic/libc.so (__libc_init+66) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
pid: 16335, tid: 16336, name: HwBinder:16335_  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  00000003  r1  c0306201  r2  e74fc060  r3  e74fbfb4
    r4  d428212f  r5  ea212124  r6  e74fc060  r7  00000036
    r8  00000000  r9  e7583784  r10 e74fc070  r11 e74fc060
    ip  00000100  sp  e74fbf98  lr  ea1c201f  pc  ea1f48a8

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
pid: 16335, tid: 16337, name: HwBinder:16335_  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  00000003  r1  c0306201  r2  e73fb060  r3  e73fafb4
    r4  d428212f  r5  ea212124  r6  e73fb060  r7  00000036
    r8  00000000  r9  e7580de4  r10 e73fb070  r11 e73fb060
    ip  00000100  sp  e73faf98  lr  ea1c201f  pc  ea1f48a8

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
pid: 16335, tid: 16421, name: CAM_stMachine  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  e424cd40  r1  00000089  r2  00000002  r3  00000000
    r4  00000000  r5  ffffffff  r6  00000000  r7  000000f0
    r8  00000002  r9  e424cd40  r10 00000000  r11 00000000
    ip  e423c128  sp  e423c118  lr  ea1bc14f  pc  ea1b7064

backtrace:
      #00 pc 00034064  /apex/com.android.runtime/lib/bionic/libc.so (syscall+28) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 0003914b  /apex/com.android.runtime/lib/bionic/libc.so (__futex_wait_ex(void volatile*, bool, int, bool, timespec const*)+94) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 00080de3  /apex/com.android.runtime/lib/bionic/libc.so (pthread_cond_wait+32) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #03 pc 00088f8f  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCameraStateMachine::smEvtProcRoutine(void*)+46) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #04 pc 0008175f  /apex/com.android.runtime/lib/bionic/libc.so (__pthread_start(void*)+40) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #05 pc 00039d85  /apex/com.android.runtime/lib/bionic/libc.so (__start_thread+30) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
pid: 16335, tid: 16423, name: CAM_defrdWrk  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  e424dfd0  r1  00000089  r2  00000012  r3  00000000
    r4  00000000  r5  ffffffff  r6  00000000  r7  000000f0
    r8  00000012  r9  e424dfd0  r10 00000000  r11 00000002
    ip  e403a0b0  sp  e403a0a0  lr  ea1bc14f  pc  ea1b7064

backtrace:
      #00 pc 00034064  /apex/com.android.runtime/lib/bionic/libc.so (syscall+28) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 0003914b  /apex/com.android.runtime/lib/bionic/libc.so (__futex_wait_ex(void volatile*, bool, int, bool, timespec const*)+94) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 00080de3  /apex/com.android.runtime/lib/bionic/libc.so (pthread_cond_wait+32) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #03 pc 00068743  /system/vendor/lib/hw/camera.msm8996.so (cam_sem_wait+26) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #04 pc 00079dc3  /system/vendor/lib/hw/camera.msm8996.so (qcamera::QCamera2HardwareInterface::deferredWorkRoutine(void*)+106) (BuildId: a8ad8c7abbd23d6fa46ae262cb240b73)
      #05 pc 0008175f  /apex/com.android.runtime/lib/bionic/libc.so (__pthread_start(void*)+40) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #06 pc 00039d85  /apex/com.android.runtime/lib/bionic/libc.so (__start_thread+30) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
pid: 16335, tid: 16445, name: CAM_Dispatch  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  ea7bef64  r1  00000089  r2  00000002  r3  00000000
    r4  00000000  r5  ffffffff  r6  00005000  r7  000000f0
    r8  00000002  r9  ea7bef64  r10 00000000  r11 00000000
    ip  e3587128  sp  e3587118  lr  ea1bc14f  pc  ea1b7064

backtrace:
      #00 pc 00034064  /apex/com.android.runtime/lib/bionic/libc.so (syscall+28) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 0003914b  /apex/com.android.runtime/lib/bionic/libc.so (__futex_wait_ex(void volatile*, bool, int, bool, timespec const*)+94) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 00080de3  /apex/com.android.runtime/lib/bionic/libc.so (pthread_cond_wait+32) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #03 pc 00011ef1  /system/vendor/lib/libmmcamera_interface.so (mm_camera_cmd_thread+36) (BuildId: 9f475d035ff525e57c9ce49f2fc642)
      #04 pc 0008175f  /apex/com.android.runtime/lib/bionic/libc.so (__pthread_start(void*)+40) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #05 pc 00039d85  /apex/com.android.runtime/lib/bionic/libc.so (__start_thread+30) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
pid: 16335, tid: 16446, name: CAM_evntPoll  >>> /system/bin/cameraserver <<<
uid: 1047
    r0  ea7beee8  r1  00000001  r2  00000000  r3  00000000
    r4  00000000  r5  00000000  r6  00000000  r7  00000150
    r8  00000001  r9  e4eabfb8  r10 e4eaea21  r11 000ff000
    ip  e3486120  sp  e3486110  lr  ea1c3a0b  pc  ea1f5a90

backtrace:
      #00 pc 00072a90  /apex/com.android.runtime/lib/bionic/libc.so (__ppoll+16) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #01 pc 00040a07  /apex/com.android.runtime/lib/bionic/libc.so (poll+54) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #02 pc 00011ca9  /system/vendor/lib/libmmcamera_interface.so (mm_camera_poll_thread+172) (BuildId: 9f475d035ff525e57c9ce49f2fc642)
      #03 pc 0008175f  /apex/com.android.runtime/lib/bionic/libc.so (__pthread_start(void*)+40) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)
      #04 pc 00039d85  /apex/com.android.runtime/lib/bionic/libc.so (__start_thread+30) (BuildId: ccd7bcca123d82d3ca1e1ec9736acd42)

open files:
    fd 0: /dev/null (unowned)
    fd 1: /dev/null (unowned)
    fd 2: /dev/null (unowned)
    fd 3: /dev/hwbinder (unowned)
    fd 4: /dev/binder (unowned)
    fd 5: socket:[6624489] (unowned)
    fd 6: /dev/pmsg0 (unowned)
    fd 7: /sys/kernel/debug/tracing/trace_marker (unowned)
    fd 8: anon_inode:[eventfd] (owned by unique_fd 0xe784149c)
    fd 9: anon_inode:[eventpoll] (owned by unique_fd 0xe78414bc)
    fd 10: socket:[6624735] (owned by unique_fd 0xead142b8)
    fd 11: socket:[6624736] (owned by unique_fd 0xead142b4)
    fd 12: /dev/ion (unowned)
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
    fd 33: /dev/ion (unowned)
    fd 34: anon_inode:dmabuf (unowned)
--------- log main
05-02 23:01:10.084 16335 16335 I cameraserver: ServiceManager: 0xead00850
05-02 23:01:10.084 16335 16335 I CameraService: CameraService started (pid=16335)
05-02 23:01:10.084 16335 16335 I CameraService: CameraService process starting
05-02 23:01:10.169 16335 16335 D mm-camera-intf: dev_info[id=0,name='video2', facing = 0, angle = 90 type = 1]
05-02 23:01:10.169 16335 16335 D mm-camera-intf: dev_info[id=1,name='video3', facing = 1, angle = 270 type = 1]
05-02 23:01:10.169 16335 16335 D mm-camera-intf: dev_info[id=2,name='video4', facing = 1, angle = 270 type = 1]
05-02 23:01:10.170 16335 16335 I mm-camera-intf: Found Back Main Camera: idx: 0
05-02 23:01:10.170 16335 16335 I mm-camera-intf: Found Front Main Camera: idx: 1
05-02 23:01:10.170 16335 16335 I mm-camera-intf: Found Front Main Camera: idx: 2
05-02 23:01:10.170 16335 16335 I mm-camera-intf: sort_camera_info: Camera id: 0 facing: 0, type: 1 is_yuv: 0
05-02 23:01:10.170 16335 16335 I mm-camera-intf: sort_camera_info: Camera id: 1 facing: 1, type: 1 is_yuv: 0
05-02 23:01:10.170 16335 16335 I mm-camera-intf: sort_camera_info: Camera id: 2 facing: 1, type: 1 is_yuv: 0
05-02 23:01:10.170 16335 16335 I mm-camera-intf: Number of cameras 3, Match of cameras 3
05-02 23:01:10.170 16335 16335 E mm-camera-intf: get_num_of_cameras: num_cameras=3
05-02 23:01:10.170 16335 16335 I QCamera2Factory: QCamera2Factory: model ver :  
05-02 23:01:10.170 16335 16335 I QCamera2Factory: QCamera2Factory: Official Binary. Enable HAL3.
05-02 23:01:10.170 16335 16335 I QCamera2Factory: QCamera2Factory[105]: dualCamera:0 
05-02 23:01:10.170 16335 16335 I QCamera2Factory: get_number_of_cameras: num of cameras: 2
05-02 23:01:10.170 16335 16335 I CamPrvdr@2.4-legacy: Loaded "QCamera Module" camera module
05-02 23:01:10.170 16335 16335 I QCamera2Factory: get_number_of_cameras: num of cameras: 2
05-02 23:01:10.170 16335 16335 I QCamera2Factory: getCameraInfo : E camera id (0), mNumOfCameras (3)
05-02 23:01:10.170 16335 16335 D mm-camera-intf: camera_open: E, camera_idx = 0
05-02 23:01:10.170 16335 16335 D mm-camera-intf: , num of camera is 3
05-02 23:01:10.222 16335 16335 D mm-camera-intf: mm_camera_open:  opened, break out while loop
05-02 23:01:10.223 16335 16335 D mm-camera-intf: mm_camera_poll_thread_launch: wait
05-02 23:01:10.224 16335 16335 D mm-camera-intf: mm_camera_poll_thread_launch: done
05-02 23:01:10.224 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.224 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.224 16335 16335 D mm-camera-intf: camera_open: X, Open succeded
05-02 23:01:10.268 16335 16335 I QCamera3HWI: initCapabilities: construct new fps table only for HAL3!
05-02 23:01:10.268 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.268 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.269 16335 16335 D mm-camera-intf: mm_camera_poll_thread_release: Sending MM_CAMERA_PIPE_CMD_EXIT to polling thread
05-02 23:01:10.269 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.269 16335 16356 D mm-camera-intf: mm_camera_poll_proc_pipe: Received MM_CAMERA_PIPE_CMD_EXIT
05-02 23:01:10.269 16335 16356 D mm-camera-intf: mm_camera_poll_fn: Exited polling function
05-02 23:01:10.269 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.269 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: Waiting for polling thread to exit
05-02 23:01:10.269 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: After polling thread exit
05-02 23:01:10.269 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: Waiting for cmd thread to exit
05-02 23:01:10.269 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: After cmd thread exit
05-02 23:01:10.336 16335 16335 I QCamera3HWI: [initStaticMetadata::6206][gLimited_Mode::1][cam_position::0][limitedDevice::0]
05-02 23:01:10.336 16335 16335 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-02 23:01:10.337 16335 16335 I chatty  : uid=1047(cameraserver) /system/bin/cameraserver identical 14 lines
05-02 23:01:10.337 16335 16335 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-02 23:01:10.337 16335 16335 I QCamera3HWI: getCamInfo: camera 0 resource cost is 100
05-02 23:01:10.337 16335 16335 I QCamera2Factory: getExtraCameraInfo : camera id = 0, facing info = BACK
05-02 23:01:10.337 16335 16335 D mm-camera-intf: camera_open: E, camera_idx = 1
05-02 23:01:10.337 16335 16335 D mm-camera-intf: , num of camera is 3
05-02 23:01:10.385 16335 16335 D mm-camera-intf: mm_camera_open:  opened, break out while loop
05-02 23:01:10.385 16335 16335 D mm-camera-intf: mm_camera_poll_thread_launch: wait
05-02 23:01:10.385 16335 16335 D mm-camera-intf: mm_camera_poll_thread_launch: done
05-02 23:01:10.386 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.386 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.386 16335 16335 D mm-camera-intf: camera_open: X, Open succeded
05-02 23:01:10.418 16335 16335 I QCamera3HWI: initCapabilities: construct new fps table only for HAL3!
05-02 23:01:10.418 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.419 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.419 16335 16335 D mm-camera-intf: mm_camera_poll_thread_release: Sending MM_CAMERA_PIPE_CMD_EXIT to polling thread
05-02 23:01:10.419 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.419 16335 16384 D mm-camera-intf: mm_camera_poll_proc_pipe: Received MM_CAMERA_PIPE_CMD_EXIT
05-02 23:01:10.419 16335 16384 D mm-camera-intf: mm_camera_poll_fn: Exited polling function
05-02 23:01:10.419 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.420 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: Waiting for polling thread to exit
05-02 23:01:10.420 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: After polling thread exit
05-02 23:01:10.420 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: Waiting for cmd thread to exit
05-02 23:01:10.421 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: After cmd thread exit
05-02 23:01:10.466 16335 16335 I QCamera3HWI: [initStaticMetadata::6206][gLimited_Mode::1][cam_position::1][limitedDevice::1]
05-02 23:01:10.466 16335 16335 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-02 23:01:10.466 16335 16335 I chatty  : uid=1047(cameraserver) /system/bin/cameraserver identical 10 lines
05-02 23:01:10.466 16335 16335 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-02 23:01:10.467 16335 16335 I QCamera3HWI: getCamInfo: camera 1 resource cost is 100
05-02 23:01:10.467 16335 16335 I QCamera2Factory: getExtraCameraInfo : camera id = 1, facing info = FRONT
05-02 23:01:10.467 16335 16335 D mm-camera-intf: camera_open: E, camera_idx = 2
05-02 23:01:10.467 16335 16335 D mm-camera-intf: , num of camera is 3
05-02 23:01:10.509 16335 16335 D mm-camera-intf: mm_camera_open:  opened, break out while loop
05-02 23:01:10.509 16335 16335 D mm-camera-intf: mm_camera_poll_thread_launch: wait
05-02 23:01:10.510 16335 16335 D mm-camera-intf: mm_camera_poll_thread_launch: done
05-02 23:01:10.510 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.510 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.510 16335 16335 D mm-camera-intf: camera_open: X, Open succeded
05-02 23:01:10.522 16335 16335 I QCamera3HWI: initCapabilities: construct new fps table only for HAL3!
05-02 23:01:10.522 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.522 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.523 16335 16335 D mm-camera-intf: mm_camera_poll_thread_release: Sending MM_CAMERA_PIPE_CMD_EXIT to polling thread
05-02 23:01:10.523 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.523 16335 16411 D mm-camera-intf: mm_camera_poll_proc_pipe: Received MM_CAMERA_PIPE_CMD_EXIT
05-02 23:01:10.523 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.523 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: Waiting for polling thread to exit
05-02 23:01:10.523 16335 16411 D mm-camera-intf: mm_camera_poll_fn: Exited polling function
05-02 23:01:10.523 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: After polling thread exit
05-02 23:01:10.523 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: Waiting for cmd thread to exit
05-02 23:01:10.523 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: After cmd thread exit
05-02 23:01:10.547 16335 16335 I QCamera3HWI: [initStaticMetadata::6206][gLimited_Mode::1][cam_position::1][limitedDevice::1]
05-02 23:01:10.547 16335 16335 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-02 23:01:10.548 16335 16335 I chatty  : uid=1047(cameraserver) /system/bin/cameraserver identical 10 lines
05-02 23:01:10.548 16335 16335 D QCamera3HWI: lookupFwkName: Cannot find matching framework type
05-02 23:01:10.548 16335 16335 I QCamera3HWI: getCamInfo: camera 2 resource cost is 100
05-02 23:01:10.548 16335 16335 I QCamera2Factory: getExtraCameraInfo : camera id = 2, facing info = FRONT
05-02 23:01:10.548 16335 16335 I QCamera3HWI: getCamInfo: camera 0 resource cost is 100
05-02 23:01:10.548 16335 16335 I QCamera2Factory: getCameraInfo : camera id = 0, facing info = BACK
05-02 23:01:10.548 16335 16335 I QCamera2Factory: getCameraInfo : X, camera id (0)
05-02 23:01:10.548 16335 16335 I QCamera2Factory: :openLegacy openLegacy halVersion: 256
05-02 23:01:10.549 16335 16421 D QCameraStateMachine: smEvtProcRoutine: E
05-02 23:01:10.552 16335 16423 I QCamera2HWI: deferredWorkRoutine: CAMERA_CMD_TYPE_START_DATA_PROC
05-02 23:01:10.556 16335 16335 I QCamera2HWI: setParallelMode: set value (0)
05-02 23:01:10.557 16335 16335 I QCamera2HWI: setParallelMode: get value (0)
05-02 23:01:10.558 16335 16335 I QCamera2HWI: [KPI Perf] openCamera: E PROFILE_OPEN_CAMERA camera id 0
05-02 23:01:10.558 16335 16335 D QCameraPerf: lock_acq_ss E
05-02 23:01:10.559 16335 16335 E ANDR-PERF: IPerf::tryGetService failed!
05-02 23:01:10.559 16335 16335 D QCameraPerf: lock_acq_ss min lock ret -1
05-02 23:01:10.559 16335 16335 E QCameraPerf: lock_acq_ss: failed to acquire lock
05-02 23:01:10.559 16335 16335 D QCameraPerf: lock_acq_ss X
05-02 23:01:10.559 16335 16335 D QCamera2HWI: [KPI Perf] openCamera: E, mCameraId = 0
05-02 23:01:10.564 16335 16335 E QCamera2HWI: INFO:MEMBOOST SET 2
05-02 23:01:10.564 16335 16335 I QCamera2HWI: Using pre allocated capabilities for cameraId 0,position 0
05-02 23:01:10.565 16335 16335 D mm-camera-intf: camera_open: E, camera_idx = 0
05-02 23:01:10.565 16335 16335 D mm-camera-intf: , num of camera is 3
05-02 23:01:10.565 16335 16423 I QCamera2HWI: dw->cmd: 5
05-02 23:01:10.565 16335 16423 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_PARAM_ALLOC
05-02 23:01:10.566 16335 16423 D QCameraHWI_Mem: allocOneBuffer : ION buffer 1 with size 782336 allocated
05-02 23:01:10.566 16335 16423 I QCamera2HWI: dw->cmd: 3
05-02 23:01:10.566 16335 16423 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_METADATA_ALLOC
05-02 23:01:10.567 16335 16423 D QCameraHWI_Mem: allocOneBuffer : ION buffer 1 with size 782336 allocated
05-02 23:01:10.568 16335 16423 I chatty  : uid=1047(cameraserver) /system/bin/cameraserver identical 8 lines
05-02 23:01:10.568 16335 16423 D QCameraHWI_Mem: allocOneBuffer : ION buffer 1 with size 782336 allocated
05-02 23:01:10.569 16335 16423 I QCamera2HWI: dw->cmd: 9
05-02 23:01:10.569 16335 16423 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_PARAM_PRE_INIT
05-02 23:01:10.569 16335 16423 D QCameraParameters: initDefaultParameters: supported preview sizes: 1920x1080,1280x720,1440x1080,1088x1088,1056x864,960x720,720x480,640x480,352x288,320x240,176x144
05-02 23:01:10.569 16335 16423 D QCameraParameters: initDefaultParameters: supported video sizes: 1920x1080,1440x1440,1440x1080,1280x720,960x720,800x450,800x480,720x480,640x480,352x288,320x240,176x144
05-02 23:01:10.569 16335 16423 D QCameraParameters: initDefaultParameters: supported picture sizes: 4032x3024,4032x2268,3984x2988,3264x2448,3264x1836,3024x3024,2976x2976,2880x2160,2560x1920,2560x1440,2160x2160,2048x1152,1920x1080,1280x960,1280x720,960x720,640x480
05-02 23:01:10.569 16335 16423 D QCameraParameters: [DNG_DBG]initDefaultParameters: supported dng sizes: 4032x3024,4032x2268,3024x3024
05-02 23:01:10.569 16335 16423 D QCameraParameters: initDefaultParameters: supported preview fps range = (7000,7000),(15000,15000),(24000,24000),(7000,30000),(10000,30000),(15000,30000),(30000,30000)
05-02 23:01:10.569 16335 16423 D QCameraParameters: initDefaultParameters: camaera position(0). supported focus mode = auto,infinity,fixed,macro,continuous-video,continuous-picture,manual,object-tracking-video,object-tracking-picture
05-02 23:01:10.569 16335 16423 D QCameraParameters: [PARM_DBG] Setting focus mode auto
05-02 23:01:10.569 16335 16423 D QCameraParameters: setSaturation: Setting saturation 5
05-02 23:01:10.569 16335 16423 D QCameraParameters: setSharpness: Setting sharpness 12
05-02 23:01:10.570 16335 16423 D QCameraParameters: setContrast: Setting contrast 5
05-02 23:01:10.570 16335 16423 D QCameraParameters: setSkinToneEnhancement: Setting skintone enhancement 0
05-02 23:01:10.570 16335 16423 D QCameraParameters: setBrightness: Setting brightness 3
05-02 23:01:10.570 16335 16423 D QCameraParameters: setAutoExposure: Setting auto exposure center
05-02 23:01:10.570 16335 16423 D QCameraParameters: [PARM_DBG] Antibanding value from CSC = []
05-02 23:01:10.570 16335 16423 E QCameraParameters: Invalid AntiBanding value: 
05-02 23:01:10.570 16335 16423 D QCameraParameters: [PARM_DBG] Antibanding will be set as 50Hz
05-02 23:01:10.570 16335 16423 D QCameraParameters: initDefaultParameters: model ver :  
05-02 23:01:10.570 16335 16423 D QCameraParameters: [PARM_DBG][setRthdrModes::24307][value::off]
05-02 23:01:10.570 16335 16423 D QCameraParameters: setEffect: Setting effect none
05-02 23:01:10.574 16335 16423 D QCameraParameters: setWhiteBalance: Setting WhiteBalance current wb str auto value :0
05-02 23:01:10.574 16335 16423 D QCameraParameters: setFlash: m_bSamsungApp: 0, m_bIsFactoryBin: 0, preview_state: 0, m_bSysfsTorchOn: 0
05-02 23:01:10.574 16335 16423 D QCameraParameters: [PARM_DBG] zoom_level = 0
05-02 23:01:10.574 16335 16423 D QCameraParameters: setAEBracket, EXP_BRACKETING_OFF
05-02 23:01:10.575 16335 16423 D QCameraParameters: setLensShadeValue: Setting LensShade value enable
05-02 23:01:10.575 16335 16423 D QCameraParameters: setMCEValue: Setting AWBLock value enable
05-02 23:01:10.575 16335 16423 D QCameraParameters: setDISValue: Setting DIS value disable
05-02 23:01:10.575 16335 16423 D QCameraParameters: setToneMapMode: tone map mode 1 
05-02 23:01:10.575 16335 16423 D QCameraParameters: setSceneDetect: Setting Scene Detect off
05-02 23:01:10.575 16335 16423 D QCameraParameters: setSecureMode: Secure mode value: disable
05-02 23:01:10.575 16335 16423 D QCameraParameters: [PARM_DBG] m_bVisionMode = 0
05-02 23:01:10.575 16335 16423 D QCameraParameters: setAwbLock: Setting AWBLock value false
05-02 23:01:10.576 16335 16423 D QCameraParameters: setExifIspVersion: EXIF -FW [LOAD] : C12QSJK01SM
05-02 23:01:10.598 16335 16423 E QCameraParameters: setEdgeAlignmentEnabled: EdgeAlignment Enabled=0 and bypass =1
05-02 23:01:10.600 16335 16423 D QCameraParameters: [setCamtypeInterval] Camtype - 0
05-02 23:01:10.600 16335 16423 D QCameraParameters: [PARM_DBG] setNumOfSnapshot : nBurstNum = 1, nExpnum = 1
05-02 23:01:10.603 16335 16335 D mm-camera-intf: mm_camera_open:  opened, break out while loop
05-02 23:01:10.603 16335 16335 D mm-camera-intf: mm_camera_poll_thread_launch: wait
05-02 23:01:10.615 16335 16335 D mm-camera-intf: mm_camera_poll_thread_launch: done
05-02 23:01:10.615 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.617 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.617 16335 16335 D mm-camera-intf: camera_open: X, Open succeded
05-02 23:01:10.617 16335 16335 D QCamera2HWI: isFactoryBin: User Binary
05-02 23:01:10.617 16335 16423 I QCamera2HWI: dw->cmd: 6
05-02 23:01:10.617 16335 16423 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_PARAM_INIT
05-02 23:01:10.617 16335 16335 E QCamera2HWI: mBootToMonoTimestampOffset = 3519652099054
05-02 23:01:10.617 16335 16335 D QCamera2HWI: [KPI Perf] openCamera: X
05-02 23:01:10.617 16335 16335 I QCamera2HWI: [KPI Perf] openCamera: X PROFILE_OPEN_CAMERA camera id 0, rc: 0
05-02 23:01:10.617 16335 16335 D QCameraPerf: lock_rel_ss E
05-02 23:01:10.617 16335 16335 E QCameraPerf: lock_rel_ss: mPerfMinLockHandle < 0,check if lock is acquired
05-02 23:01:10.617 16335 16335 I QCamera2HWI: [KPI Perf] close_camera_device: E camera id 0
05-02 23:01:10.617 16335 16335 D QCamera2HWI: ~QCamera2HardwareInterface: E
05-02 23:01:10.618 16335 16423 I QCamera2HWI: deferredWorkRoutine: CAMERA_CMD_TYPE_STOP_DATA_PROC
05-02 23:01:10.618 16335 16423 I QCamera2HWI: dw->cmd: 8
05-02 23:01:10.618 16335 16423 I QCamera2HWI: deferredWorkRoutine: CMD_DEF_LIB_LOAD
05-02 23:01:10.619 16335 16335 I cameraserver: exit: Waiting for cmd thread to exit
05-02 23:01:10.620 16335 16423 D UniPlugin: uni_plugin_load is called!
05-02 23:01:10.620 16335 16423 D UniPlugin: __uni_plugin_load is called!
05-02 23:01:10.620 16335 16423 D UniPlugin: get_plugin_handle is called!
05-02 23:01:10.621 16335 16423 D UniPlugin: UniPlugin is called!
05-02 23:01:10.622 16335 16423 D UniPlugin: uni_plugin_load is called!
05-02 23:01:10.622 16335 16423 D UniPlugin: __uni_plugin_load is called!
05-02 23:01:10.622 16335 16423 D UniPlugin: get_plugin_handle is called!
05-02 23:01:10.623 16335 16423 D UniPlugin: UniPlugin is called!
05-02 23:01:10.623 16335 16423 D UniPlugin: uni_plugin_load is called!
05-02 23:01:10.623 16335 16423 D UniPlugin: __uni_plugin_load is called!
05-02 23:01:10.623 16335 16423 D UniPlugin: get_plugin_handle is called!
05-02 23:01:10.624 16335 16423 D UniPlugin: UniPlugin is called!
05-02 23:01:10.625 16335 16423 D UniPlugin: uni_plugin_load is called!
05-02 23:01:10.625 16335 16423 D UniPlugin: __uni_plugin_load is called!
05-02 23:01:10.625 16335 16423 D UniPlugin: get_plugin_handle is called!
05-02 23:01:10.625 16335 16423 D UniPlugin: UniPlugin is called!
05-02 23:01:10.626 16335 16423 D Dejagging_interface: [dejagging] dejagging_interface VERSION 10750217
05-02 23:01:10.626 16335 16423 D UniPlugin: uni_plugin_init is called!
05-02 23:01:10.626 16335 16423 D DejaggingCore: [dejagging] void* create_dejaggingCore() is called!
05-02 23:01:10.626 16335 16423 D DejaggingCore: [dejagging] dejaggingCore::dejaggingCore() is called!
05-02 23:01:10.626 16335 16423 D DejaggingCore: [dejagging] dejagging_params::dejagging_params() is called!
05-02 23:01:10.626 16335 16423 D Dejagging_interface: [dejagging] Objects Created!
05-02 23:01:10.626 16335 16423 D DejaggingCore: [dejagging] int dejaggingCore::dejagging_core_init(dejaggingCoreData_t*, tDejagTuningValues_type*) is called!
05-02 23:01:10.626 16335 16423 D DejaggingCore: [dejagging] CORE Ver 10780217 INIT
05-02 23:01:10.626 16335 16423 D DejaggingCore: [dejagging] int dejaggingCore::dejagging_core_memalloc(int) is called!
05-02 23:01:10.626 16335 16423 D DejaggingCore: [dejagging](dejagging_core_memalloc[178]): Register buffer for HVX, index: 0, data:0xe9f5a000, size: 331776, fd: 39
05-02 23:01:10.626 16335 16423 D DejaggingCore: [dejagging]dynamic loading hvxdejagging lib
05-02 23:01:10.627 16335 16423 D DejaggingCore: [dejagging] Failed to find symbol libhvxdejagging
05-02 23:01:10.627 16335 16423 D QCamera2HWI: [Dejagging](load_uni_plugin[2045]): Set camera info: 0:109
05-02 23:01:10.627 16335 16423 D DejaggingCore: [dejagging] int dejagging_params::dejagging_parameter_init(int, int, tDejagTuningValues_type*, dejag_debug_info_t*) is called!
05-02 23:01:10.627 16335 16423 D DejaggingCore: [dejagging] : loading defalut param for imx260 = 496
05-02 23:01:10.627 16335 16423 D QCamera2HWI: [Lens_DC] uniplugin load E
05-02 23:01:10.627 16335 16423 D UniPlugin: uni_plugin_load is called!
05-02 23:01:10.627 16335 16423 D UniPlugin: __uni_plugin_load is called!
05-02 23:01:10.627 16335 16423 D UniPlugin: get_plugin_handle is called!
05-02 23:01:10.629 16335 16423 D UniPlugin: UniPlugin is called!
05-02 23:01:10.629 16335 16423 D ldc_interface: ldcPlugin::ldcPlugin() is called!
05-02 23:01:10.629 16335 16423 D DCDC    : [dcdc]int ldc_mem_alloc()
05-02 23:01:10.629 16335 16423 D QCamera2HWI: [Lens_DC] uniplugin load X
05-02 23:01:10.629 16335 16423 I QCamera2HWI: deferredWorkRoutine: CAMERA_CMD_TYPE_EXIT
05-02 23:01:10.630 16335 16335 I cameraserver: exit: After cmd thread exit
05-02 23:01:10.630 16335 16335 D UniPlugin: uni_plugin_unload is called!
05-02 23:01:10.630 16335 16335 D UniPlugin: __uni_plugin_unload is called!
05-02 23:01:10.630 16335 16335 D UniPlugin: temp->name:SmartFocusplugin
05-02 23:01:10.630 16335 16335 D UniPlugin: ~UniPlugin is called!
05-02 23:01:10.630 16335 16335 D UniPlugin: uni_plugin_unload is called!
05-02 23:01:10.630 16335 16335 D UniPlugin: __uni_plugin_unload is called!
05-02 23:01:10.630 16335 16335 D UniPlugin: temp->name:FlashedLLSplugin
05-02 23:01:10.630 16335 16335 D UniPlugin: ~UniPlugin is called!
05-02 23:01:10.631 16335 16335 D UniPlugin: uni_plugin_unload is called!
05-02 23:01:10.631 16335 16335 D UniPlugin: __uni_plugin_unload is called!
05-02 23:01:10.631 16335 16335 D UniPlugin: temp->name:BlurDetectionplugin
05-02 23:01:10.631 16335 16335 D UniPlugin: ~UniPlugin is called!
05-02 23:01:10.631 16335 16335 D UniPlugin: uni_plugin_deinit is called!
05-02 23:01:10.631 16335 16335 D DejaggingCore: [dejagging] int dejaggingCore::dejagging_core_deinit() is called!
05-02 23:01:10.631 16335 16335 D DejaggingCore: [dejagging] int dejaggingCore::dejagging_core_memfree() is called!
05-02 23:01:10.631 16335 16335 D DejaggingCore: [Dejagging](dejagging_core_memfree[192]): Unregister buffer for HVX, index: 0, data:0xe9f5a000, size: 331776, fd: 39
05-02 23:01:10.632 16335 16335 D DejaggingCore: [dejagging] dejaggingCore::~dejaggingCore() is called!
05-02 23:01:10.632 16335 16335 D DejaggingCore: [dejagging] CORE MEM CHECK LEAK! 0
05-02 23:01:10.632 16335 16335 D DejaggingCore: [dejagging] int dejagging_params::dejagging_parameter_deinit() is called!
05-02 23:01:10.632 16335 16335 D DejaggingCore: [dejagging] dejagging_params::~dejagging_params() is called!
05-02 23:01:10.632 16335 16335 D DejaggingCore: [dejagging]PARAMS MEM LEAK CHECK! 0
05-02 23:01:10.632 16335 16335 D UniPlugin: uni_plugin_unload is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: __uni_plugin_unload is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: temp->name:dejaggingPlugin
05-02 23:01:10.632 16335 16335 D UniPlugin: ~UniPlugin is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: uni_plugin_deinit is called!
05-02 23:01:10.632 16335 16335 D ldc_interface: virtual int ldcPlugin::deinit_plugin() is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: uni_plugin_unload is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: __uni_plugin_unload is called!
05-02 23:01:10.632 16335 16335 D UniPlugin: temp->name:LensDCPlugin
05-02 23:01:10.633 16335 16335 D ldc_interface: virtual ldcPlugin::~ldcPlugin() is called!
05-02 23:01:10.633 16335 16335 D DCDC    : [dcdc]int ldc_mem_free()
05-02 23:01:10.633 16335 16335 D DCDC    : [dcdc]int ldc_mem_free() Free Memory pDeltaX_buf
05-02 23:01:10.633 16335 16335 D DCDC    : [dcdc]int ldc_mem_free() Free Memory pDeltaY_buf
05-02 23:01:10.633 16335 16335 D UniPlugin: ~UniPlugin is called!
05-02 23:01:10.636 16335 16335 E ANDR-PERF: IPerf::tryGetService failed!
05-02 23:01:10.636 16335 16335 E QCameraPerf: lock_acq: failed to acquire lock
05-02 23:01:10.636 16335 16421 D QCameraStateMachine: smEvtProcRoutine: X
05-02 23:01:10.637 16335 16335 D QCamera2HWI: [KPI Perf] closeCamera: E, mCameraId = 0
05-02 23:01:10.637 16335 16335 I QCamera2HWI: waitDeferredWork: Invalid job id 0
05-02 23:01:10.637 16335 16335 I QCamera2HWI: waitDeferredWork: Invalid job id 0
05-02 23:01:10.637 16335 16335 E QCameraPostProc: [REPROC_DBG] STOP E
05-02 23:01:10.638 16335 16335 E QCameraPostProc: [REPROC_DBG] STOP X
05-02 23:01:10.638 16335 16335 D QCamera2HWI: deinitJpegHandle: E
05-02 23:01:10.638 16335 16335 D QCamera2HWI: deinitJpegHandle: X rc = 0
05-02 23:01:10.638 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.640 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.640 16335 16335 D mm-camera-intf: mm_camera_poll_thread_release: Sending MM_CAMERA_PIPE_CMD_EXIT to polling thread
05-02 23:01:10.640 16335 16446 D mm-camera-intf: mm_camera_poll_proc_pipe: Received MM_CAMERA_PIPE_CMD_EXIT
05-02 23:01:10.640 16335 16335 D mm-camera-intf: mm_camera_poll_sig: wait
05-02 23:01:10.641 16335 16446 D mm-camera-intf: mm_camera_poll_fn: Exited polling function
05-02 23:01:10.641 16335 16335 D mm-camera-intf: mm_camera_poll_sig: done
05-02 23:01:10.642 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: Waiting for polling thread to exit
05-02 23:01:10.642 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_poll_thread_release: After polling thread exit
05-02 23:01:10.642 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: Waiting for cmd thread to exit
05-02 23:01:10.642 16335 16335 D mm-camera-intf: [P_JOIN] mm_camera_cmd_thread_stop: After cmd thread exit
05-02 23:01:10.718 16335 16335 D QCamera2HWI: [KPI Perf] closeCamera: X
05-02 23:01:10.718 16335 16335 D QCameraPerf: lock_rel_ss E
05-02 23:01:10.718 16335 16335 E QCameraPerf: lock_rel_ss: mPerfMinLockHandle < 0,check if lock is acquired
05-02 23:01:10.718 16335 16335 D QCameraPerf: lock_rel_ss E
05-02 23:01:10.718 16335 16335 E QCameraPerf: lock_rel_ss: mPerfMaxLockHandle < 0,check if lock is acquired
05-02 23:01:10.719 16335 16335 D QCamera2HWI: ~QCamera2HardwareInterface: X
05-02 23:01:10.719 16335 16335 D QCameraDisplay: [P_JOIN] ~QCameraDisplay: Waiting for display thread to exit

```
