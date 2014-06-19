.class Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener$1;
.super Ljava/lang/Object;
.source "MultiSimConfiguration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;


# direct methods
.method constructor <init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener$1;->this$1:Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 121
    return-void
.end method
