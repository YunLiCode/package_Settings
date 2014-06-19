.class Lcom/android/settings/DataEnabler$2;
.super Landroid/database/ContentObserver;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/DataEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/DataEnabler;->access$200(Lcom/android/settings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 174
    return-void
.end method
