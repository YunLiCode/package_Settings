.class Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;


# direct methods
.method private constructor <init>(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yeptelecom/audioprofile/RingerVolumePreference;Lcom/yeptelecom/audioprofile/RingerVolumePreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yeptelecom/audioprofile/RingerVolumePreference;
    .param p2, "x1"    # Lcom/yeptelecom/audioprofile/RingerVolumePreference$1;

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;-><init>(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    .line 922
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 924
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 926
    .local v2, "streamType":I
    if-eq v2, v7, :cond_1

    .line 1004
    .end local v2    # "streamType":I
    :cond_0
    :goto_0
    return-void

    .line 929
    .restart local v2    # "streamType":I
    :cond_1
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$600(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v7

    if-eqz v4, :cond_0

    .line 930
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$600(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    .line 931
    .local v1, "seekBar":Landroid/widget/SeekBar;
    if-eqz v1, :cond_0

    .line 934
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$300(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 935
    .local v3, "volume":I
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioManager Volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seekbar progress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 938
    if-ltz v3, :cond_0

    .line 939
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeReceiver;->this$0:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$600(Lcom/yeptelecom/audioprofile/RingerVolumePreference;)[Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v7

    iput v3, v4, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    .line 940
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is SystemVolume Changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
