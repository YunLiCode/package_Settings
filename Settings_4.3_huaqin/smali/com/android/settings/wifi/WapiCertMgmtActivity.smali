.class public Lcom/android/settings/wifi/WapiCertMgmtActivity;
.super Landroid/app/Activity;
.source "WapiCertMgmtActivity.java"


# instance fields
.field public mWapiDialog:Lcom/android/settings/wifi/WapiCertMgmtDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/settings/wifi/WapiCertMgmtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 18
    .local v1, "sendIntent":Landroid/content/Intent;
    new-instance v3, Lcom/android/settings/wifi/WapiCertMgmtDialog;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WapiCertMgmtActivity;->mWapiDialog:Lcom/android/settings/wifi/WapiCertMgmtDialog;

    .line 19
    const-string v3, "mode"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 20
    .local v0, "mode":I
    const-string v3, "titleId"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 21
    .local v2, "titleId":I
    iget-object v3, p0, Lcom/android/settings/wifi/WapiCertMgmtActivity;->mWapiDialog:Lcom/android/settings/wifi/WapiCertMgmtDialog;

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->setMode(I)V

    .line 22
    iget-object v3, p0, Lcom/android/settings/wifi/WapiCertMgmtActivity;->mWapiDialog:Lcom/android/settings/wifi/WapiCertMgmtDialog;

    invoke-virtual {v3, v2}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->setTitle(I)V

    .line 23
    iget-object v3, p0, Lcom/android/settings/wifi/WapiCertMgmtActivity;->mWapiDialog:Lcom/android/settings/wifi/WapiCertMgmtDialog;

    invoke-virtual {v3, p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 24
    iget-object v3, p0, Lcom/android/settings/wifi/WapiCertMgmtActivity;->mWapiDialog:Lcom/android/settings/wifi/WapiCertMgmtDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->show()V

    .line 25
    return-void
.end method
