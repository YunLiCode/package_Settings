.class Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;
.super Landroid/os/AsyncTask;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/AudioProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yeptelecom/audioprofile/AudioProfileSettings;


# direct methods
.method private constructor <init>(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yeptelecom/audioprofile/AudioProfileSettings;Lcom/yeptelecom/audioprofile/AudioProfileSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yeptelecom/audioprofile/AudioProfileSettings;
    .param p2, "x1"    # Lcom/yeptelecom/audioprofile/AudioProfileSettings$1;

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    .line 586
    const/4 v0, 0x1

    .line 587
    .local v0, "result":I
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileSettings;

    # getter for: Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->access$300(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)Lcom/yeptelecom/audioprofile/AudioProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->reset()V

    .line 588
    const/4 v0, 0x0

    .line 589
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 574
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 600
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileSettings;

    # getter for: Lcom/yeptelecom/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/AudioProfileSettings;->access$400(Lcom/yeptelecom/audioprofile/AudioProfileSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 603
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 574
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileSettings$ResetTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
