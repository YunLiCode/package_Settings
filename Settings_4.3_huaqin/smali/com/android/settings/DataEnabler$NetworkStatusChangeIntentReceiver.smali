.class Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatusChangeIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/DataEnabler;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/settings/DataEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DataEnabler;Lcom/android/settings/DataEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/DataEnabler;
    .param p2, "x1"    # Lcom/android/settings/DataEnabler$1;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;-><init>(Lcom/android/settings/DataEnabler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "actionStr":Ljava/lang/String;
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/settings/DataEnabler;

    iget-object v2, p0, Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/settings/DataEnabler;->access$102(Lcom/android/settings/DataEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 163
    iget-object v1, p0, Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$200(Lcom/android/settings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$100(Lcom/android/settings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/settings/DataEnabler$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$200(Lcom/android/settings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
