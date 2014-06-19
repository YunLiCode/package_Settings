.class public Lcom/android/settings/yunsettings;
.super Landroid/preference/PreferenceActivity;
.source "yunsettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v0, 0x7f050044

    invoke-virtual {p0, v0}, Lcom/android/settings/yunsettings;->addPreferencesFromResource(I)V

    .line 12
    return-void
.end method
