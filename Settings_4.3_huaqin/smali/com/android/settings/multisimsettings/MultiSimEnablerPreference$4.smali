.class Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$4;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->setChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$1400(Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;Z)V

    .line 563
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->mHasDisableOneSimCard:Z
    invoke-static {v0}, Lcom/android/settings/multisimsettings/MultiSimEnablerPreference;->access$1602(Z)Z

    .line 564
    return-void
.end method
