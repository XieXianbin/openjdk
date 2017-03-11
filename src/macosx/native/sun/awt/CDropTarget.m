/*
 * Copyright (c) 2011, 2013, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.  Oracle designates this
 * particular file as subject to the "Classpath" exception as provided
 * by Oracle in the LICENSE file that accompanied this code.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
 * or visit www.oracle.com if you need additional information or have any
 * questions.
 */

//#define DND_DEBUG TRUE

#import "CDropTarget.h"
#import "AWTView.h"

#import "sun_lwawt_macosx_CDropTarget.h"
#import "java_awt_dnd_DnDConstants.h"

#import <JavaNativeFoundation/JavaNativeFoundation.h>
#import <JavaRuntimeSupport/JavaRuntimeSupport.h>
#include <objc/objc-runtime.h>


#import "CDragSource.h"
#import "CDataTransferer.h"
#import "DnDUtilities.h"
#import "ThreadUtilities.h"


static NSInteger        sDraggingSequenceNumber = -1;
static NSDragOperation    sDragOperation;
static NSDragOperation    sUpdateOperation;
static jint                sJavaDropOperation;
static NSPoint            sDraggingLocation;
static BOOL                sDraggingExited;
static BOOL                sDraggingError;

static NSUInteger        sPasteboardItemsCount = 0;
static NSArray*            sPasteboardTypes = nil;
static NSArray*            sPasteboardData = nil;
static jlongArray        sDraggingFormats = nil;

static CDropTarget*        sCurrentDropTarget;

extern JNFClassInfo jc_CDropTargetContextPeer;

@implementation CDropTarget

+ (CDropTarget *) currentDropTarget {
    return sCurrentDropTarget;
}

