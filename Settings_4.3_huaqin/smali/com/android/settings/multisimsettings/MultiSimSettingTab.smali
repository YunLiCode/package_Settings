.class public Lcom/android/settings/multisimsettings/MultiSimSettingTab;
.super Landroid/app/TabActivity;
.source "MultiSimSettingTab.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIntent:Landroid/content/Intent;

.field private tabIcons:[I

.field private tabSpecTags:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 58
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->tabIcons:[I

    .line 68
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sub1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sub2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->tabSpecTags:[Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/settings/multisimsettings/MultiSimSettingTab$1;

    invoke-direct {v0, p0}, Lcom/android/settings/multisimsettings/MultiSimSettingTab$1;-><init>(Lcom/android/settings/multisimsettings/MultiSimSettingTab;)V

    iput-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 64
    nop

    :array_0
    .array-data 4
        0x7f0200a7
        0x7f0200a8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/multisimsettings/MultiSimSettingTab;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/multisimsettings/MultiSimSettingTab;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->handleSimNameChanged(I)V

    return-void
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleSimNameChanged(I)V
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 153
    const-string v1, "MultiSimSettingWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim name changed on sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    .local v0, "simName":Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 158
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v0, "MultiSimSettingWidget"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v9, "Creating activity"

    invoke-static {v9}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->log(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->mIntent:Landroid/content/Intent;

    .line 101
    iget-object v9, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->mIntent:Landroid/content/Intent;

    const-string v10, "Title"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, "title":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const v9, 0x7f0b078e

    invoke-virtual {p0, v9}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->getString(I)Ljava/lang/String;

    move-result-object v8

    .end local v8    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    const v9, 0x7f04004a

    invoke-virtual {p0, v9}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->setContentView(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 108
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    .line 114
    .local v7, "tabHost":Landroid/widget/TabHost;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 115
    iget-object v9, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->mIntent:Landroid/content/Intent;

    const-string v10, "PACKAGE"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->mIntent:Landroid/content/Intent;

    const-string v10, "TARGET_CLASS"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "className":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 120
    const-string v4, "com.android.settings"

    .line 121
    :cond_1
    if-nez v1, :cond_2

    .line 122
    const-string v1, "com.android.settings.multisimsettings.MultiSimConfiguration"

    .line 124
    :cond_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "subscription"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 127
    .local v3, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->tabSpecTags:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v7, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-direct {p0, v2}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->tabIcons:[I

    aget v11, v11, v2

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 131
    .local v6, "spec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v7, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, "TempsimName":Landroid/widget/TextView;
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "TempsimName":Landroid/widget/TextView;
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "spec":Landroid/widget/TabHost$TabSpec;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->mIntent:Landroid/content/Intent;

    const-string v10, "subscription"

    invoke-virtual {v9, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 138
    iget-object v9, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.android.settings.SUBNAME_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings/multisimsettings/MultiSimSettingTab;->finish()V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 89
    return-void
.end method
