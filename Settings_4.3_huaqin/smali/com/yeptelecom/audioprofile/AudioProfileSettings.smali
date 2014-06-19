.class public Lcom/yeptelecom/audioprofile/AudioProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AudioProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;
    }
.end annotation


# instance fields
.field public mCurrentDialogId:I

.field private mCustomParent:Landroid/preference/PreferenceCategory;

.field private mCustomerExist:Z

.field private mCustomerProfilePrefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yeptelecom/audioprofile/AudioProfilePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKey:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorType:I

.field private mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

.field private mGeneralPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

.field private mMenuId:I

.field private mPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

.field private mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 95
    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 104
    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 112
    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileSettings$1;

    invoke-direct {v0, p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings$1;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    .line 574
    return-void
.end method

.method static synthetic access$000(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/AudioProfileSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/AudioProfileSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)Lcom/yeptelecom/audioprofile/AudioProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/AudioProfileSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/AudioProfileSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    .locals 6
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 203
    .local v2, "scenario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    const/4 v1, 0x0

    .line 204
    .local v1, "preference":Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    new-instance v1, Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    .end local v1    # "preference":Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;)V

    .line 206
    .restart local v1    # "preference":Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    invoke-virtual {v1, p2}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->setProfileKey(Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:Add into profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    if-nez v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v3, p2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 219
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    .line 220
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private dynamicshowSummary()V
    .locals 3

    .prologue
    .line 244
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    invoke-virtual {v2}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 245
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    .line 246
    .local v1, "pref":Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto :goto_0

    .line 248
    .end local v1    # "pref":Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    :cond_0
    return-void
.end method

.method private updateActivePreference()V
    .locals 5

    .prologue
    .line 230
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "key":Ljava/lang/String;
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfileSettings:key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    .line 234
    .local v0, "activePreference":Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->setChecked()V

    .line 237
    :cond_1
    return-void
.end method

.method private updatePreferenceHierarchy()V
    .locals 7

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 169
    .local v3, "root":Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getAllProfileKeys()Ljava/util/List;

    move-result-object v2

    .line 170
    .local v2, "profileKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 171
    const-string v4, "Settings/AudioP"

    const-string v5, "AudioProfileSettings:profileKey size is 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v4, "Settings/AudioP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioProfileSettings:profileKey size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 177
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 178
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    goto :goto_0

    .line 181
    :cond_2
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 182
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 183
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    .local v1, "profileKey":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 502
    const-string v3, "Settings/AudioP"

    const-string v4, "onClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 505
    const-string v3, "Settings/AudioP"

    const-string v4, "return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    packed-switch v3, :pswitch_data_0

    .line 568
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:unrecongnized dialog id is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    :pswitch_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-nez v3, :cond_2

    const-string v2, ""

    .line 512
    .local v2, "title":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 513
    iput v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 514
    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 510
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 515
    .restart local v2    # "title":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->isNameExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 516
    iput v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 517
    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 519
    :cond_4
    iget v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v7, :cond_6

    .line 520
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->addProfile()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "profileKey":Ljava/lang/String;
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:add profile Key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    move-result-object v0

    .line 526
    .local v0, "activePreference":Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    if-nez v0, :cond_5

    .line 527
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 528
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->setChecked()V

    goto/16 :goto_0

    .line 530
    :cond_5
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->setChecked()V

    .line 532
    invoke-virtual {v0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto/16 :goto_0

    .line 535
    .end local v0    # "activePreference":Lcom/yeptelecom/audioprofile/AudioProfilePreference;
    .end local v1    # "profileKey":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    invoke-virtual {v3, v2, v7}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 540
    .end local v2    # "title":Ljava/lang/String;
    :pswitch_1
    iget v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mErrorType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 541
    invoke-virtual {p0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 545
    :pswitch_2
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 546
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->setChecked()V

    .line 549
    :cond_7
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->deleteProfile(Ljava/lang/String;)Z

    .line 550
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 551
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 552
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 554
    iput-boolean v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    goto/16 :goto_0

    .line 558
    :pswitch_3
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_8

    .line 559
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 560
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 561
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 562
    iput-boolean v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 564
    :cond_8
    const-string v3, "predefine"

    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 565
    new-instance v3, Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileSettings;Lcom/yeptelecom/audioprofile/AudioProfileSettings$1;)V

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const-string v1, "Settings/AudioP"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    move-result-object v1

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    .line 137
    const-string v1, "audioprofile"

    invoke-virtual {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    .line 139
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 140
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 143
    :cond_0
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->addPreferencesFromResource(I)V

    .line 144
    const-string v1, "custom"

    invoke-virtual {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yep_audioprofile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    .line 150
    new-instance v1, Lcom/yeptelecom/audioprofile/AudioProfileSettings$2;

    invoke-direct {v1, p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings$2;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)V

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 158
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->setHasOptionsMenu(Z)V

    .line 159
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 274
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;I)V

    .line 276
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 288
    const-string v2, "AudioProfileSettings:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick() / key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-static {v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 292
    .local v1, "scenario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 255
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfileSettings:onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 258
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->updatePreferenceHierarchy()V

    .line 260
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->dynamicshowSummary()V

    .line 261
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->updateActivePreference()V

    .line 263
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;I)V

    .line 266
    return-void
.end method
