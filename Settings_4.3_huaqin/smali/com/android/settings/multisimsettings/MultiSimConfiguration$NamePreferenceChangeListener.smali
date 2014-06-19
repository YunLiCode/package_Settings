.class Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;
.super Ljava/lang/Object;
.source "MultiSimConfiguration.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisimsettings/MultiSimConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NamePreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;


# direct methods
.method private constructor <init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration;Lcom/android/settings/multisimsettings/MultiSimConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/multisimsettings/MultiSimConfiguration;
    .param p2, "x1"    # Lcom/android/settings/multisimsettings/MultiSimConfiguration$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;-><init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 107
    const-string v3, "MultiSimConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "multiSimName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    invoke-virtual {v3}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I
    invoke-static {v3}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->access$200(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    aget-object v3, v7, v3

    invoke-static {v6, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "theOtherSimName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b07b2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v6, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener$1;

    invoke-direct {v6, p0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener$1;-><init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;)V

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 150
    :goto_1
    return v5

    .end local v2    # "theOtherSimName":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 109
    goto :goto_0

    .line 125
    .restart local v2    # "theOtherSimName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    invoke-virtual {v3}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I
    invoke-static {v6}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->access$200(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->access$300(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)Landroid/preference/EditTextPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.SUBNAME_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "subscription"

    iget-object v5, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I
    invoke-static {v5}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->access$200(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    invoke-virtual {v3, v0}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v4

    .line 150
    goto :goto_1
.end method
