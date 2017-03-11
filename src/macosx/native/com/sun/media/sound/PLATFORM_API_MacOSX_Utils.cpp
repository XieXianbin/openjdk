/*
 * Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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

//#define USE_TRACE
//#define USE_ERROR

#include "PLATFORM_API_MacOSX_Utils.h"

int MACOSX_DAUDIO_Init() {
    static int initialized = 0;
    if (!initialized) {
        CFRunLoopRef runLoop = NULL;

        OSStatus err = SetAudioObjectProperty(kAudioObjectSystemObject, kAudioObjectPropertyScopeGlobal,
            kAudioHardwarePropertyRunLoop, sizeof(CFRunLoopRef), &runLoop);

        if (err) {
            OS_ERROR0(err, "MACOSX_DAUDIO_Init(kAudioHardwarePropertyRunLoop)");
        } else {
            TRACE0("MACOSX_DAUDIO_Init(kAudioHardwarePropertyRunLoop): OK\n");
            initialized = 1;
        }
    }
    return initialized;
}

DeviceList::DeviceList(): count(0), devices(NULL) {
    MACOSX_DAUDIO_Init();

    AudioObjectPropertyAddress address = {kAudioHardwarePropertyDevices,
        kAudioObjectPropertyScopeGlobal, kAudioObjectPropertyElementMaster};
    OSStatus err = AudioObjectAddPropertyListener(kAudioObjectSystemObject, &address, NotificationCallback, this);
    if (err) {
        OS_ERROR0(err, "AudioObjectAddPropertyListener(kAudioHardwarePropertyDevices)");
    } else {
        TRACE0("AudioObjectAddPropertyListener(kAudioHardwarePropertyDevices): OK\n");
    }
}

DeviceList::~DeviceList() {
    Free();

    AudioObjectPropertyAddress address = {kAudioHardwarePropertyDevices,
        kAudioObjectPropertyScopeGlobal, kAudioObjectPropertyElementMaster};
    AudioObjectRemovePropertyListener(kAudioObjectSystemObject, &address, NotificationCallback, this);
}

OSStatus DeviceList::Refresh() {
    MutexLock::Locker locker(lock);
    Free();

    OSStatus err;
    UInt32 size;
    err = GetAudioObjectPropertySize(kAudioObjectSystemObject, kAudioObjectPropertyScopeGlobal, kAudioHardwarePropertyDevices, &size);
    if (err == noErr) {
        devices = (AudioDeviceID *)malloc(size);
        err = GetAudioObjectProperty(kAudioObjectSystemObject, kAudioObjectPropertyScopeGlobal, kAudioHardwarePropertyDevices, &size, devices);
        if (err == noErr) {
            count = size/sizeof(AudioDeviceID);
        }
    }
    if (err) {
        OS_ERROR0(err, "DeviceList::Refresh");
        Free();
    }
#ifdef USE_TRACE
    TRACE1("<<DeviceList::Refresh, %d devices {", count);
    for (int i=0; i<count; i++) {
        if (i > 0)
            TRACE0(", ");
        TRACE1("0x%x", (int)devices[i]);
    }
    TRACE0("}\n");
#endif

    return err;
}

int DeviceList::GetCount() {
    MutexLock::Locker locker(lock);
    return count;
}

AudioDeviceID DeviceList::GetDeviceID(int index) {
    MutexLock::Locker locker(lock);
    return index < 0 ? 0 : index >= count ? 0 : devices[index];
}

bool DeviceList::GetDeviceInfo(int index, AudioDeviceID *pDeviceID, int stringLength, char *name, char *vendor, char *description, char *version) {
    MutexLock::Locker locker(lock);
    if (index < 0 || index >= count) {
        return false;
    }

    AudioDeviceID deviceID = devices[index];
    if (pDeviceID != NULL)
        *pDeviceID = deviceID;

    OSStatus err = noErr;

    if (name != NULL || description != NULL) {
        CFStringRef cfName = NULL;
        err = GetAudioObjectProperty(deviceID, kAudioObjectPropertyScopeGlobal,
            kAudioObjectPropertyName, sizeof(cfName), &cfName, 1);
        if (err == noErr) {
            if (name != NULL)
                CFStringGetCString(cfName, name, stringLength, kCFStringEncodingUTF8);
            if (description)
                CFStringGetCString(cfName, description, stringLength, kCFStringEncodingUTF8);
            CFRelease(cfName);
        }
    }

    if (vendor != NULL) {
        CFStringRef cfManufacturer = NULL;
        err = GetAudioObjectProperty(deviceID, kAudioObjectPropertyScopeGlobal,
            kAudioObjectPropertyManufacturer, sizeof(cfManufacturer), &cfManufacturer, 1);
        if (err == noErr) {
            CFStringGetCString(cfManufacturer, vendor, stringLength, kCFStringEncodingUTF8);
            CFRelease(cfManufacturer);
        }
    }

    return true;
}

void DeviceList::Free() {
    if (devices != NULL) {
        free(devices);
        devices = NULL;
        count = 0;
    }
}

/*static*/
OSStatus DeviceList::NotificationCallback(AudioObjectID inObjectID,
    UInt32 inNumberAddresses, const AudioObjectPropertyAddress inAddresses[], void *inClientData)
{
    DeviceList *pThis = (DeviceList *)inClientData;

    for (UInt32 i=0; i<inNumberAddresses; i++) {
        switch (inAddresses[i].mSelector) {
        case kAudioHardwarePropertyDevices:
            TRACE0("NOTIFICATION: kAudioHardwarePropertyDevices\n");
            break;
        }
    }

    return noErr;
}



