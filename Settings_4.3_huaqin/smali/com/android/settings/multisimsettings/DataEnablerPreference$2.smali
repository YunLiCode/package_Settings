.class Lcom/android/settings/multisimsettings/DataEnablerPreference$2;
.super Landroid/database/ContentObserver;
.source "DataEnablerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisimsettings/DataEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisimsettings/DataEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/multisimsettings/DataEnablerPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference$2;->this$0:Lcom/android/settings/multisimsettings/DataEnablerPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference$2;->this$0:Lcom/android/settings/multisimsettings/DataEnablerPreference;

    iget-object v1, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference$2;->this$0:Lcom/android/settings/multisimsettings/DataEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/DataEnablerPreference;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->access$100(Lcom/android/settings/multisimsettings/DataEnablerPreference;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->setChecked(Z)V

    .line 124
    return-void
.end method
