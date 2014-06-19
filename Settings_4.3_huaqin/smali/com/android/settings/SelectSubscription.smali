.class public Lcom/android/settings/SelectSubscription;
.super Landroid/app/TabActivity;
.source "SelectSubscription.java"


# instance fields
.field private subscriptionPref:Landroid/widget/TabHost$TabSpec;

.field private tabLabel:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUB 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUB 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SUB 3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    return-void
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v7, "Creating activity"

    invoke-static {v7}, Lcom/android/settings/SelectSubscription;->log(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "Title"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "title":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f0b078e

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectSubscription;->getString(I)Ljava/lang/String;

    move-result-object v6

    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/SelectSubscription;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    const v7, 0x7f040076

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectSubscription;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    .line 83
    .local v4, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "PACKAGE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "pkg":Ljava/lang/String;
    const-string v7, "TARGET_CLASS"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "targetClass":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 89
    .local v2, "numPhones":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 90
    iget-object v7, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    .line 91
    iget-object v7, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-direct {p0, v0}, Lcom/android/settings/SelectSubscription;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 93
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "subscription"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 95
    iget-object v7, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v7, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 96
    iget-object v7, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 103
    return-void
.end method
