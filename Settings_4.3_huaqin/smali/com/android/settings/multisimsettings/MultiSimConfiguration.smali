.class public Lcom/android/settings/multisimsettings/MultiSimConfiguration;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimConfiguration.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;,
        Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;
    }
.end annotation


# instance fields
.field private mCallSetting:Landroid/preference/PreferenceScreen;

.field private mChangeCount:I

.field private mChangeStartPos:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNamePreference:Landroid/preference/EditTextPreference;

.field private mNetworkSetting:Landroid/preference/PreferenceScreen;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mIntentFilter:Landroid/content/IntentFilter;

    .line 93
    new-instance v0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$1;

    invoke-direct {v0, p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration$1;-><init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)V

    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/multisimsettings/MultiSimConfiguration;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->setScreenState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/multisimsettings/MultiSimConfiguration;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCharacterVisualLength(Ljava/lang/String;I)I
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 326
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 327
    .local v0, "cp":I
    if-ltz v0, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 328
    const/4 v1, 0x1

    .line 330
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 246
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b072e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSubActivated()Z
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x5

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private limitTextSize(Ljava/lang/String;)V
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v10, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 281
    .local v3, "et":Landroid/widget/EditText;
    if-eqz v3, :cond_4

    .line 282
    const/4 v9, 0x0

    .line 283
    .local v9, "wholeLen":I
    const/4 v6, 0x0

    .line 285
    .local v6, "i":I
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 286
    invoke-direct {p0, p1, v6}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getCharacterVisualLength(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v9, v10

    .line 285
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 290
    :cond_0
    const/4 v10, 0x6

    if-le v9, v10, :cond_4

    .line 291
    add-int/lit8 v2, v9, -0x6

    .line 293
    .local v2, "cutNum":I
    iget v10, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mChangeStartPos:I

    iget v11, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mChangeCount:I

    add-int/2addr v10, v11

    add-int/lit8 v0, v10, -0x1

    .line 294
    .local v0, "changeEndPos":I
    const/4 v1, 0x0

    .line 295
    .local v1, "cutLen":I
    move v6, v0

    :goto_1
    if-ltz v6, :cond_1

    .line 296
    invoke-direct {p0, p1, v6}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getCharacterVisualLength(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v1, v10

    .line 297
    if-lt v1, v2, :cond_5

    .line 302
    :cond_1
    move v5, v6

    .line 304
    .local v5, "headStrEndPos":I
    const-string v4, ""

    .line 306
    .local v4, "headStr":Ljava/lang/String;
    const-string v7, ""

    .line 307
    .local v7, "rearStr":Ljava/lang/String;
    if-lez v5, :cond_2

    .line 309
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 311
    :cond_2
    iget v10, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mChangeStartPos:I

    iget v11, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mChangeCount:I

    add-int v8, v10, v11

    .line 312
    .local v8, "rearStrStartPos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_3

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 317
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 322
    .end local v0    # "changeEndPos":I
    .end local v1    # "cutLen":I
    .end local v2    # "cutNum":I
    .end local v4    # "headStr":Ljava/lang/String;
    .end local v5    # "headStrEndPos":I
    .end local v6    # "i":I
    .end local v7    # "rearStr":Ljava/lang/String;
    .end local v8    # "rearStrStartPos":I
    .end local v9    # "wholeLen":I
    :cond_4
    return-void

    .line 295
    .restart local v0    # "changeEndPos":I
    .restart local v1    # "cutLen":I
    .restart local v2    # "cutNum":I
    .restart local v6    # "i":I
    .restart local v9    # "wholeLen":I
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 335
    const-string v0, "MultiSimConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MultiSimConfiguration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method private setScreenState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mCallSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->isSubActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mCallSetting:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->isSubActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->limitTextSize(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 257
    .local v0, "d":Landroid/app/Dialog;
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 260
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0    # "d":Landroid/app/Dialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    :cond_0
    return-void

    .line 260
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 268
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 167
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const v4, 0x7f05001a

    invoke-virtual {p0, v4}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->addPreferencesFromResource(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 173
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "subscription"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    .line 175
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v4, v6}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    const-string v4, "sim_name_key"

    invoke-virtual {p0, v4}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    .line 178
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    const v6, 0x7f0b07b1

    invoke-virtual {v4, v6}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 179
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    iget v6, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-direct {p0, v6}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    new-instance v6, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;

    invoke-direct {v6, p0, v7}, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;-><init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration;Lcom/android/settings/multisimsettings/MultiSimConfiguration$1;)V

    invoke-virtual {v4, v6}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    new-instance v6, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;

    invoke-direct {v6, p0, v7}, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;-><init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration;Lcom/android/settings/multisimsettings/MultiSimConfiguration$1;)V

    invoke-virtual {v4, v6}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 182
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 183
    .local v2, "et":Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 186
    .local v1, "d":Landroid/app/Dialog;
    instance-of v4, v1, Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 187
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1    # "d":Landroid/app/Dialog;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 190
    .local v0, "b":Landroid/widget/Button;
    const-string v4, ""

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    .end local v0    # "b":Landroid/widget/Button;
    :cond_0
    const-string v4, "mobile_network_key"

    invoke-virtual {p0, v4}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    .line 196
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "PACKAGE"

    const-string v6, "com.android.phone"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TARGET_CLASS"

    const-string v6, "com.android.phone.MSimMobileNetworkSubSettings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "subscription"

    iget v6, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v4, "call_setting_key"

    invoke-virtual {p0, v4}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mCallSetting:Landroid/preference/PreferenceScreen;

    .line 203
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mCallSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "PACKAGE"

    const-string v6, "com.android.phone"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TARGET_CLASS"

    const-string v6, "com.android.phone.MSimCallFeaturesSubSetting"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "subscription"

    iget v6, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Title"

    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b078f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    return-void

    .restart local v0    # "b":Landroid/widget/Button;
    :cond_1
    move v4, v5

    .line 190
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 221
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->setScreenState()V

    .line 217
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 273
    iput p2, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mChangeStartPos:I

    .line 275
    iput p4, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mChangeCount:I

    .line 276
    return-void
.end method
