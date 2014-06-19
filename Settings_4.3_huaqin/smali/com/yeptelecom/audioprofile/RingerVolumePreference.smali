.class public Lcom/yeptelecom/audioprofile/RingerVolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;,
        Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;,
        Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;,
        Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

.field private mIsDlgDismissed:Z

.field private mKey:Ljava/lang/String;

.field private final mListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

.field private final mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

.field private mReceiver:Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;

.field private mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 100
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 119
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    .line 127
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 100
    nop

    :array_0
    .array-data 4
        0x7f0800e1
        0x7f0800e9
        0x7f0800e5
        0x7f0800eb
    .end array-data

    .line 106
    :array_1
    .array-data 4
        0x3
        0x5
        0x2
        0x4
    .end array-data

    .line 112
    :array_2
    .array-data 4
        0x7f0800e0
        0x7f0800e4
        0x7f0800e8
        0x7f0800ea
    .end array-data

    .line 119
    :array_3
    .array-data 4
        0x7f02004f
        0x7f02004d
        0x7f02004b
        0x7f020049
    .end array-data

    .line 127
    :array_4
    .array-data 4
        0x7f02004e
        0x7f02004c
        0x7f02004a
        0x7f020048
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mIsDlgDismissed:Z

    .line 1010
    new-instance v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$1;-><init>(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    .line 154
    const-string v0, "Settings/VolPref"

    const-string v1, "RingerVolumePreference()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const v0, 0x7f04005a

    invoke-virtual {p0, v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 156
    const v0, 0x7f02008d

    invoke-virtual {p0, v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->setDialogIcon(I)V

    .line 157
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 159
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    .line 161
    sget-object v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .line 162
    invoke-static {p1}, Lcom/android/settings/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    .line 163
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/settings/ext/IAudioProfileExt;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    return-object v0
.end method

.method static synthetic access$600(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    .local v0, "context":Landroid/content/Context;
    new-instance v9, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;-><init>(Lcom/yeptelecom/audioprofile/RingerVolumePreference;Lcom/yeptelecom/audioprofile/RingerVolumePreference$1;)V

    iput-object v9, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mReceiver:Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;

    .line 177
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v9, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mReceiver:Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mIsDlgDismissed:Z

    .line 182
    const-string v9, "Settings/VolPref"

    const-string v10, "set mIsDlgDismissed to false "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v9, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v9, v9

    if-ge v3, v9, :cond_4

    .line 185
    sget-object v9, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v8, v9, v3

    .line 186
    .local v8, "streamType":I
    iget-object v9, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v8}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v6

    .line 188
    .local v6, "muted":Z
    sget-object v9, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v9, v9, v3

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 190
    .local v5, "imageview":Landroid/widget/ImageView;
    if-eqz v5, :cond_0

    .line 191
    if-eqz v6, :cond_3

    sget-object v9, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v9, v9, v3

    :goto_1
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    :cond_0
    sget-object v9, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v9, v9, v3

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    .line 196
    .local v7, "seekBar":Landroid/widget/SeekBar;
    if-eqz v7, :cond_2

    .line 197
    const/4 v9, 0x2

    if-ne v3, v9, :cond_1

    .line 198
    invoke-virtual {v7}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 200
    :cond_1
    iget-object v9, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    new-instance v10, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    sget-object v11, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v11, v11, v3

    invoke-direct {v10, p0, v0, v7, v11}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;-><init>(Lcom/yeptelecom/audioprofile/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v10, v9, v3

    .line 184
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v7    # "seekBar":Landroid/widget/SeekBar;
    :cond_3
    sget-object v9, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v9, v9, v3

    goto :goto_1

    .line 205
    .end local v5    # "imageview":Landroid/widget/ImageView;
    .end local v6    # "muted":Z
    .end local v8    # "streamType":I
    :cond_4
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 206
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 211
    const v4, 0x7f0800e6

    .line 212
    .local v4, "id":I
    iget-object v9, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVisible(Z)V

    .line 217
    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 219
    .local v2, "hideSection":Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v9, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v10, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;I)V

    .line 223
    return-void

    .line 214
    .end local v2    # "hideSection":Landroid/view/View;
    .end local v4    # "id":I
    :cond_5
    const v4, 0x7f0800e2

    .line 215
    .restart local v4    # "id":I
    iget-object v9, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVisible(Z)V

    goto :goto_2
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v6, 0x0

    .line 328
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 329
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-nez v4, :cond_0

    .line 360
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 333
    .local v3, "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    .end local v3    # "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :cond_1
    if-eqz p1, :cond_3

    .line 336
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 337
    .restart local v3    # "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->saveVolume()V

    .line 339
    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 340
    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->stop()V

    .line 336
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 345
    .end local v3    # "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :cond_3
    const-string v4, "Settings/VolPref"

    const-string v5, "Cacel: Original checked."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 347
    .restart local v3    # "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 349
    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 350
    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->stop()V

    .line 346
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 355
    .end local v3    # "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mIsDlgDismissed:Z

    .line 356
    const-string v4, "Settings/VolPref"

    const-string v5, "set mIsDlgDismissed to true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mReceiver:Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;I)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 275
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-nez v4, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v2

    .line 279
    :cond_1
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKey() / mSeekBarVolumizer ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 282
    .local v0, "isdown":Z
    :goto_1
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    const/4 v5, 0x2

    aget-object v1, v4, v5

    .line 283
    .local v1, "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 284
    packed-switch p2, :pswitch_data_0

    move v2, v3

    .line 296
    goto :goto_0

    .end local v0    # "isdown":Z
    .end local v1    # "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :cond_2
    move v0, v3

    .line 280
    goto :goto_1

    .line 286
    .restart local v0    # "isdown":Z
    .restart local v1    # "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :pswitch_0
    if-eqz v0, :cond_0

    .line 287
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 291
    :pswitch_1
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v1, v2}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 400
    const-string v0, "Settings/VolPref"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 419
    :cond_1
    return-void

    .line 407
    :cond_2
    check-cast p1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;

    .line 408
    invoke-virtual {p1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 409
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 410
    sget-object v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->getVolumeStore(I)[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    move-result-object v1

    .line 412
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 413
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 414
    if-eqz v2, :cond_3

    .line 415
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;)V

    .line 412
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;)V
    .locals 4
    .param p1, "volumizer"    # Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .prologue
    .line 310
    if-nez p1, :cond_1

    .line 318
    :cond_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 314
    .local v3, "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_2

    if-eq v3, p1, :cond_2

    .line 315
    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 313
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 371
    const-string v5, "Settings/VolPref"

    const-string v6, "onSaveInstanceState()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 373
    .local v2, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    .end local v2    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 378
    .restart local v2    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 379
    .local v1, "myState":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-eqz v5, :cond_2

    .line 380
    sget-object v5, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->getVolumeStore(I)[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    move-result-object v4

    .line 382
    .local v4, "volumeStore":[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 383
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 384
    .local v3, "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 385
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;)V

    .line 382
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v3    # "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    .end local v4    # "volumeStore":[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;
    :cond_2
    move-object v2, v1

    .line 389
    goto :goto_0
.end method

.method public revertVolume()V
    .locals 7

    .prologue
    .line 246
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsDlgDismissed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mIsDlgDismissed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mIsDlgDismissed:Z

    if-eqz v4, :cond_1

    .line 260
    :cond_0
    return-void

    .line 250
    :cond_1
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-eqz v4, :cond_0

    .line 251
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 252
    .local v3, "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_2

    .line 256
    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->resume()V

    .line 251
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public stopPlaying()V
    .locals 6

    .prologue
    .line 230
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-eqz v4, :cond_1

    .line 231
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 232
    .local v3, "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    const-string v4, "Settings/VolPref"

    const-string v5, "IsPlaying"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 235
    const-string v4, "Settings/VolPref"

    const-string v5, "stopPlaying"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "arr$":[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "vol":Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method
