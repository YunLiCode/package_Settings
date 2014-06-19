.class Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimEnablerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$1100(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->resume()V

    .line 194
    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$1100(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 195
    .local v2, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v1, "b":Landroid/os/Bundle;
    const-string v3, "needDismiss"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 198
    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$1100(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
