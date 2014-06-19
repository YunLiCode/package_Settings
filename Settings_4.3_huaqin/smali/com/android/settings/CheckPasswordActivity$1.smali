.class Lcom/android/settings/CheckPasswordActivity$1;
.super Landroid/os/Handler;
.source "CheckPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CheckPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CheckPasswordActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/CheckPasswordActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    return-void

    .line 49
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->currentTime:J
    invoke-static {v4}, Lcom/android/settings/CheckPasswordActivity;->access$100(Lcom/android/settings/CheckPasswordActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    # setter for: Lcom/android/settings/CheckPasswordActivity;->mTime:J
    invoke-static {v1, v2, v3}, Lcom/android/settings/CheckPasswordActivity;->access$002(Lcom/android/settings/CheckPasswordActivity;J)J

    .line 50
    const-string v1, "CheckPasswordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTime :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->mTime:J
    invoke-static {v3}, Lcom/android/settings/CheckPasswordActivity;->access$000(Lcom/android/settings/CheckPasswordActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->mTime:J
    invoke-static {v1}, Lcom/android/settings/CheckPasswordActivity;->access$000(Lcom/android/settings/CheckPasswordActivity;)J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # setter for: Lcom/android/settings/CheckPasswordActivity;->mCount:I
    invoke-static {v1, v10}, Lcom/android/settings/CheckPasswordActivity;->access$202(Lcom/android/settings/CheckPasswordActivity;I)I

    .line 53
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # setter for: Lcom/android/settings/CheckPasswordActivity;->currentTime:J
    invoke-static {v1, v7, v8}, Lcom/android/settings/CheckPasswordActivity;->access$102(Lcom/android/settings/CheckPasswordActivity;J)J

    .line 54
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # setter for: Lcom/android/settings/CheckPasswordActivity;->mTime:J
    invoke-static {v1, v7, v8}, Lcom/android/settings/CheckPasswordActivity;->access$002(Lcom/android/settings/CheckPasswordActivity;J)J

    .line 55
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/CheckPasswordActivity;->access$300(Lcom/android/settings/CheckPasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 56
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->mButton_reset:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/CheckPasswordActivity;->access$400(Lcom/android/settings/CheckPasswordActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->mButton_ok:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/CheckPasswordActivity;->access$500(Lcom/android/settings/CheckPasswordActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->timer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/settings/CheckPasswordActivity;->access$600(Lcom/android/settings/CheckPasswordActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 59
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    invoke-virtual {v1}, Lcom/android/settings/CheckPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 60
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/CheckPasswordActivity;->access$300(Lcom/android/settings/CheckPasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->mCount:I
    invoke-static {v4}, Lcom/android/settings/CheckPasswordActivity;->access$200(Lcom/android/settings/CheckPasswordActivity;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 62
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    invoke-virtual {v1}, Lcom/android/settings/CheckPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 63
    .restart local v0    # "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/CheckPasswordActivity;->access$300(Lcom/android/settings/CheckPasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-wide/16 v4, 0x3c

    iget-object v6, p0, Lcom/android/settings/CheckPasswordActivity$1;->this$0:Lcom/android/settings/CheckPasswordActivity;

    # getter for: Lcom/android/settings/CheckPasswordActivity;->mTime:J
    invoke-static {v6}, Lcom/android/settings/CheckPasswordActivity;->access$000(Lcom/android/settings/CheckPasswordActivity;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
