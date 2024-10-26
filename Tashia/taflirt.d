BEGIN TAFLIRT

EXTEND_BOTTOM ~TASHIAJ~ 74
  IF ~InPartySlot(LastTalkedToBy(Myself),0)
Global("FlirtStarted","LOCALS",0)
GlobalLT("TashiaRomanceActive","GLOBAL",3)~ THEN REPLY @0 DO ~SetGlobal("Flirt1","LOCALS",0)
SetGlobal("Flirt2","LOCALS",0)
SetGlobal("Flirt5","LOCALS",0)
SetGlobal("FlirtStarted","LOCALS",1)~ GOTO flirt1
  IF ~InPartySlot(LastTalkedToBy(Myself),0)
Global("FlirtStarted","LOCALS",1)
GlobalLT("TashiaRomanceActive","GLOBAL",3)~ THEN REPLY @0 GOTO flirt1
END

EXTEND_BOTTOM ~TASHIAJ~ 74
  IF ~InPartySlot(LastTalkedToBy(Myself),0)
Global("TashiaIsMad","LOCALS",1)
Global("TashiaRomanceActive","GLOBAL",3)~ THEN REPLY @1 GOTO flirtapol
END

APPEND ~TASHIAJ~
IF ~~ THEN BEGIN flirtapol
  SAY @2
  IF ~~ THEN DO ~SetGlobal("TashiaIsMad","LOCALS",2)
SetGlobal("TashiaRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN flirt1
  SAY @3
  IF ~~ THEN REPLY @4 EXIT

  // Before and including LoveTalk 22
  IF ~InPartySlot(LastTalkedToBy(Myself),0)
!Global("TashiaRomanceActive","GLOBAL",3)
GlobalLT("Flirt1","LOCALS",6)
OR(2)
RealGlobalTimerExpired("FlirtTimer1","LOCALS")
Global("Flirt1","LOCALS",0)~ THEN REPLY @5 DO ~IncrementGlobal("Flirt1","LOCALS",1)
SetGlobal("DoFlirt","LOCALS",1)
RealSetGlobalTimer("FlirtTimer1","LOCALS",720)~ EXIT

  IF ~InPartySlot(LastTalkedToBy(Myself),0)
!Global("TashiaRomanceActive","GLOBAL",3)
GlobalLT("Flirt2","LOCALS",4)
OR(2)
RealGlobalTimerExpired("FlirtTimer2","LOCALS")
Global("Flirt2","LOCALS",0)~ THEN REPLY @6 DO ~IncrementGlobal("Flirt2","LOCALS",1)
SetGlobal("DoFlirt","LOCALS",2)
RealSetGlobalTimer("FlirtTimer2","LOCALS",1020)~ EXIT

  IF ~InPartySlot(LastTalkedToBy(Myself),0)
!Global("TashiaRomanceActive","GLOBAL",3)
GlobalLT("LoveTalk","LOCALS",23)
Global("Flirt1","LOCALS",6)
RealGlobalTimerExpired("FlirtTimer1","LOCALS")~ THEN REPLY @5 DO ~IncrementGlobal("Flirt1","LOCALS",1)~ GOTO flirt2

  IF ~InPartySlot(LastTalkedToBy(Myself),0)
!Global("TashiaRomanceActive","GLOBAL",3)
GlobalLT("LoveTalk","LOCALS",23)
Global("Flirt2","LOCALS",4)
RealGlobalTimerExpired("FlirtTimer2","LOCALS")~ THEN REPLY @6 DO ~IncrementGlobal("Flirt2","LOCALS",1)~ GOTO flirt3

  // Post Lovetalk 22

  IF ~InPartySlot(LastTalkedToBy(Myself),0)
GlobalGT("LoveTalk","LOCALS",22)
!Global("TashiaRomanceActive","GLOBAL",3)
GlobalGT("Flirt1","LOCALS",5)
RealGlobalTimerExpired("FlirtTimer1","LOCALS")~ THEN REPLY @7 DO ~IncrementGlobal("Flirt3","LOCALS",1)
SetGlobal("DoFlirt","LOCALS",3)
RealSetGlobalTimer("FlirtTimer1","LOCALS",1720)~ EXIT

  IF ~InPartySlot(LastTalkedToBy(Myself),0)
GlobalGT("LoveTalk","LOCALS",22)
!Global("TashiaRomanceActive","GLOBAL",3)
GlobalGT("Flirt2","LOCALS",3)
RealGlobalTimerExpired("FlirtTimer2","LOCALS")~ THEN REPLY @8 DO ~IncrementGlobal("Flirt4","LOCALS",1)
SetGlobal("DoFlirt","LOCALS",4)
RealSetGlobalTimer("FlirtTimer2","LOCALS",1020)~ EXIT

  IF ~InPartySlot(LastTalkedToBy(Myself),0)
GlobalGT("LoveTalk","LOCALS",22)
GlobalLT("TashiaRomanceActive","GLOBAL",3)
GlobalLT("TADreamResurrected","GLOBAL",4)
Global("TashiaIsMad","LOCALS",0)~ THEN REPLY @9 GOTO flirt4

  IF ~InPartySlot(LastTalkedToBy(Myself),0)
!Global("TashiaRomanceActive","GLOBAL",3)
GlobalGT("TADreamResurrected","GLOBAL",3)
OR(2)
Global("Flirt5","LOCALS",0)
RealGlobalTimerExpired("FlirtTimer5","LOCALS")~ THEN REPLY @9 DO ~RealSetGlobalTimer("FlirtTimer5","LOCALS",1400)
SetGlobal("Flirt5","LOCALS",1)
IncrementGlobal("Flirt5","LOCALS",1)
SetGlobal("DoFlirt","LOCALS",5)~ EXIT
END

IF ~~ THEN BEGIN flirt2
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt4
  SAY @12
    = @13
  IF ~~ THEN REPLY @14 GOTO flirt5
END

IF ~~ THEN BEGIN flirt5
  SAY @15
    = @16
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)
SetGlobal("TashiaIsMad","LOCALS",1)~ EXIT
END
END

APPEND BTASHIA
  IF ~IsValidForPartyDialog("nalia")
Global("NaliaTalk","LOCALS",0)
TimeGT(DUSK_START)
TimeLT(DAWN_END)
AreaType(OUTDOOR)~ THEN BEGIN nalia1
    SAY @17
    IF ~~ THEN DO ~SetGlobal("NaliaTalk","LOCALS",1)~ EXTERN NALIAJ nalia2
  END
END

CHAIN ~NALIAJ~ nalia2
  @18
  == ~BTASHIA~ @19
  == ~NALIAJ~  @20
  == ~BTASHIA~ @21
  == ~NALIAJ~  @22
  == ~BTASHIA~ @23
             = @24
             = @25
  == ~NALIAJ~  @26
  == ~BTASHIA~ @27
  == ~NALIAJ~  @28
  == ~BTASHIA~ @29
             = @30
             = @31
             = @32
             = @33
  == ~NALIAJ~  @34
  == ~BTASHIA~ @35
  == ~NALIAJ~  @36
  == ~BTASHIA~ @37
END ~NALIAJ~ nalia3

APPEND ~NALIAJ~
  IF ~~ THEN BEGIN nalia3
    SAY @38
    IF ~~ THEN EXIT
  END
END
