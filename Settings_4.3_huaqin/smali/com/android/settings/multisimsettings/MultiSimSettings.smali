.class public Lcom/android/settings/multisimsettings/MultiSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;
    }
.end annotation


# static fields
.field private static final KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

.field private static final KEY_PREFERRED_SUBSCRIPTION_LIST_NO_DATA:[Ljava/lang/String;

.field private static final PREFERRED_SUB_DATA_LIST_ENTRY_SLOT_ONE:[Ljava/lang/String;

.field private static mNeedReshowAlertDialog:Z

.field private static mNeedReshowDisEnableProDia:Z

.field private static mNeedReshowSetDataSubProDia:Z

.field private static mSimOneEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

.field private static mSimTwoEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;


# instance fields
.field private disableDataSub2:Z

.field private isPause:Z

.field private mButtonDataEnabled:Lcom/android/settings/multisimsettings/DataEnablerPreference;

.field private mConfigSub:Landroid/preference/PreferenceScreen;

.field private mDisableEnableAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

.field private mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

.field private mHandler:Landroid/os/Handler;

.field private mPreferredSubLists:[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

.field private mSetDataSubAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

.field private mSetDataSubProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "voice_list"

    aput-object v1, v0, v2

    const-string v1, "data_list"

    aput-object v1, v0, v3

    const-string v1, "sms_list"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "voice_list"

    aput-object v1, v0, v2

    const-string v1, "sms_list"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST_NO_DATA:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SLOT1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->PREFERRED_SUB_DATA_LIST_ENTRY_SLOT_ONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->disableDataSub2:Z

    .line 92
    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 93
    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 94
    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 95
    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->isPause:Z

    .line 132
    new-instance v0, Lcom/android/settings/multisimsettings/MultiSimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/multisimsettings/MultiSimSettings$1;-><init>(Lcom/android/settings/multisimsettings/MultiSimSettings;)V

    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    .line 448
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/multisimsettings/MultiSimSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/multisimsettings/MultiSimSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/MultiSimSettings;->dismissProgressDialog(I)V

    return-void
.end method

.method static synthetic access$1000()Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/multisimsettings/MultiSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->resume()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/multisimsettings/MultiSimSettings;ILandroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/multisimsettings/MultiSimSettings;->showProgressDialog(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/multisimsettings/MultiSimSettings;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/multisimsettings/MultiSimSettings;->showDialog(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowAlertDialog:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowDisEnableProDia:Z

    return p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowSetDataSubProDia:Z

    return p0
.end method

.method static synthetic access$900()Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    return-object v0
.end method

.method private dismissProgressDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 429
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v0}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->dismiss()V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v0}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->dismiss()V

    goto :goto_0
.end method

.method private dissmissAlertDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 438
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DisableEnableAlertDialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    move-object v0, v1

    check-cast v0, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 441
    .local v0, "dialog":Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->dismiss()V

    .line 443
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowAlertDialog:Z

    .line 446
    .end local v0    # "dialog":Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;
    :cond_0
    return-void
.end method

.method private initPreferences()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 180
    iput-boolean v11, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->disableDataSub2:Z

    .line 181
    const-string v8, "persist.env.data.disable.sub2"

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 182
    const-string v8, "MultiSimSettings"

    const-string v9, "prop persist.env.data.enable.sub2 true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v2, 0x1

    .line 184
    .local v2, "inChina":Z
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 185
    invoke-static {v12}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "operatorNumber":Ljava/lang/String;
    const-string v8, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "operatorNumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v13, :cond_0

    .line 189
    invoke-virtual {v4, v11, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "mcc":Ljava/lang/String;
    const-string v8, "460"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "455"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 192
    const/4 v2, 0x0

    .line 196
    .end local v3    # "mcc":Ljava/lang/String;
    .end local v4    # "operatorNumber":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 197
    iput-boolean v12, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->disableDataSub2:Z

    .line 201
    .end local v2    # "inChina":Z
    :cond_1
    iget-boolean v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->disableDataSub2:Z

    if-eqz v8, :cond_5

    .line 202
    sget-object v8, Lcom/android/settings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST_NO_DATA:[Ljava/lang/String;

    array-length v8, v8

    new-array v8, v8, [Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    iput-object v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v8, Lcom/android/settings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST_NO_DATA:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 206
    iget-object v9, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    sget-object v8, Lcom/android/settings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST_NO_DATA:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {p0, v8}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    aput-object v8, v9, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_2
    iget-object v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    aget-object v8, v8, v11

    sget-object v9, Lcom/android/settings/multisimsettings/MultiSimSettingsConstants;->PREFERRED_SUBSCRIPTION_LISTS:[I

    aget v9, v9, v11

    iget-object v10, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setType(ILandroid/os/Handler;)V

    .line 213
    iget-object v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    aget-object v8, v8, v12

    sget-object v9, Lcom/android/settings/multisimsettings/MultiSimSettingsConstants;->PREFERRED_SUBSCRIPTION_LISTS:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setType(ILandroid/os/Handler;)V

    .line 215
    const-string v8, "data_list"

    invoke-virtual {p0, v8}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    .line 217
    .local v0, "datalist":Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    const-string v8, "0"

    invoke-virtual {v0, v8}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setValue(Ljava/lang/String;)V

    .line 218
    sget-object v8, Lcom/android/settings/multisimsettings/MultiSimSettings;->PREFERRED_SUB_DATA_LIST_ENTRY_SLOT_ONE:[Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v9, v9, v11

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v0, v11}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setEnabled(Z)V

    .line 247
    .end local v0    # "datalist":Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    :cond_3
    sget-object v8, Lcom/android/settings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {p0, v8}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    .line 249
    .local v7, "voicelist":Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    const-string v8, "preferred_subscription_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 251
    .local v6, "preferredSubSettings":Landroid/preference/PreferenceCategory;
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 255
    const-string v8, "config_sub"

    invoke-virtual {p0, v8}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    .line 257
    iget-object v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "CONFIG_SUB"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->isAirplaneModeOn()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 259
    const-string v8, "MultiSimSettings"

    const-string v9, "Airplane mode is ON, grayout the config subscription menu!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 263
    :cond_4
    const-string v8, "multi_sim_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 264
    .local v5, "preferredMultiSimSettings":Landroid/preference/PreferenceCategory;
    iget-object v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    const-string v8, "button_data_enabled_key"

    invoke-virtual {p0, v8}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/multisimsettings/DataEnablerPreference;

    iput-object v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mButtonDataEnabled:Lcom/android/settings/multisimsettings/DataEnablerPreference;

    .line 270
    return-void

    .line 224
    .end local v1    # "i":I
    .end local v5    # "preferredMultiSimSettings":Landroid/preference/PreferenceCategory;
    .end local v6    # "preferredSubSettings":Landroid/preference/PreferenceCategory;
    .end local v7    # "voicelist":Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    :cond_5
    sget-object v8, Lcom/android/settings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

    array-length v8, v8

    new-array v8, v8, [Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    iput-object v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    .line 227
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v8, Lcom/android/settings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_3

    .line 228
    iget-object v9, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    sget-object v8, Lcom/android/settings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {p0, v8}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    aput-object v8, v9, v1

    .line 230
    iget-object v8, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    aget-object v8, v8, v1

    sget-object v9, Lcom/android/settings/multisimsettings/MultiSimSettingsConstants;->PREFERRED_SUBSCRIPTION_LISTS:[I

    aget v9, v9, v1

    iget-object v10, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setType(ILandroid/os/Handler;)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initSIMEnalber()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    const-string v2, "sim_one_enabler_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    sput-object v2, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    .line 274
    sget-object v2, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 275
    .local v0, "sub1_intent":Landroid/content/Intent;
    const-string v2, "subscription"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v2, "sim_two_enabler_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    sput-object v2, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    .line 278
    sget-object v2, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 279
    .local v1, "sub2_intent":Landroid/content/Intent;
    const-string v2, "subscription"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    sget-object v2, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->setSubscription(ILandroid/os/Handler;)V

    .line 281
    sget-object v2, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->setSubscription(ILandroid/os/Handler;)V

    .line 282
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isShowDialog(I)Z
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    if-nez p1, :cond_2

    .line 345
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->getShowsDialog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 345
    goto :goto_0

    .line 347
    :cond_2
    if-ne p1, v0, :cond_4

    .line 348
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->getShowsDialog()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 350
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 351
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->getShowsDialog()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 354
    goto :goto_0
.end method

.method private resume()V
    .locals 8

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    .local v0, "arr$":[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 331
    .local v4, "subPref":Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    invoke-virtual {v4}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->resume()V

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v4    # "subPref":Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->disableDataSub2:Z

    if-eqz v5, :cond_1

    .line 335
    const-string v5, "data_list"

    invoke-virtual {p0, v5}, Lcom/android/settings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    .line 337
    .local v1, "datalist":Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    .end local v1    # "datalist":Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    :cond_1
    return-void
.end method

.method private showDialog(ILjava/lang/String;I)V
    .locals 3
    .param p1, "dialogId"    # I
    .param p2, "dialog_msg"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 390
    const-string v0, "MultiSimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog dialogId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->isPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 392
    invoke-static {p1, p2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->newInstance(ILjava/lang/String;)Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 393
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SetDataSubAlertDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 395
    invoke-static {p1, p2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->newInstance(ILjava/lang/String;)Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 396
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    sput p3, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->mSubId:I

    .line 397
    iget-boolean v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->isPause:Z

    if-nez v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DisableEnableAlertDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 400
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowAlertDialog:Z

    goto :goto_0
.end method

.method private showProgressDialog(ILandroid/os/Message;)V
    .locals 9
    .param p1, "dialogId"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 405
    if-nez p1, :cond_1

    .line 406
    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->newInstance(ILjava/lang/String;)Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 407
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "SetDataSubProgressDialog"

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 408
    sput-boolean v8, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowSetDataSubProDia:Z

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    if-ne p1, v8, :cond_0

    .line 410
    if-eqz p2, :cond_0

    .line 411
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 412
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "mSubId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 413
    .local v3, "subId":I
    const-string v4, "mEnabled"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 414
    .local v1, "enabled":Ljava/lang/Boolean;
    const-string v4, "message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "message":Ljava/lang/String;
    invoke-static {v8, v2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->newInstance(ILjava/lang/String;)Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 417
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->mEnabled:Z

    .line 418
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    sput v3, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->mSubId:I

    .line 419
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "DisableEnableProgressDialog"

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 421
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    const-wide/32 v6, 0xafc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    sput-boolean v8, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowDisEnableProDia:Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 288
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->addPreferencesFromResource(I)V

    .line 289
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->initPreferences()V

    .line 290
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->initSIMEnalber()V

    .line 291
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x6

    .line 557
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    :cond_0
    sget-object v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->setSubscription(ILandroid/os/Handler;)V

    .line 561
    sget-object v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->setSubscription(ILandroid/os/Handler;)V

    .line 562
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 563
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->finish()V

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 359
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 360
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    .local v0, "arr$":[Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 361
    .local v3, "subPref":Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    invoke-virtual {v3}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->pause()V

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v3    # "subPref":Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->isPause:Z

    .line 366
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mButtonDataEnabled:Lcom/android/settings/multisimsettings/DataEnablerPreference;

    invoke-virtual {v4}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->pause()V

    .line 368
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 296
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->resume()V

    .line 298
    iput-boolean v3, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->isPause:Z

    .line 301
    invoke-direct {p0, v3}, Lcom/android/settings/multisimsettings/MultiSimSettings;->isShowDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowSetDataSubProDia:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SetDataSubProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 303
    sput-boolean v3, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowSetDataSubProDia:Z

    .line 305
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->isShowDialog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowDisEnableProDia:Z

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DisableEnableProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 307
    sput-boolean v3, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowDisEnableProDia:Z

    .line 309
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->isShowDialog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowAlertDialog:Z

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DisableEnableAlertDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 311
    sput-boolean v3, Lcom/android/settings/multisimsettings/MultiSimSettings;->mNeedReshowAlertDialog:Z

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mButtonDataEnabled:Lcom/android/settings/multisimsettings/DataEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->resume()V

    .line 319
    sget-object v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->resume()V

    .line 320
    sget-object v0, Lcom/android/settings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->resume()V

    .line 322
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->dismissProgressDialog(I)V

    .line 375
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->dismissProgressDialog(I)V

    .line 376
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/multisimsettings/MultiSimSettings;->dissmissAlertDialog(I)V

    .line 379
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 380
    return-void
.end method
