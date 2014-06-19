.class public Lcom/android/settings/DataEnabler;
.super Ljava/lang/Object;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;
    }
.end annotation


# instance fields
.field private mConnService:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/android/settings/DataEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DataEnabler$1;-><init>(Lcom/android/settings/DataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 170
    new-instance v0, Lcom/android/settings/DataEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataEnabler$2;-><init>(Lcom/android/settings/DataEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    .line 73
    iput-object p1, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 76
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    .line 79
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 80
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 84
    new-instance v0, Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;-><init>(Lcom/android/settings/DataEnabler;Lcom/android/settings/DataEnabler$1;)V

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mReceiver:Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DataEnabler;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/DataEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/DataEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DataEnabler;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DataEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataEnabler;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateSwitchState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 119
    iget-object v7, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1

    move v0, v5

    .line 122
    .local v0, "airPlaneModeOff":Z
    :goto_0
    const/4 v1, 0x0

    .line 123
    .local v1, "hasIccCard":Z
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    .line 124
    .local v3, "multiSimManager":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v7, 0x3

    if-ge v2, v7, :cond_3

    .line 126
    invoke-virtual {v3, v2}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    const/4 v1, 0x1

    .line 125
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "airPlaneModeOff":Z
    .end local v1    # "hasIccCard":Z
    .end local v2    # "i":I
    .end local v3    # "multiSimManager":Landroid/telephony/MSimTelephonyManager;
    :cond_1
    move v0, v6

    .line 119
    goto :goto_0

    .line 131
    .restart local v0    # "airPlaneModeOff":Z
    .restart local v1    # "hasIccCard":Z
    .restart local v3    # "multiSimManager":Landroid/telephony/MSimTelephonyManager;
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 132
    .local v4, "singleSimManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 133
    const/4 v1, 0x1

    .line 136
    .end local v4    # "singleSimManager":Landroid/telephony/TelephonyManager;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v7, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 137
    iget-object v5, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 138
    return-void

    :cond_4
    move v5, v6

    .line 136
    goto :goto_2
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mReceiver:Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/DataEnabler;->updateSwitchState()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mReceiver:Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;

    iget-object v2, p0, Lcom/android/settings/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/DataEnabler;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    iput-object p1, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 109
    invoke-direct {p0}, Lcom/android/settings/DataEnabler;->updateSwitchState()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 113
    iget-object v0, p0, Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