AudioDeviceID GetDefaultDevice(int isSource) {
    AudioDeviceID deviceID;
    OSStatus err = GetAudioObjectProperty(kAudioObjectSystemObject, kAudioObjectPropertyScopeGlobal,
        isSource ? kAudioHardwarePropertyDefaultOutputDevice : kAudioHardwarePropertyDefaultInputDevice,
        sizeof(deviceID), &deviceID, 1);
    if (err) {
        OS_ERROR1(err, "GetDefaultDevice(isSource=%d)", isSource);
        return 0;
    }
    return deviceID;
}

int ectProperty(kAud"' NULL)
         U|a   noErr;
}



AudjectID inoeeProperte   //ce);
   2 maxVolumlacodertyDef NULL)
         U OSStatus err;
  [n= Locker locker(lock);
    if (index < 0 || index >= count) ontrols of the PortControl
static  return devi AudioLcINULL) {
 trol *contrID inoeeProperte   //ce);
   2 maxVolumlace);
   2 max>n, cho     UbDefaultDevice(kCFStrh4(name != NULL)
            }> POeortComlace);
n       U OSStatus hebwSobabDefaultDevice(kCFStmaxVolnl
               erte  -   dl_sYripULL;
     sntrols
        if (!GetPortControoo ino1("PORn      6 if (!G--       eviceID, kt   tDevice(isp: k", gddresnnel, 1);
                    if (err1 || err2 || err3) { // not a control or other error
       a)-     | ere                rol ol
static  ortControlral Public License
 * v-if (!  ERRO      h ULL;
      //ce);

    OSStatus  roT_MIteID, ktrolf h U     _break;
        }
    }

    return noErr;
}



AudioDeviceID GetDefaultDevice(int isSou  devWurce)(int i     ontretPortControoo ontrol->co<<DevicDh, kCFStrtyDef NULL)    if (errvices\nr erIopeGe(kCFr(kAudioO    si4l;
   2 max>n, c(errvh, kCFStrtyDef NULL)    if (errvi-if (!  ERRO TRAxtDeff<control->controlCount   ontmak;
  (!  ERr erIopeGe
erIoax>nS
               ertentroeContre
late ne/Chan
   2 max>n, c(er1)ae(kAu   Free();

 apeGlobal,
      // trtentroeContre
late n>rID inoeeen2ax>n, c(er1)   returnentroeContrr (in%NULL)
      perty   perty   perty   pertejiste(kAud"ultDevice(kCFStmaxVo  (!hann c(errvh, kCFreamI      6 ifFStmaxVo  (!hann c(errvh, kCFream:wlChannels = %d,ntrol for fat32 *volumes, FF// updste(kAudF// updste(kA(kAudF// updste(kA(kngGetCString(cfManufacwontrol->co(cfMan       free(device    }

 me;
 tyDef NULL) lt:
      ) {
            float multufapddste(kA(kngGetPlt:
      ) {
 return DEFl);

 ejisteortInfapddme != NULr, vendorox:wlChan>)vice(isp: k", gddresnnel, 1);
                 s }

 =eHtInfapddmapk(AudioObjectID inOrtySize(mixer->dID inoeeen2ax>n, c(er    //}

 OLUME_VALUE;
       /F2E_VALUE;
 (unsigneE  D6GDapdde);
n /V ne/Chan
   2   /F22/devievh, kCFream:wlChannels = %d,ntr/F22/d)2 *volumes, FF// updste(kAudF// updste(k1)e)) {
   OSStatus err;
  [n= Locker locetr/F22/d)2 *volumes, FFes\nrLL)
         U OSStatus err;
  [n= Locker locker(lock);
    if (index < 0 || index >= count) ont_VALUE;
 (unsifDs>t     npddmfapddmaT_MIteID, ktrolfl *rox:wlChan>)vice(isp: ofDs>t     npddmfapddmaT_MIteI
    r(devi&ID =s*name, chaeI
   .dF// updste(k1)e)) {
 , isSource);
        return 0;
    }
    return dtringGetCStringMUTE control 0x%x, class reetr/F22L-oes\nrLL)
0x%x, 0// updste(k1)e)) {
   OSStatus err;
  [n= Locke_ 6 if8els == 0Sl, kAudioHardware1)e)) stPropertyScopeGlobal, kAudioObjectPropertyElementMaster};
    AudioObjectRemovePropertyListener(kAudioObjectSystemObject, &address, NotificationCallback, this);
}

OSStatus Device%tem_ipertyElementMaetPortct, s code is distrib condexlr == 0Sl, kAudipaemovePte nertf(cfnameHm_ipertysDvePropertyListeneD6GDaF maxVole),6rol{
    AudioDeviceID deviceID;
   Dste(k1)e)) {
 , isSour5.  AudiioObjectPrLL)
0x%x,2=eID deviceID;e    }
  AudiioObjectPrLL)
0x%x,2=eIDfeeoat valty(streamID, kAudioOhann c         CFSttPrL1 by r(lock);
    if <blID = 0x%x)"::Mute:
        f ID, ktrolf h U    &LUE;
 (unsigneE  D6GDapdde);
n /V ne/Chan
   2   /F22/devievh, kCFream:wlChannels = %d,ntr/F22/d)2 *volumes, FF// updste(kAudF// updste(k1)e)) {
   OSStatus erp~eGCFreamI      6 ifF[0] = c(errvh, k;
n /V condexlr == 0Sl,      reS xlr =amI      6 ifF[0 }

 mtrols e-lystemOBudioObstemObjeptPortCOddma);
  ,
    f ID, ktrolf h U   