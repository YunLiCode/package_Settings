.class public Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mIsVisible:Z

.field private mLastProgress:I

.field private mOriginalVolume:I

.field public mProfileIsActive:Z

.field public mRingtone:Landroid/media/Ringtone;

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field public mSystemVolume:I

.field final synthetic this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;


# direct methods
.method public constructor <init>(Lcom/yeptelecom/audioprofile/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I

    .prologue
    const/4 v1, -0x1

    .line 504
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 484
    iput v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    .line 485
    iput v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    .line 486
    iput v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mProfileIsActive:Z

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mIsVisible:Z

    .line 505
    iput-object p2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 507
    iput p4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 508
    iput-object p3, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 510
    invoke-direct {p0, p3}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;)V

    .line 511
    return-void
.end method

.method private initSeekBar(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    .line 520
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 522
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    .line 523
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get Original SYSTEM Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    .line 528
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get Original Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mProfileIsActive:Z

    .line 536
    iget-boolean v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v0, :cond_0

    .line 537
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    if-eq v0, v1, :cond_0

    .line 538
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " original Volume to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    .line 544
    :cond_0
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 545
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 546
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 548
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v3, :cond_3

    .line 549
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 562
    :cond_1
    :goto_0
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-eq v0, v4, :cond_6

    .line 563
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 564
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 570
    :cond_2
    :goto_1
    return-void

    .line 551
    :cond_3
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v4, :cond_4

    .line 552
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 554
    :cond_4
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 555
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 556
    :cond_5
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 558
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 568
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto :goto_1
.end method

.method private isSilentProfileActive()Z
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sample()V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    invoke-virtual {v0, p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->onSampleStarting(Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;)V

    .line 836
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sample, set system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVolume(IIZ)V

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 842
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " play sample"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 845
    :cond_1
    return-void
.end method

.method private setVolume(IIZ)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "flag"    # Z

    .prologue
    const/4 v2, 0x0

    .line 732
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 734
    if-eqz p3, :cond_0

    .line 735
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 737
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 751
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$500(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/yeptelecom/settings/ext/IAudioProfileExt;->setRingerVolume(Landroid/media/AudioManager;I)V

    goto :goto_0

    .line 744
    :cond_1
    if-eqz p3, :cond_2

    .line 745
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$500(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/yeptelecom/settings/ext/IAudioProfileExt;->setVolume(Landroid/media/AudioManager;II)V

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 873
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 874
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 875
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mIsVisible:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    .line 612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 785
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : fromTouch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 788
    const/4 p2, 0x1

    .line 790
    :cond_0
    iput p2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 792
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 794
    if-nez p3, :cond_1

    .line 798
    :goto_0
    return-void

    .line 797
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;)V
    .locals 3
    .param p1, "volumeStore"    # Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    .prologue
    .line 901
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState() / volumeStore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget v0, p1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 903
    iget v0, p1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 904
    iget v0, p1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    .line 905
    iget v0, p1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    .line 906
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 908
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;)V
    .locals 3
    .param p1, "volumeStore"    # Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    .prologue
    .line 885
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState() / volumeStore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 887
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    .line 888
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    .line 889
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    .line 891
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 771
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->sample()V

    .line 821
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 808
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 809
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 620
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume >>>: mLastProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    .line 623
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get Original SYSTEM Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    if-eq v0, v1, :cond_1

    .line 627
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    .line 629
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get Original Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mProfileIsActive:Z

    .line 637
    iget-boolean v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v0, :cond_0

    .line 638
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    if-eq v0, v1, :cond_0

    .line 639
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " original Volume to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    .line 645
    :cond_0
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 646
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 650
    :cond_1
    return-void
.end method

.method public revertVolume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 657
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " revert Last Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 663
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    iget v3, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Active, Revert system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-direct {p0, v0, v1, v4}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVolume(IIZ)V

    .line 682
    :cond_1
    :goto_0
    return-void

    .line 675
    :cond_2
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 676
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not Active, Revert system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-direct {p0, v0, v1, v4}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVolume(IIZ)V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->sample()V

    .line 828
    return-void
.end method

.method public saveVolume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 688
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Save Last Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 691
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    iget v3, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$200(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$400(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Active, save system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v0, v1, v4}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVolume(IIZ)V

    .line 709
    :cond_1
    :goto_0
    return-void

    .line 701
    :cond_2
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not Active, Revert system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-direct {p0, v0, v1, v4}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVolume(IIZ)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mIsVisible:Z

    .line 580
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 596
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 597
    iput-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 598
    iput-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 599
    return-void
.end method

.method public stopSample()V
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 852
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stop sample"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 855
    :cond_0
    return-void
.end method
