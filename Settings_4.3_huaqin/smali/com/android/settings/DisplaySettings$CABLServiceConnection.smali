.class Lcom/android/settings/DisplaySettings$CABLServiceConnection;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CABLServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$CABLServiceConnection;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DisplaySettings;Lcom/android/settings/DisplaySettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/DisplaySettings;
    .param p2, "x1"    # Lcom/android/settings/DisplaySettings$1;

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/android/settings/DisplaySettings$CABLServiceConnection;-><init>(Lcom/android/settings/DisplaySettings;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 536
    invoke-static {p2}, Lcom/android/cabl/ICABLService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/cabl/ICABLService;

    move-result-object v0

    # setter for: Lcom/android/settings/DisplaySettings;->mCABLService:Lcom/android/cabl/ICABLService;
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$402(Lcom/android/cabl/ICABLService;)Lcom/android/cabl/ICABLService;

    .line 537
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/settings/DisplaySettings;->mCABLService:Lcom/android/cabl/ICABLService;
    invoke-static {}, Lcom/android/settings/DisplaySettings;->access$400()Lcom/android/cabl/ICABLService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$CABLServiceConnection;->this$0:Lcom/android/settings/DisplaySettings;

    # invokes: Lcom/android/settings/DisplaySettings;->setCABLStateOnResume()V
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$500(Lcom/android/settings/DisplaySettings;)V

    .line 540
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 544
    # getter for: Lcom/android/settings/DisplaySettings;->mCABLService:Lcom/android/cabl/ICABLService;
    invoke-static {}, Lcom/android/settings/DisplaySettings;->access$400()Lcom/android/cabl/ICABLService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 547
    :try_start_0
    const-string v1, "DisplaySettings"

    const-string v2, "stopListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    # getter for: Lcom/android/settings/DisplaySettings;->mCABLService:Lcom/android/cabl/ICABLService;
    invoke-static {}, Lcom/android/settings/DisplaySettings;->access$400()Lcom/android/cabl/ICABLService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/cabl/ICABLService;->stopListener()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    :goto_0
    const/4 v1, 0x0

    # setter for: Lcom/android/settings/DisplaySettings;->mCABLService:Lcom/android/cabl/ICABLService;
    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$402(Lcom/android/cabl/ICABLService;)Lcom/android/cabl/ICABLService;

    .line 555
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "stopListener, exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
