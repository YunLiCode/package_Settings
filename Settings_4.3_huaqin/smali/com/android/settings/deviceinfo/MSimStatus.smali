.class public Lcom/android/settings/deviceinfo/MSimStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MSimStatus$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static final RELATED_ENTRIES:[Ljava/lang/String;


# instance fields
.field private SIM:[Ljava/lang/String;

.field private dataStateSummery:[Ljava/lang/String;

.field private esnNumberSummery:[Ljava/lang/String;

.field private iccIdSummery:[Ljava/lang/String;

.field private imeiSVSummery:[Ljava/lang/String;

.field private imeiSummery:[Ljava/lang/String;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mDataState:[I

.field private mHandler:Landroid/os/Handler;

.field private mNumPhones:I

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSigStrengthSummery:[Ljava/lang/String;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private meidNumberSummery:[Ljava/lang/String;

.field private minNumberSummery:[Ljava/lang/String;

.field private networkSummery:[Ljava/lang/String;

.field private numberSummery:[Ljava/lang/String;

.field private operatorNameSummery:[Ljava/lang/String;

.field private prlVersionSummery:[Ljava/lang/String;

.field private roamingStateSummery:[Ljava/lang/String;

.field private serviceStateSummery:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v2

    const-string v1, "network_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/deviceinfo/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 128
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "service_state"

    aput-object v1, v0, v2

    const-string v1, "operator_name"

    aput-object v1, v0, v3

    const-string v1, "roaming_state"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "baseband_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/MSimStatus;->RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mDataState:[I

    .line 237
    new-instance v0, Lcom/android/settings/deviceinfo/MSimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MSimStatus$1;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 110
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MSimStatus;)[Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MSimStatus;)[Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/MSimStatus;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->updateServiceState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/MSimStatus;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->updateNetworkType(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/MSimStatus;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mDataState:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/MSimStatus;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->updateDataState(I)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .param p1, "t"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 717
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 718
    .local v2, "s":I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 719
    .local v1, "m":I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 721
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 453
    new-instance v0, Lcom/android/settings/deviceinfo/MSimStatus$2;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/settings/deviceinfo/MSimStatus$2;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;II)V

    .line 473
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getSimSummery(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 177
    if-eqz p2, :cond_0

    const-string v0, "unknown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    iget-object p2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->SIM:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initMSimSummery([Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # [Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 169
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->SIM:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method private isDataServiceEnable(I)Z
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 637
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 639
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    const/4 v1, 0x1

    .line 644
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 709
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 710
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 482
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 485
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 684
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 685
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 687
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 695
    :goto_0
    return-void

    .line 691
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 691
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 692
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b035d

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 674
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 675
    .local v1, "ipAddressPref":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    const v2, 0x7f0b035d

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private varargs setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "msgs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ne v1, v4, :cond_2

    .line 185
    aget-object v1, p2, v3

    if-nez v1, :cond_1

    .line 186
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    aget-object v1, p2, v3

    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 190
    aget-object v1, p2, v3

    if-nez v1, :cond_3

    aget-object v1, p2, v4

    if-nez v1, :cond_3

    .line 191
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v0, "summery":Ljava/lang/StringBuffer;
    aget-object v1, p2, v3

    if-eqz v1, :cond_4

    .line 195
    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :cond_4
    aget-object v1, p2, v4

    if-eqz v1, :cond_6

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 198
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_5
    aget-object v1, p2, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object p2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 506
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 509
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 663
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 664
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 666
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 668
    .local v2, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 669
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 671
    return-void

    .line 668
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 669
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0b035d

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 648
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 649
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 651
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 653
    .local v4, "root":Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 654
    .local v3, "ps":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 661
    .end local v3    # "ps":Landroid/preference/Preference;
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 657
    .local v5, "wimaxMacAddressPref":Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0b035d

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "macAddress":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDataState(I)V
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const v2, 0x7f0b0027

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "display":Ljava/lang/String;
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->isDataServiceEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mDataState:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 630
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->dataStateSummery:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 631
    const-string v1, "data_state"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->dataStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 632
    return-void

    .line 614
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    goto :goto_0

    .line 617
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    goto :goto_0

    .line 620
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    goto :goto_0

    .line 623
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateMSimSummery(I)V
    .locals 12
    .param p1, "indexOfCDMA"    # I

    .prologue
    const/4 v11, 0x0

    .line 350
    const-string v8, "MSimStatus"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cdma index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 353
    sget-object v0, Lcom/android/settings/deviceinfo/MSimStatus;->RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_6

    aget-object v5, v0, v4

    .line 354
    .local v5, "key":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 353
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v3, v8, :cond_5

    .line 359
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v8, v3

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, "rawNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 361
    .local v2, "formattedNumber":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 362
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    :cond_1
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->numberSummery:[Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 366
    if-ne v3, p1, :cond_4

    .line 367
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->prlVersionSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 368
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->esnNumberSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 369
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 370
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->minNumberSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 373
    const-string v8, "min_number"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const v9, 0x7f0b034e

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 376
    :cond_2
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSVSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 378
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v8, v3

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 380
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 381
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 357
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 387
    :cond_3
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 388
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    goto :goto_2

    .line 392
    :cond_4
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->prlVersionSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 393
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->esnNumberSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 394
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 395
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->minNumberSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 396
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 397
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 398
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSVSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    goto :goto_2

    .line 401
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .end local v7    # "rawNumber":Ljava/lang/String;
    :cond_5
    const-string v8, "prl_version"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->prlVersionSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 402
    const-string v8, "esn_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->esnNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 403
    const-string v8, "meid_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 404
    const-string v8, "min_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->minNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 405
    const-string v8, "icc_id"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 406
    const-string v8, "imei"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 407
    const-string v8, "imei_sv"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSVSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 408
    const-string v8, "number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->numberSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 411
    const-string v8, "gsm.version.baseband"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v9

    invoke-static {v8, v9, v11}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "basebandVersionSummery":Ljava/lang/String;
    const-string v8, "baseband_version"

    invoke-direct {p0, v8, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .end local v1    # "basebandVersionSummery":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_6
    return-void
.end method

.method private updateNetworkType(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->networkSummery:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 605
    :cond_0
    const-string v0, "network_type"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->networkSummery:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method private updateServiceState(I)V
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    .line 512
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "display":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 515
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 517
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 530
    :goto_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->serviceStateSummery:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 531
    const-string v3, "service_state"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimStatus;->serviceStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 533
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 534
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->roamingStateSummery:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 540
    :goto_1
    const-string v3, "roaming_state"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimStatus;->roamingStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 542
    const/4 v1, 0x0

    .line 547
    .local v1, "operatorName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_0

    .line 550
    const v3, 0x1070036

    const v4, 0x1070037

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->operatorNameSummery:[Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 556
    const-string v3, "operator_name"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimStatus;->operatorNameSummery:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 558
    .end local v1    # "operatorName":Ljava/lang/String;
    .end local v2    # "state":I
    :cond_1
    return-void

    .line 519
    .restart local v2    # "state":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    goto :goto_0

    .line 523
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    goto :goto_0

    .line 526
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimStatus;->roamingStateSummery:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    goto :goto_1

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    new-instance v9, Lcom/android/settings/deviceinfo/MSimStatus$MyHandler;

    invoke-direct {v9, p0}, Lcom/android/settings/deviceinfo/MSimStatus$MyHandler;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;)V

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    .line 255
    const-string v9, "phone_msim"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/MSimTelephonyManager;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 257
    const v9, 0x7f05000f

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->addPreferencesFromResource(I)V

    .line 259
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    iput v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    .line 260
    iget v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Landroid/telephony/PhoneStateListener;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 262
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->esnNumberSummery:[Ljava/lang/String;

    .line 263
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    .line 264
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->minNumberSummery:[Ljava/lang/String;

    .line 265
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->prlVersionSummery:[Ljava/lang/String;

    .line 266
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSVSummery:[Ljava/lang/String;

    .line 267
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    .line 268
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    .line 269
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->numberSummery:[Ljava/lang/String;

    .line 270
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->serviceStateSummery:[Ljava/lang/String;

    .line 271
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->roamingStateSummery:[Ljava/lang/String;

    .line 272
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->operatorNameSummery:[Ljava/lang/String;

    .line 273
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSigStrengthSummery:[Ljava/lang/String;

    .line 274
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->dataStateSummery:[Ljava/lang/String;

    .line 276
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Landroid/telephony/SignalStrength;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 277
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Landroid/telephony/ServiceState;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    .line 279
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Lcom/android/internal/telephony/Phone;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 281
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->SIM:[Ljava/lang/String;

    .line 283
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->networkSummery:[Ljava/lang/String;

    .line 285
    const/4 v3, -0x1

    .line 287
    .local v3, "indexOfCDMA":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v1, v9, :cond_1

    .line 288
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->SIM:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 289
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    aput-object v10, v9, v1

    .line 290
    const-string v9, "CDMA"

    iget-object v10, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v10, v10, v1

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 291
    move v3, v1

    .line 292
    :cond_0
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v10

    aput-object v10, v9, v1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    const-string v9, "battery_level"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 296
    const-string v9, "battery_status"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 298
    const-string v9, "button_aboutphone_msim_status"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 299
    .local v7, "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_2

    .line 300
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 301
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "PACKAGE"

    const-string v10, "com.android.settings"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.settings.deviceinfo.MSimSubscriptionStatus"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    .line 308
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0b000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 310
    const-string v9, "up_time"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUptime:Landroid/preference/Preference;

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 313
    sget-object v0, Lcom/android/settings/deviceinfo/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v6, :cond_3

    aget-object v5, v0, v2

    .line 314
    .local v5, "key":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 318
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->setWimaxStatus()V

    .line 319
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->setWifiStatus()V

    .line 320
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->setBtStatus()V

    .line 321
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->setIpAddressStatus()V

    .line 323
    sget-object v8, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 324
    .local v8, "serial":Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 325
    const-string v9, "serial_number"

    invoke-direct {p0, v9, v8}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_2
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->esnNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 331
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 332
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->minNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 333
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->prlVersionSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 334
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSVSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 335
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 336
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 337
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->numberSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 338
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->serviceStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 339
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->roamingStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 340
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->operatorNameSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 341
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSigStrengthSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 342
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->dataStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 343
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimStatus;->networkSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 345
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->updateMSimSummery(I)V

    .line 346
    return-void

    .line 327
    :cond_4
    const-string v9, "serial_number"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 441
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 449
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 450
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 421
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->updateSignalStrength(I)V

    .line 430
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->updateServiceState(I)V

    .line 431
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->updateDataState(I)V

    .line 432
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->updateNetworkType(I)V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    return-void
.end method

.method updateSignalStrength(I)V
    .locals 9
    .param p1, "subscription"    # I

    .prologue
    const/4 v6, -0x1

    .line 562
    const/4 v4, 0x0

    .line 564
    .local v4, "signalDbm":I
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    if-eqz v7, :cond_1

    .line 565
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 566
    .local v5, "state":I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 568
    .local v2, "r":Landroid/content/res/Resources;
    const/4 v7, 0x1

    if-eq v7, v5, :cond_0

    const/4 v7, 0x3

    if-ne v7, v5, :cond_2

    .line 570
    :cond_0
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSigStrengthSummery:[Ljava/lang/String;

    const-string v7, "0"

    invoke-direct {p0, p1, v7}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p1

    .line 594
    :goto_0
    const-string v6, "signal_strength"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSigStrengthSummery:[Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 596
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v5    # "state":I
    :cond_1
    return-void

    .line 572
    .restart local v2    # "r":Landroid/content/res/Resources;
    .restart local v5    # "state":I
    :cond_2
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v7

    if-nez v7, :cond_6

    .line 573
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v4

    .line 581
    :cond_3
    :goto_1
    if-ne v6, v4, :cond_4

    .line 582
    const/4 v4, 0x0

    .line 584
    :cond_4
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 585
    .local v3, "signalAsu":I
    if-ne v6, v3, :cond_5

    .line 586
    const/4 v3, 0x0

    .line 588
    :cond_5
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSigStrengthSummery:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b002e

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0b002f

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/settings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p1

    goto :goto_0

    .line 575
    .end local v3    # "signalAsu":I
    :cond_6
    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 576
    .local v1, "gsmSignalStrength":I
    const/16 v7, 0x63

    if-ne v1, v7, :cond_7

    move v0, v6

    .line 577
    .local v0, "asu":I
    :goto_2
    if-eq v0, v6, :cond_3

    .line 578
    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v4, v7, -0x71

    goto :goto_1

    .end local v0    # "asu":I
    :cond_7
    move v0, v1

    .line 576
    goto :goto_2
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 698
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 699
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 701
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 702
    const-wide/16 v2, 0x1

    .line 705
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 706
    return-void
.end method
