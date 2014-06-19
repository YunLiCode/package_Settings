.class Lcom/android/settings/multisimsettings/MultiSimSoundSettings$1;
.super Ljava/lang/Object;
.source "MultiSimSoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 69
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->mRingtonePref:Lcom/android/settings/DefaultRingtonePreference;
    invoke-static {v0}, Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->access$000(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v6, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    .line 74
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->mRingtones:[I
    invoke-static {v0}, Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->access$100(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->mSubscription:I
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->access$200(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)I

    move-result v2

    aget v0, v0, v2

    invoke-static {v6, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 79
    .local v1, "ringtoneUri":Landroid/net/Uri;
    invoke-static {v6, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    .line 80
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->mRingtones:[I
    invoke-static {v0}, Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->access$100(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->mSubscription:I
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->access$200(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)I

    move-result v2

    aget v0, v0, v2

    invoke-static {v6, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 82
    const v0, 0x1040447

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 87
    const v0, 0x1040445

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->access$300(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSoundSettings;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimSoundSettings;->access$300(Lcom/android/settings/multisimsettings/MultiSimSoundSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "summary":Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 91
    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "summary":Ljava/lang/CharSequence;
    :cond_2
    :try_start_0
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 93
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 94
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 97
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method
