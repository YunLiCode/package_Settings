.class public Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
.super Landroid/preference/ListPreference;
.source "PreferredSubscriptionListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private entries:[Ljava/lang/CharSequence;

.field private entriesPrompt:[Ljava/lang/CharSequence;

.field private entryValues:[Ljava/lang/CharSequence;

.field private entryValuesPrompt:[Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMultiSimHandler:Landroid/os/Handler;

.field private mNumPhones:I

.field private mPreferredSubscription:I

.field private mType:I

.field subManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

.field private summaries:[Ljava/lang/CharSequence;

.field private summariesPrompt:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->subManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    .line 79
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    .line 198
    new-instance v0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference$1;-><init>(Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;)V

    iput-object v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->initEntries()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mMultiSimHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->handlePreferredSubscriptionChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->getMultiSimName(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getEntityValues(I)[Ljava/lang/CharSequence;
    .locals 3
    .param p1, "listType"    # I

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->subManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 303
    .local v0, "count":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    sget-object v1, Lcom/android/settings/multisimsettings/MultiSimSettingsConstants;->PREFERRED_SUBSCRIPTION_LISTS:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eq p1, v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entryValuesPrompt:[Ljava/lang/CharSequence;

    .line 307
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entryValues:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getMultiSimName(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 327
    iget v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    if-ne p1, v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->summariesPrompt:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    aget-object v0, v1, v2

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "name":Ljava/lang/String;
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const-string v1, "%"

    const-string v2, "%%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMultiSimNamesFromRes(I)[Ljava/lang/CharSequence;
    .locals 3
    .param p1, "listType"    # I

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->subManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 317
    .local v0, "count":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    sget-object v1, Lcom/android/settings/multisimsettings/MultiSimSettingsConstants;->PREFERRED_SUBSCRIPTION_LISTS:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eq p1, v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entriesPrompt:[Ljava/lang/CharSequence;

    .line 321
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entries:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getPreferredSubscription(I)I
    .locals 2
    .param p1, "listType"    # I

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "preferredSubscription":I
    sparse-switch p1, :sswitch_data_0

    .line 294
    :goto_0
    return v0

    .line 283
    :sswitch_0
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->isPromptEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    .line 285
    :goto_1
    goto :goto_0

    .line 283
    :cond_0
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v0

    goto :goto_1

    .line 287
    :sswitch_1
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->isSMSPromptEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    .line 289
    :goto_2
    goto :goto_0

    .line 287
    :cond_1
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getSMSSubscription()I

    move-result v0

    goto :goto_2

    .line 291
    :sswitch_2
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v0

    goto :goto_0

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

.method private handlePreferredSubscriptionChanged()V
    .locals 4

    .prologue
    .line 247
    const-string v1, "PreferredSubscriptionListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default subscription changed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mType:I

    invoke-direct {p0, v1}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->getPreferredSubscription(I)I

    move-result v0

    .line 249
    .local v0, "preferredSubscription":I
    iget v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mPreferredSubscription:I

    if-ne v0, v1, :cond_0

    .line 251
    const-string v1, "PreferredSubscriptionListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set default subscription fails on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setValue(Ljava/lang/String;)V

    .line 260
    return-void

    .line 253
    :cond_0
    iput v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mPreferredSubscription:I

    .line 255
    const-string v1, "PreferredSubscriptionListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now default subscription is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mPreferredSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mPreferredSubscription:I

    invoke-direct {p0, v1}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->getMultiSimName(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initEntries()V
    .locals 6

    .prologue
    .line 104
    iget v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entries:[Ljava/lang/CharSequence;

    .line 105
    iget v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entryValues:[Ljava/lang/CharSequence;

    .line 106
    iget v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->summaries:[Ljava/lang/CharSequence;

    .line 107
    iget v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entriesPrompt:[Ljava/lang/CharSequence;

    .line 108
    iget v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entryValuesPrompt:[Ljava/lang/CharSequence;

    .line 109
    iget v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->summariesPrompt:[Ljava/lang/CharSequence;

    .line 111
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 112
    .local v1, "subString":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 114
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entryValues:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 115
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->summaries:[Ljava/lang/CharSequence;

    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 117
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entriesPrompt:[Ljava/lang/CharSequence;

    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 118
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entryValuesPrompt:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 119
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->summariesPrompt:[Ljava/lang/CharSequence;

    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entriesPrompt:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    iget-object v4, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b072d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 122
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entryValuesPrompt:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    iget v4, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 123
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->summariesPrompt:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    iget-object v4, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b072e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 124
    return-void
.end method

.method private setPreferredSubscription(II)V
    .locals 4
    .param p1, "listType"    # I
    .param p2, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 340
    sparse-switch p1, :sswitch_data_0

    .line 371
    const-string v1, "PreferredSubscriptionListPreference"

    const-string v2, "Not avaliable list type can be processed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-void

    .line 343
    :sswitch_0
    iget v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    if-ne p2, v1, :cond_0

    .line 344
    invoke-static {v2}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 349
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->handlePreferredSubscriptionChanged()V

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 347
    invoke-static {p2}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    goto :goto_1

    .line 354
    :sswitch_1
    iget v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    if-ne p2, v1, :cond_1

    .line 355
    invoke-static {v2}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setSMSPromptEnabled(Z)V

    .line 360
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->handlePreferredSubscriptionChanged()V

    goto :goto_0

    .line 357
    :cond_1
    invoke-static {v3}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setSMSPromptEnabled(Z)V

    .line 358
    invoke-static {p2}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setSMSSubscription(I)V

    goto :goto_2

    .line 364
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mMultiSimHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, "setDdsMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->subManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v1, p2, v0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    goto :goto_0

    .line 340
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

.method private updateEntries()V
    .locals 6

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 134
    invoke-direct {p0, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->getMultiSimName(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 135
    .local v1, "subString":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entries:[Ljava/lang/CharSequence;

    aput-object v1, v2, v0

    .line 136
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entryValues:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 137
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->summaries:[Ljava/lang/CharSequence;

    aput-object v1, v2, v0

    .line 139
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entriesPrompt:[Ljava/lang/CharSequence;

    aput-object v1, v2, v0

    .line 140
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entryValuesPrompt:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 141
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->summariesPrompt:[Ljava/lang/CharSequence;

    aput-object v1, v2, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "subString":Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entriesPrompt:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    iget-object v4, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b072d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 144
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->entryValuesPrompt:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    iget v4, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 145
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->summariesPrompt:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mNumPhones:I

    iget-object v4, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b072e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 146
    return-void
.end method

.method private updatePreferenceState()V
    .locals 5

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "isEnabled":Z
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 265
    .local v1, "isOn":Z
    if-nez v1, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->subManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v2}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 268
    const/4 v0, 0x1

    .line 273
    :cond_0
    const-string v2, "PreferredSubscriptionListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setEnabled(Z)V

    .line 275
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "preferredSubscription":I
    const-string v1, "PreferredSubscriptionListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mPreferredSubscription:I

    if-ne v0, v1, :cond_0

    .line 182
    const-string v1, "PreferredSubscriptionListPreference"

    const-string v2, "preferred subscription not changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const-string v1, "PreferredSubscriptionListPreference"

    const-string v2, "error! airplane is on"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_1
    iget v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mType:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setPreferredSubscription(II)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0, p0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    iget v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mType:I

    iget-object v1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mMultiSimHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setType(ILandroid/os/Handler;)V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->updatePreferenceState()V

    .line 167
    iget v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mPreferredSubscription:I

    invoke-direct {p0, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->getMultiSimName(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public setType(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "listType"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 150
    iput p1, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mType:I

    .line 151
    iput-object p2, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mMultiSimHandler:Landroid/os/Handler;

    .line 153
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->updateEntries()V

    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->getPreferredSubscription(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mPreferredSubscription:I

    .line 156
    iget v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mPreferredSubscription:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setValue(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->getEntityValues(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->getMultiSimNamesFromRes(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 160
    iget v0, p0, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->mPreferredSubscription:I

    invoke-direct {p0, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->getMultiSimName(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/PreferredSubscriptionListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method
