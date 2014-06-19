.class Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;
.super Landroid/os/Handler;
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
    .line 129
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # setter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mIsShowingProgressDialog:Z
    invoke-static {v2, v4}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$002(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;Z)Z

    .line 136
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    const-string v3, "receive EVENT_SIM_DEACTIVATE_DONE"

    # invokes: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$100(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$300(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I
    invoke-static {v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$200(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)I

    move-result v3

    invoke-virtual {v2, v3, p0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$400(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    const-string v3, "receive EVENT_SIM_ACTIVATE_DONE"

    # invokes: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$100(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$300(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I
    invoke-static {v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$200(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)I

    move-result v3

    invoke-virtual {v2, v3, p0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->unregisterForSubscriptionActivated(ILandroid/os/Handler;)V

    .line 146
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$400(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # invokes: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->displayAlertDialog()Z
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$500(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # setter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mShowAlertDialog:Z
    invoke-static {v2, v4}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$602(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;Z)Z

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # setter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mActivateSub:Z
    invoke-static {v2, v4}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$702(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;Z)Z

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    const-string v3, "receive EVENT_SET_SUBSCRIPTION_DONE"

    # invokes: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$100(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$300(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V

    .line 157
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 158
    .local v1, "result":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 159
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I
    invoke-static {v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$200(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)I

    move-result v3

    aget-object v3, v1, v3

    # setter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mDialogString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$802(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mDialogString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$800(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mDialogString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$800(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEACTIVATE NOT SUPPORTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # setter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mActivateSub:Z
    invoke-static {v2, v4}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$702(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;Z)Z

    .line 167
    :cond_3
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # invokes: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->handleSetSubscriptionDone()V
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$900(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)V

    .line 169
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$400(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$1000(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    const-string v3, "Broadcast INTENT_SIM_DISABLED"

    # invokes: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$100(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.sim.INTENT_SIM_DISABLED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "Subscription"

    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I
    invoke-static {v3}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$200(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$1000(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
