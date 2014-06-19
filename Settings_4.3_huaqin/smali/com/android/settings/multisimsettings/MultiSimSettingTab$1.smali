.class Lcom/android/settings/multisimsettings/MultiSimSettingTab$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimSettingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisimsettings/MultiSimSettingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisimsettings/MultiSimSettingTab;


# direct methods
.method constructor <init>(Lcom/android/settings/multisimsettings/MultiSimSettingTab;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSettingTab;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.settings.SUBNAME_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "subscription"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, "subScription":I
    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSettingTab;

    # invokes: Lcom/android/settings/multisimsettings/MultiSimSettingTab;->handleSimNameChanged(I)V
    invoke-static {v2, v1}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->access$000(Lcom/android/settings/multisimsettings/MultiSimSettingTab;I)V

    .line 83
    .end local v1    # "subScription":I
    :cond_0
    return-void
.end method