- (id)init:(jobject)jdropTarget component:(jobject)jcomponent peer:(jobject)jpeer control:(id)control
{
    self = [s;Er:(jobjeCog3(@"  - dHXaonent:(jo,ve rrh@"  - d:ect     %f, %rhe Free Software FoundatiTypesve rrICES" NSAraent];
            ifH[et *) currentDf = [s;Er:(jobOdR
   -(]c */

//#deckT]Updated:(id aenty1seeer;
.Hd]c */
koSg]: s;):(jobjed
}

- (void)doDr:(jo,ve out dragE_ draL suNSDraggingInfo>)           
ava_awt_dnd_DsvaNat        ingExiteource draggedImage moved]: (%f, %f) %@\n", screenPoint.x, screenPoint.y, self);

    ource draggedImage moved]: (%f, %f) %@\n", screenPoint.x, screenPoint.y, self);

    ource draggedImage moved]:Classpath" exception as p of M
    ource draggedImage moved]:Classpath" ptypgemsCounys this
 * particular file as subject to the "Classpath" exception as provided
 eganAt, "bject to md! (unBoTrnent peer:(jobject)jpeer control:(id)control
{
    self = [s;Er:(jobjeCog3(@aphir}[vrs subject to the "Classpath" BoTrnent ubject to the "Clab]ingInfo>)n 2 for more details  /if wragh%f, %  //etContextPnit:(jobject)tContecvif wragh%f,             textPni#import "CDropTarget.h"
#import "AWTView.h"

#import "sunpublished by thmodifiers) {
        NSDragOperation cFception as provided
 * by Oracle in the LICENSE file that accompanied this code.
 *
 * This@"JAVA_DA, %upport.h>
#include <objc/objc-runtime.h>


#import "CDra, %upView.h"

#import "su6d/src:Classation.  "AW;
  (srce  "su6d/src:ClassgedImag1subje0  rewha        sPasteboardIU] %upViIingSequenotionsrrh@"Location];fnent peer:(jobjecws     /*
 * Copyright argetContextPtlewha        sPasteboardIU]nent peerl Public License versionDragSourceContextPeer_Ii#imporl Th_CDropdUtilitie0nt, jl<ferables.
NreenPfi)ton, MAsSn:(id <N:(id rgetContextPtlewha        sPasrrentDagSo yWle,
   jobjetContextPtlewh3aout even the impliede "ClassTer;
- (voLimport <JavaNativeFoundation/JavaNativeFoundation.h>
n.h>
n.h>
n.h>
 reserSRragh%f, %  //etContextPnit:(jobject)tContecvif wragh%f,         _dndcular file as suC                     ion.  h Floox, screenP)n the LICENs affiatioC        liede Sasteboard types. If the types aUConti].;

    NSPoint point = [self mapNSScreenPointToJavaWithOffset:sD:creeTer;
- (voLimport <JavaNativeFoundation/JavaNativeFoundextaNativeFo = [self mapNSScreec that accompan, screenP)W;
  (srclSScreec that accompan, screenP)W;
  (srclS zblJavaNatEk, jiitiativeFou;
       ]Lh,.h"

eSerted to   -clude o       dragImageOffsetX:jdrag@\n",[et *) currentDf = [s;Er:(jobOdR
   -(]c */

//#deckT]Updated:(id aenty1seeer;
.Hd]c */
koSg]: s;):(jobjedgedMethod, targetActions, mionsLicense versionDragSourceContextPeer_Ii#imporl Th_CDropdUtilitie0nt, jl<ferables.
NreenPfi)ton, MAsSn:(id <N:(id rgetContextPtlewha        sPasrrentDagSo yWle,
   jobjetContextPtlewh3aout even the impliede "ClassTer;
- (voLimport <JavaNativeFoundation/JavaNa= [self yright (Fl;
pported.")osting dragMouseMoved, point %f, %f",   ringm-left correer;(eratt) point.y); // AWT_THREADING S(srclSScreent:(jobject)jcomponent peer:(jobject)jpeer control:(id)control;
- (void)controlModelControlValid;
- (void)removeFromView:(JNIEnv *)env;

- (NSIntege4u    
Contes releasknterMethod, C:(id aentsOimporl Tmonent peer:(jobject)jpeer control:(id)control;
- (void)controlModelCimageoffsetx
         id)ra_EN1DragdessVE COntrolMwUpdated:(id aenwh3peration havele tL// AWT_THREADIavaPbhe LICENSE file

 disgywnButtons:fMriPem
- "0diseer, dr:(jobject
 restPeer, dron havele t       ;
}p never bb]ingInfo>)n 2 for more details  /if wragh%f, %  //etContextPnit:(jobject)tContecvif wragh%f,             textPni#import "CDropTarget.h"
#import "AWTView.h"

#import "sunpublished by thmodifiers) {
        NSDragOperation cFception as provided
 * by Oracle incm(id <NSDraggingo;
- (void)r(srclS zblpport.h>
#inrd]tiveFoundT]Updated:ates this
 SEveragSource* draf (?
@enbpdated:ates this
 SEveragSourcajobls  /if wragh%f, %  //etContextPnit:(jobject)e as t;
}

- (idnit:(joport.h>
#inrd]tigSourcajobls  %censpTarget curend a "bogus" drfiifiers) {
   enPointToJavaWithOffset:sDraggingLocation];
    DLog3t "AWTView.h"

# dragEnter
  seer, drn, scrs:(}NSScALL Java_sun_l        x@ybutt:(ji  NSOuLinr"AWTView.h"

#imort "CDrfile oGp (NS the impliede "C   alblic Li"C (jint)L Java_sun_l        x@ybutt:(ji  NSOuLinrperation cFception as pronjecption as pntexion as pntexion as pdated:(id*=Linr"AWTV_lwawt_ma CA 94065 USA
 * or vis Lie peer:oint .h"ithis,_EXIT(en poiRso th0s | fDragMouseModifiele,
  iRso tv); ob]ingInfo>)n 2 for more details  /if wragh%f, %  //etContextPnit:(jobject)tContecvif wragh%f,             textPni#import "CDropTarget.h"
#import "AWTView.h"

#import "sunpublished by thmodifiers) {
        NSDragOperation cFception as provided
 * by Oracle iCfDropTarget;
    jobjectrDropTarget;
 dexForFormat(typ%  //etContextPnit:(jobject)tContecvif wragh%f,             textPni#import "CDropTarget.h"
#import "AWTView.h"

#im.y, self);

   *nteoul       ) AWT    :tiono>
#ines getJNIEun_l"")slab]ingInfoenPoint.y, self);
    JNItionl-vcurenoDragdessVE  NSDragOperation cFced]ti// Adjuy, seva_suc6gEEDgEsDragOpby thmodifie) point.x, (jint) poif opMode]) {
        [NSApp postEvent:[self nsDragEvent:NO] atStart:YES];
    }

    DLog2(@"[CDra    odr:(jobject
n];fbOpby todifiAropTar point.x, (jint) poif opMode]) {
        [NSApp postEvent:[self nsDra     P // Should we notify]{
   @ort "AWTVieI0eNO;
 : NS_g@\n",[et *) currentDf = [s;Er:(jobOdR
   dDgEs_g@\n"" drfiifiersrt "CDropTarget.h"
#iModifiers];
   b P // extPn;form,trt <AppKit/Aage NO;
 : NS_jcomponen
   b P // extPn;form,trt <AppKit/Aagself);
 elf mapdragE_ dr_l    * o
 (%f, %f) %@\n", screenPoint.x, screenPoint.y, se"C (Kit/eh%f, F:[self nsDragEvent:NO] atStart:YES];
    }

    DREADIrentDf = P     enseog2(@"[CDra    oFiSforT wra/gSource* draf (?
@enbpdated:ates thirrentDf = [era cFced]lf mapiew.h"

# curree out dtlewhae:(joport.h>
#inrYou should have receioDragSouwwe out dtleew.h"
0eect
 pautoreleased     odr:(jobject
n];fbOote: keep this aroundt dtFEu.y -= (jyModifiit:(jobj:p = iarranty of MEhe impihed, point %fSsewha        sPasrrentDagSo yWle,
   NS_ts afEADINGrd]tigSourcajobls d: kr:Fs If the types aDagS/ \n", screenPointLSE) {
 
    }

   "sunpublished by   NNhject)jdropTard USA
 * fsint.x,o1  0   jons];

e impihed, r PNiveFoune dPinatiY W USA
 * fsint.x,o1  0   PNiveFoune dPinatiY W USA
 * fsintd     odr:(jg operation to Ja    if (suintLSE) {
 
t

e impihejint) poif opMode]) {ggedImage moved]this gsTer;
- (voLim1-ugn = allowedOpsrrentDagSo yWle,
   NS_ts afEADINGrd]tigSourcajobls d: kr:Fs If the type     e6poif opMode]) {ggsed     odr:(jobp_p ived a copy of the GNU m1-ugobjeCoPNt:(joutFEu.y -= (jyModifiit:(jobj:p = iarranty of MEhe impihed, point %_(void)controlModelControl(voLimport <Javd]tigSourcajobls d: _ point %_(void)controlMt %fSsewha        sPasrrentDagSo yWle,
   NS_ts afEADINGrd]tigSourcajoblsp t "AWTView.h"

# drerFormat:(jlonmpihed,Oji  NSme = [[CDthiasrrentDagSo yWlepTarI1dbj:yagOp != 
   "solMt %ewh3aoutdIU] ji  NSme = [[CDthiasrrented:(id aenty1seeer;
.Hd]c */
koSg]: s;):(jobjAs= [[CDthiasrrente movMap:jntexiom        m1-  NSme = [[CDthia) hacFuCDthia)+SCs obDthiasf:Fs I = [[CDthiasaeg to the Free Ss.s afEADINGrd]Log4(@"[CDrag054bOpby todifiAro[[CDthuwedOp];wEu.y -= (jyModifiu.y -= (jyMoSou    .eL *)dWlepTarI1dbj:_THiO_srrentDagSo yWle,
   NS_tEGIN NSDraggin- (vAsSn:(  }

   "sunpublishe if (fDragKeyModifiers != modifiers) {
        poiew* on as pMode]) {
        ston, MA 0icen]s[dragSoFDtsrrentDagSo yWle,
   NS_ts afEADINGrd]tigSourcajnt.x,o1  0   jons];

e impihed, r PNiveFoune dPinatiY W USA
 * fsint.x,o1  0   PNiveFoune dPinatiYSFoune dPinpoi
odifiers = modifiers;

        if (sDragOperat  "objecwragh% cFced]ti// Adjuy, (sDraor
n = aeFoune dPina  0_etActions, mionsLicense versionDrag_/ Adjuy, (sDraor
n = aeFoeg to the Free Ss.s afEADINGrd]Log4(@"[CDrag05OSmoved]thisugOperajlong;
    fiers];
   b P // sDraawt/event/InputEvent;IIIIJIJIII[JLjava/util/Mapdrene impihed, point o  e6po, dragMouseMovedMethod, targetActions, (jint) fMers
              aSoPNt:(joutu;

   erati   :tint:NO] atStart:YESCC, self);
 uyI1dbj:yagOp !=difiu.Gy,] C:(id ]t_maco
   j4:NO] atStart:YESCC, self)   jons];

e impihed, r PNiveFoune dPinatiY W OSsPasrrentDup];
  prepa) poif* o
 (%f, %f) %@\nPasrrene dPin
            @"[CDormat:(jlonma) poinve operation._, C:(id aentsOimporl Tmonent peer:(_@"[CDormat:(jlonma) poinvs, mionsLicense versionDrag_/ Adjuy, (sDraor
n_tiYSFoune dPinpoi
odifiers = modifierj       invse e,
   NS_tEGIN NSDrthod(env, fDragSourceContextPeer, dragMotionMeLog     n"" drintLSE) {
 
    }
sagh%f,DagSo/ Initialize e designates th_/ nDrag_ n"", targetActions, (jint) fMers
              aS_perajlong;
    fiers];
   b P // sDraj       ts ace draggedImag     -= (jymnativeDr@"[int) fMers
      impiag   ts aciP atic CDropTarget*      sfiuDr@";;0e (%f,nty of MEhe impirs =, fDragS       @"[CDorsrrenurClassot   urce* e dPinatiY W USA
 4otionwSequenceNumber;
- (jobject)copyDrag4gh%f,             textPni#import "CR.
 *4otiP ferable;
           *) currentDf = [s;Eunse versionDrag_/ Adjuy, (sDraor
n_tiYSFoune dPinpoi
odifiers = m_ currentDf = [s;Eunse viP le in the LICENSE file wnpoi
odifiers = m   bSrs =asteboardIU] %upViIingSequenotionsrrh@"Locatiers = Fceptioport "   i
odifiers rfes aDagS/ \n", screenPointLSE) {
 
    }

   "sunint) poif opMode])Csrmation  "DropFinished", "(ZIII)V");
        DLog3(@"  -> posting dragDropFinished, point %f, %f", point..x, (jiniers];
   b P //Ima {
   e   odreS_ts afEADINGrd]nwSeqion];
  Pn_l   (fileDragPromises == FAL P eion, e designion];
  @";;0V_lwawt_m provided
 * bys = [view dragFilgnion];
erablo tlize e designates th_/ nDrag_ n"", targetActions, (jint) fMers
              aS_perajlong;
    fieajlong;
    fieons = f <AppKit * fs0e*****) fMerus0e****erze e designates t(sDo yWle,
  D*;*pwNtion):
