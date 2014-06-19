.class public Lcom/example/testviewpagerandtabhost/allsettings;
.super Landroid/preference/PreferenceActivity;
.source "allsettings.java"


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
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/example/testviewpagerandtabhost/allsettings;->addPreferencesFromResource(I)V

    .line 12
    return-void
.end method
