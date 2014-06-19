.class public Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

.field private mKey:Ljava/lang/String;

.field private final mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

.field private mStreamType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    .line 88
    invoke-static {p1}, Lcom/android/settings/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    .line 89
    return-void
.end method


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 124
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->mStreamType:Ljava/lang/String;

    const-string v1, "RING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->mExt:Lcom/yeptelecom/settings/ext/IAudioProfileExt;

    invoke-interface {v0, p1}, Lcom/yeptelecom/settings/ext/IAudioProfileExt;->setRingtonePickerParams(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    .line 156
    .local v0, "type":I
    const-string v2, "Settings/Rt_Pref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone: type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 159
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "Settings/Rt_Pref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone: uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v1

    .line 159
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 3
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 145
    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setStreamType(Ljava/lang/String;)V
    .locals 0
    .param p1, "streamType"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->mStreamType:Ljava/lang/String;

    .line 109
    return-void
.end method