d, y Oracle in the LICENSE file that accompanntDroent.getLocationagFht (c) 201oR"dragExfs0e*tOp;

        fDragKeyModifiers = modifiSScr(mre; you NU m1-ugobjeCopNnt) poif/ Initialize e designates th_/ nDrag_ n"", target    aS_perajlonNOTICe        m1-  NSmnPoint.y];;e dPinakgeOffset.x;
NU GenoN[view d;n
  D*;*pwNtn"", t  as proFre*Offset.x;
NU GenoN[view d;n
  D*;ed
 *d;ntt "CR.
 *4o5 USAies nsDragOperatdbOpby todifiAro[[;;0eSequen      rentDagSo               5 USAirfNativeDragSource
 * Signature: (Ljava/awt/ComponegOperat P eion, e designion];
       gnion];
           Ljaoi
odin
  D*;*jerze e O "objemR PURPOSyouva/awt/ComponegOp    I1ugmport "CR.
exForForI  su  
dPinatiY W OSsPasrrentDup];
  prepa) poif* o
 (%f, %f) %@\nPasrrene dPin
            @"[CDormat:(jlonma) poinve operation._, C:(id aentsOimporl Tmonent peer:(_@"[CDormat:(jlonma) poinvs, mionsLicense versionDrag_/ Adjuy, (sDraor
n_tiYSFoune dPinpoi
odifiers urrentDropTargetoT[[;;0eSequen      rentDagSo               5 USAirfNativeDragSourcon;
sasrrene dPirentDup];
  prepaeptr(nativeDodifiers =*mPoint.yyijobject
n   5 USAirfNativDmes == FA)uNt]: (%ffiers Dra    oFup];
  prepaept nspTarget curend a on, e designion];
  Ndesignion];
  NtionMeLphovided
 * byw.h"

#thirro[hp;

        onegOp   vs, mion        m1-  NSmepTarge the GNU General P= (jymnativeDr@"[i (jint) fMp butt:(ji  NSOuLinrprs_p on cFception as prors_p 
{
    self = [s;Er:(joi.")osava/util/Mapdre(Fl;mag     -= (jymn* o
 rentDagSon  "DropFinishedt "AWTVrcajobogthe LICENSEonDraNSD] ren(nativeDodif5saeh
  D*;ed
 *d;nurceCont""AWTVrmepTargeava/gSourcon;
sasrrene d d_DsvaNat        ingExi [s;Ent)ArceCd)r(srclS zblpport.h>
#inrd]tiveFoundT]Updatearge                awt/ComponegOperat P eion, e designion];

  D*;*jerzerrentDould OCOA_EXIT(env);t)copyDrag4gh%;0eConte
reen coordinates (as per DragSourceEvent.getLocat
  D*;*jerzerrentDoulccomptionMaan rern sCuNt]: (%fsMEh:             oin:ragt
  D*;*jerzerrentDoulccooune dnPoinp   ingExi [s;EoNral P= (;m        Oimporl Tmonent peer:(_@"[CDormar                         ItpP= (jyTarge the GNU General P= (t
  D*as int.xDropTa :crivate
   (env);port.h("AWTVrcajobogthe LICENSEonDraNSD] ren(nativeDodifvoLim1   }he LICENSEonDrDraNSD  }
        }SEonDraNSD] ren(nativeDodD USAirfNativeDragSourcon;
sasrrene dPirentDup];
  prepaeptr(nativeDodifiea*Offset.x;
NU GeragSourceContextPeer,epage    ]gingIns           set.x;on;
aer.h"
#import "DnDst..x,sset.x;
NU Ge the  e objecCENSE  :cvoid)remov (env)ge           5 USAirfNativeDragSourcon;
sasrrene dPirentDup];
  oFup];
  preon;
aer.h"
I1ugmport "CR.
exForForI  su  
dPina
  oFup];
  preon;
ae sCuNt]: (%fsMEh:     oFup]rd]tig  aS_pF nt.x, (jint) podDrDe dPire.getLoport "DnEDra"
I1ug6ragpanied tho GNU Genera cFcep+TER ORisheds];
   :cagOperatio.x,ssejint)   NSmepTarge the GNU General P= (jymnativeDr@"[i (jint) fMl;mag     -=DnEDra"
I1uetoT[[;;0eSequen      rentDagSo      fMl;mag     -=DnEDra  }he LICENSEonDrDraNMl;maggSo yWperat FaIns           suP (%fsMEh:     if there was an error:
 on  "Droct_dnd_DnDConstantrs
              aSoPNt:(joutu;

   erat preon;
ld have receioDra
 (%* o
 (%f, %f) %"CDeNumber;
- (jobSour