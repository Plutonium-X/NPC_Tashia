//BTASHI25.D

BEGIN btashi25

IF ~Global("ExpLoveTalk","LOCALS",2)
Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
     = @3
     = @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 3
  IF ~~ THEN REPLY @9 DO ~SetGlobal("LikeDruid","LOCALS",1)~ GOTO 4
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @11
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @13
    = @14
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~!Global("LikeDruid","LOCALS",1)~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @19
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @20
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @21
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @22
    = @23
    = @24
  IF ~~ THEN EXIT
END

IF ~Global("ExpLoveTalk","LOCALS",4)
Global("TashiaRomanceActive","GLOBAL",2)
Global("LovedOne","GLOBAL",16)~ THEN BEGIN 11
  SAY @25 
  IF ~~ THEN REPLY @26 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 13
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @30 GOTO 15
  IF ~~ THEN REPLY @31 GOTO 16
END

IF ~~ THEN BEGIN 13
  SAY @32
    = @33
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 14
  SAY @34
    = @35
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 15
  SAY @36
    = @35
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @37
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 18
  IF ~~ THEN REPLY @40 GOTO 18
  IF ~~ THEN REPLY @41 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @42
  IF ~~ THEN REPLY @11 EXIT
  IF ~~ THEN REPLY @43 EXIT
  IF ~~ THEN REPLY @44 EXIT
END

IF ~Global("ExpLoveTalk","LOCALS",6)
Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN 19
  SAY @45 
    = @46
  IF ~~ THEN REPLY @47 GOTO 20
  IF ~~ THEN REPLY @48 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 21
  IF ~~ THEN REPLY @51 GOTO 22
  IF ~~ THEN REPLY @52 GOTO 23
END

IF ~~ THEN BEGIN 21
  SAY @53
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @54
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 23
  SAY @55
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 25
  IF ~~ THEN REPLY @58 GOTO 25
  IF ~~ THEN REPLY @59 GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY @60
  IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 25
  IF ~~ THEN REPLY @63 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @64
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~Global("ExpLoveTalk","LOCALS",8)
Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN 28
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 29
  IF ~~ THEN REPLY @67 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 30
  IF ~~ THEN REPLY @70 GOTO 31
END

IF ~~ THEN BEGIN 30
  SAY @71
  IF ~~ THEN REPLY @72 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @73
  IF ~~ THEN EXIT
END

IF ~Global("ExpLoveTalk","LOCALS",10)
Global("TashiaRomanceActive","GLOBAL",2)
Global("SaradushSacked","GLOBAL",1)~ THEN BEGIN 32
  SAY @74 
  IF ~~ THEN REPLY @75 GOTO 33
  IF ~~ THEN REPLY @76 GOTO 34
  IF ~~ THEN REPLY @77 GOTO 35
END

IF ~~ THEN BEGIN 33
  SAY @78
    = @79
    = @80
  IF ~~ THEN REPLY @81 GOTO 36
  IF ~~ THEN REPLY @82 GOTO 36
  IF ~~ THEN REPLY @83 GOTO 37
END

IF ~~ THEN BEGIN 34
  SAY @84
  IF ~~ THEN REPLY @85 GOTO 39
  IF ~~ THEN REPLY @86 GOTO 39
END

IF ~~ THEN BEGIN 35
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 33
  IF ~~ THEN REPLY @89 GOTO 39
END

IF ~~ THEN BEGIN 36
  SAY @90
    = @91
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 37
  SAY @90
    = @92
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @93
    = @94
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39
  SAY @95
    = @96
    = @97
    = @98
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~Global("ExpLoveTalk","LOCALS",12)
Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN 40
  SAY @99 
  IF ~~ THEN REPLY @100 GOTO 41
  IF ~~ THEN REPLY @101 GOTO 50
  IF ~~ THEN REPLY @102 GOTO 55
END

IF ~~ THEN BEGIN 41
  SAY @103
  IF ~~ THEN REPLY @104 GOTO 42
  IF ~~ THEN REPLY @105 GOTO 46
  IF ~~ THEN REPLY @106 GOTO 44
END

IF ~~ THEN BEGIN 42
  SAY @107
  IF ~~ THEN REPLY @108 GOTO 44
  IF ~~ THEN REPLY @109 GOTO 46
END

