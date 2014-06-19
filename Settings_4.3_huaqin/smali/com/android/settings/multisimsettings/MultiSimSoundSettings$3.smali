.class Lcom/android/settings/multisimsettings/MultiSimSoundSettings$3;
.super Landroid/os/Handler;
.source "MultiSimSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisimsettings/MultiSimSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$3;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$3;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->mRingtonePref:Lcom/android/settings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->access$000(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$3;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->mRingtonePref:Lcom/android/settings/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->access$000(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    .end local v0    # "summary":Ljava/lang/String;
    :cond_0
    return-void
.end method
