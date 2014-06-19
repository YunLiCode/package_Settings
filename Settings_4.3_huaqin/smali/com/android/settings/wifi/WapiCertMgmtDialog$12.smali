.class Lcom/android/settings/wifi/WapiCertMgmtDialog$12;
.super Ljava/lang/Object;
.source "WapiCertMgmtDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WapiCertMgmtDialog;->handleInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WapiCertMgmtDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WapiCertMgmtDialog;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog$12;->this$0:Lcom/android/settings/wifi/WapiCertMgmtDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog$12;->this$0:Lcom/android/settings/wifi/WapiCertMgmtDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog$12;->this$0:Lcom/android/settings/wifi/WapiCertMgmtDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 301
    :cond_0
    return-void
.end method
