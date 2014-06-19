.class Lcom/android/settings/ScreenColorSettings$PPServiceConnection;
.super Ljava/lang/Object;
.source "ScreenColorSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ScreenColorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ScreenColorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ScreenColorSettings;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ScreenColorSettings;Lcom/android/settings/ScreenColorSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/ScreenColorSettings;
    .param p2, "x1"    # Lcom/android/settings/ScreenColorSettings$1;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;-><init>(Lcom/android/settings/ScreenColorSettings;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    invoke-static {p2}, Lcom/android/display/IPPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/display/IPPService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    .line 224
    const-string v1, "ScreenColorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    iget-object v3, v3, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v1}, Lcom/android/display/IPPService;->startPP()Z

    .line 228
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/ScreenColorSettings;->restoreSavedHSCI(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/ScreenColorSettings;->access$100(Lcom/android/settings/ScreenColorSettings;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenColorSettings"

    const-string v2, "startPP exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    if-eqz v1, :cond_0

    .line 241
    :try_start_0
    const-string v1, "ScreenColorSettings"

    const-string v2, "stopPP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v1}, Lcom/android/display/IPPService;->stopPP()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/android/settings/ScreenColorSettings;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    .line 248
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenColorSettings"

    const-string v2, "stopPP exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
