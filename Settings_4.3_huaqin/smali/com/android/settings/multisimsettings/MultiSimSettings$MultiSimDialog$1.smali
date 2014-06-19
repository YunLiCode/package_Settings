.class Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog$1;
.super Ljava/lang/Object;
.source "MultiSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog$1;->this$0:Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;

    # invokes: Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->resumeEnabler()V
    invoke-static {v0}, Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;->access$500(Lcom/android/settings/multisimsettings/MultiSimSettings$MultiSimDialog;)V

    .line 463
    return-void
.end method
