.class public Lcom/yeptelecom/audioprofile/AudioProfilePreference;
.super Landroid/preference/Preference;
.source "AudioProfilePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static sActiveKey:Ljava/lang/String;

.field private static sCurrentChecked:Landroid/widget/CompoundButton;


# instance fields
.field private mCheckboxButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

.field private mImageView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKey:Ljava/lang/String;

.field private mPreferenceSummary:Ljava/lang/String;

.field private mPreferenceTitle:Ljava/lang/String;

.field private mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

.field private mSummary:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 64
    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 73
    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mImageView:Landroid/widget/ImageView;

    .line 96
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    .line 98
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 106
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 110
    :cond_1
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    .line 113
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/android/settings/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/yeptelecom/audioprofile/AudioProfilePreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;
    .locals 0
    .param p0, "x0"    # Landroid/widget/CompoundButton;

    .prologue
    .line 57
    sput-object p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yeptelecom/audioprofile/AudioProfilePreference;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yeptelecom/audioprofile/AudioProfilePreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yeptelecom/audioprofile/AudioProfilePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    return-object v0
.end method


# virtual methods
.method public dynamicShowSummary()V
    .locals 5

    .prologue
    .line 235
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfilePreference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dynamicShowSummary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 239
    .local v0, "scenario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 245
    .local v1, "vibrationEnabled":Z
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfilePreference:vibrationEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz v1, :cond_2

    .line 248
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0b07f4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .end local v0    # "scenario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    .end local v1    # "vibrationEnabled":Z
    :cond_1
    :goto_0
    return-void

    .line 251
    .restart local v0    # "scenario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    .restart local v1    # "vibrationEnabled":Z
    :cond_2
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0b07f3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    .end local v1    # "vibrationEnabled":Z
    :cond_3
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 270
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-eqz p2, :cond_1

    .line 273
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 276
    :cond_0
    sput-object p1, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 278
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 280
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    const v2, 0x7f04000d

    invoke-interface {v1, v2}, Lcom/yeptelecom/settings/ext/IAudioProfileExt;->createView(I)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    const v2, 0x7f080013

    invoke-interface {v1, v2}, Lcom/yeptelecom/settings/ext/IAudioProfileExt;->getPrefRadioButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 167
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    const v2, 0x7f080014

    invoke-interface {v1, v2}, Lcom/yeptelecom/settings/ext/IAudioProfileExt;->getPreferenceTitle(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    .line 168
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    const v2, 0x7f080015

    invoke-interface {v1, v2}, Lcom/yeptelecom/settings/ext/IAudioProfileExt;->getPreferenceSummary(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    .line 171
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    const v2, 0x7f080016

    invoke-interface {v1, v2}, Lcom/yeptelecom/settings/ext/IAudioProfileExt;->getPrefImageView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mImageView:Landroid/widget/ImageView;

    .line 172
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/yeptelecom/audioprofile/AudioProfilePreference$1;

    invoke-direct {v2, p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference$1;-><init>(Lcom/yeptelecom/audioprofile/AudioProfilePreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/yeptelecom/audioprofile/AudioProfilePreference$2;

    invoke-direct {v2, p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference$2;-><init>(Lcom/yeptelecom/audioprofile/AudioProfilePreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->setChecked()V

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 226
    return-object v0

    .line 221
    :cond_2
    const-string v1, "Settings/AudioP"

    const-string v2, "AudioProfilePreference:PreferenceTitle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setChecked()V
    .locals 3

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 305
    :cond_0
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:setChecked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 307
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 313
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfilePreference:mCheckboxButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setProfileKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->setKey(Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "setToProfile"    # Z

    .prologue
    .line 324
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 325
    if-eqz p2, :cond_0

    .line 326
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :cond_1
    return-void
.end method
