.class public Lcom/android/settings/multisimsettings/DataEnablerPreference;
.super Landroid/preference/CheckBoxPreference;
.source "DataEnablerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/multisimsettings/DataEnablerPreference$NetworkStatusChangeIntentReceiver;
    }
.end annotation


# instance fields
.field private mConnManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDataEnabledListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Lcom/android/settings/multisimsettings/DataEnablerPreference$NetworkStatusChangeIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/multisimsettings/DataEnablerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/multisimsettings/DataEnablerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    new-instance v0, Lcom/android/settings/multisimsettings/DataEnablerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/multisimsettings/DataEnablerPreference$1;-><init>(Lcom/android/settings/multisimsettings/DataEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mDataEnabledListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 120
    new-instance v0, Lcom/android/settings/multisimsettings/DataEnablerPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/multisimsettings/DataEnablerPreference$2;-><init>(Lcom/android/settings/multisimsettings/DataEnablerPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    .line 31
    iput-object p1, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mConnManager:Landroid/net/ConnectivityManager;

    .line 37
    new-instance v0, Lcom/android/settings/multisimsettings/DataEnablerPreference$NetworkStatusChangeIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/multisimsettings/DataEnablerPreference$NetworkStatusChangeIntentReceiver;-><init>(Lcom/android/settings/multisimsettings/DataEnablerPreference;Lcom/android/settings/multisimsettings/DataEnablerPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mReceiver:Lcom/android/settings/multisimsettings/DataEnablerPreference$NetworkStatusChangeIntentReceiver;

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 40
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/multisimsettings/DataEnablerPreference;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/DataEnablerPreference;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mConnManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/multisimsettings/DataEnablerPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/DataEnablerPreference;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/multisimsettings/DataEnablerPreference;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/DataEnablerPreference;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/multisimsettings/DataEnablerPreference;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/DataEnablerPreference;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method private updateSwitchState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 68
    iget-object v7, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1

    move v0, v5

    .line 71
    .local v0, "airPlaneModeOff":Z
    :goto_0
    const/4 v1, 0x0

    .line 72
    .local v1, "hasIccCard":Z
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    .line 73
    .local v3, "multiSimManager":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v7, 0x3

    if-ge v2, v7, :cond_3

    .line 75
    invoke-virtual {v3, v2}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "airPlaneModeOff":Z
    .end local v1    # "hasIccCard":Z
    .end local v2    # "i":I
    .end local v3    # "multiSimManager":Landroid/telephony/MSimTelephonyManager;
    :cond_1
    move v0, v6

    .line 68
    goto :goto_0

    .line 80
    .restart local v0    # "airPlaneModeOff":Z
    .restart local v1    # "hasIccCard":Z
    .restart local v3    # "multiSimManager":Landroid/telephony/MSimTelephonyManager;
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 81
    .local v4, "singleSimManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    const/4 v1, 0x1

    .line 85
    .end local v4    # "singleSimManager":Landroid/telephony/TelephonyManager;
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->setEnabled(Z)V

    .line 86
    iget-object v5, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 87
    iget-object v5, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->setChecked(Z)V

    .line 88
    return-void

    :cond_4
    move v5, v6

    .line 85
    goto :goto_2
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mReceiver:Lcom/android/settings/multisimsettings/DataEnablerPreference$NetworkStatusChangeIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 63
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->updateSwitchState()V

    .line 53
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mReceiver:Lcom/android/settings/multisimsettings/DataEnablerPreference$NetworkStatusChangeIntentReceiver;

    iget-object v2, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mDataEnabledListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    return-void
.end method