IF ~~ THEN BEGIN 44
  SAY @110
    = @111
  IF ~~ THEN REPLY @112 GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @113
  IF ~~ THEN DO ~SetGlobal("TashiaWink","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 46
  SAY @114
  IF ~~ THEN REPLY @115 GOTO 47
  IF ~~ THEN REPLY @116 GOTO 49
  IF ~~ THEN REPLY @117 GOTO 48
END

IF ~~ THEN BEGIN 47
  SAY @118
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 48
  SAY @119
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @120
  IF ~~ THEN DO ~SetGlobal("TashiaWink","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 50
  SAY @121
  IF ~~ THEN REPLY @122 GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @123
  IF ~~ THEN REPLY @124 GOTO 52
  IF ~~ THEN REPLY @125 GOTO 54
END

IF ~~ THEN BEGIN 52
  SAY @126
  IF ~~ THEN REPLY @127 GOTO 53
  IF ~~ THEN REPLY @125 GOTO 54
END

IF ~~ THEN BEGIN 53
  SAY @128
  IF ~~ THEN DO ~SetGlobal("TashiaWink","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 54
  SAY @129
  IF ~~ THEN DO ~SetGlobal("TashiaWink","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 55
  SAY @130
    = @131
  IF ~~ THEN DO ~SetGlobal("TashiaWink","LOCALS",1)~ EXIT
END


IF ~Global("ExpLoveTalk","LOCALS",14)
Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN 56
  SAY @132 
  IF ~~ THEN REPLY @133 GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @134
  IF ~~ THEN REPLY @135 GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @136
    = @137
  IF ~~ THEN REPLY @138 GOTO 59
  IF ~~ THEN REPLY @139 GOTO 60
END

IF ~~ THEN BEGIN 59
  SAY @140
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60
  SAY @141
  IF ~~ THEN REPLY @142 GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @143
  IF ~~ THEN EXIT
END

IF ~Global("ExpLoveTalk","LOCALS",16)
Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN 62
  SAY @144 
    = @145
  IF ~~ THEN REPLY @146 GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @147
    = @148
  IF ~~ THEN DO ~IncrementGlobal("ExpLoveTalk","LOCALS",1)~ EXIT
END

IF ~IsValidForPartyDialog("Sarevok")
Global("Sarevok01","LOCALS",0)~ THEN BEGIN 64
  SAY @149
  IF ~~ THEN DO ~SetGlobal("Sarevok01","LOCALS",1)~ EXTERN ~SAREV25J~ sarev1
END

IF ~~ THEN BEGIN sarev2
  SAY @150
  IF ~~ THEN EXIT
END

IF ~IsValidForPartyDialog("Valygar")
Global("Valygar01","LOCALS",0)~ THEN BEGIN 65
  SAY @151
  IF ~~ THEN DO ~SetGlobal("Valygar01","LOCALS",1)~ EXTERN ~VALYG25J~ valyg1
END

IF ~~ THEN BEGIN valyg2
  SAY @152
  IF ~~ THEN EXIT
END

IF ~IsValidForPartyDialog("Viconia")
Global("Viconia01","LOCALS",0)~ THEN BEGIN 66
  SAY @153
  IF ~~ THEN DO ~SetGlobal("Viconia01","LOCALS",1)~ EXTERN ~VICON25J~ vicon1
END

IF ~~ THEN BEGIN vicon2
  SAY @154
  IF ~~ THEN EXIT
END

IF ~IsValidForPartyDialog("Aerie")
Global("Aerie01","LOCALS",0)~ THEN BEGIN 67
  SAY @155
  IF ~~ THEN DO ~SetGlobal("Aerie01","LOCALS",1)~ EXTERN ~AERIE25J~ Aerie1
END

IF ~~ THEN BEGIN Aerie2
  SAY @156
  IF ~~ THEN REPLY @157 GOTO Aerie2X
  IF ~~ THEN REPLY @158 GOTO Aerie2B
END

IF ~~ THEN BEGIN Aerie2X
  SAY @159
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Aerie2B
  SAY @160
  IF ~~ THEN EXTERN ~AERIE25J~ Aerie3
END

IF ~IsValidForPartyDialog("Minsc")
Global("Minsc01","LOCALS",0)~ THEN BEGIN 68
  SAY @161
  IF ~~ THEN DO ~SetGlobal("Minsc01","LOCALS",1)~ EXTERN ~MINSC25J~ Minsc1
END

IF ~~ THEN BEGIN Minsc2
  SAY @162
  IF ~~ THEN EXIT
END

IF ~IsValidForPartyDialog("Imoen2")
Global("Imoen01","LOCALS",0)~ THEN BEGIN 69
  SAY @163
  IF ~~ THEN DO ~SetGlobal("Imoen01","LOCALS",1)~ EXTERN ~IMOEN25J~ Imoen1
END

IF ~IsValidForPartyDialog("Korgan")
Global("Korgan01","LOCALS",0)~ THEN BEGIN 70
  SAY @164
  IF ~~ THEN DO ~SetGlobal("Korgan01","LOCALS",1)~ EXTERN ~KORGA25J~ Korga1
END

IF ~~ THEN BEGIN Korga2
  SAY @165
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

CHAIN2 ~KORGA25J~ Korga1
  @166
  == @167
  == @168
  == @169
  == @170
END ~btashi25~ Korga2

CHAIN2 ~IMOEN25J~ Imoen1
  @171
  == @172
  == @173
  == @174
  == @175
  == @176
  == @177
  == @178
  == @179
  == @180
  == @181
  == @182
END ~IMOEN25J~ Imoen2

CHAIN2 ~MINSC25J~ Minsc1
  @183
  == @184
  == @185
   = @186
  == @187
  == @188
  == @189
  == @190
END ~btashi25~ Minsc2

CHAIN2 ~AERIE25J~ Aerie3
  @191
  == @192
  == @193
  == @194
  == @195
  == @196
END ~AERIE25J~ Aerie4

CHAIN2 ~VICON25J~ vicon1
  @197
  == @198
  == @199
  == @200
   = @201
   = @202
   = @203
  == @204
END ~btashi25~ vicon2

CHAIN2 ~VALYG25J~ valyg1
  @205
= @206
END ~btashi25~ valyg2

CHAIN2 ~SAREV25J~ sarev1
  @207
  == @208
  == @209
   = @210
  == @211
   = @212
   = @213
   = @214
   = @215
   = @216
  == @217
  == @218
  == @219
END ~btashi25~ sarev2

APPEND ~AERIE25J~
  IF ~~ THEN BEGIN Aerie1
    SAY @220
    IF ~~ THEN EXTERN ~btashi25~ Aerie2
  END
END

APPEND ~AERIE25J~
  IF ~~ THEN BEGIN Aerie4
    SAY @221
    IF ~~ THEN EXIT
  END
END

APPEND IMOEN25J
  IF ~~ THEN BEGIN Imoen2
    SAY @222
    IF ~~ THEN EXIT
  END
END
