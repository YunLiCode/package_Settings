.class Lcom/android/settings/CheckPasswordActivity$2;
.super Ljava/util/TimerTask;
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
    .line 71
    iput-object p1, p0, Lcom/android/settings/CheckPasswordActivity$2;->this$0:Lcom/android/settings/CheckPasswordActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 76
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 77
    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity$2;->this$0:Lcom/android/settings/CheckPasswordActivity;

    iget-object v1, v1, Lcom/android/settings/CheckPasswordActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void
.end method
