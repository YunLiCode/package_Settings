.class public Lcom/android/settings/ScreenColorSettings;
.super Landroid/app/Activity;
.source "ScreenColorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ScreenColorSettings$1;,
        Lcom/android/settings/ScreenColorSettings$MyMenuItemclick;,
        Lcom/android/settings/ScreenColorSettings$PPServiceConnection;
    }
.end annotation


# instance fields
.field private canRestorePreview:Z

.field private mCBar:Landroid/widget/SeekBar;

.field private mCTv:Landroid/widget/TextView;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContrastValue:I

.field private mHBar:Landroid/widget/SeekBar;

.field private mHTv:Landroid/widget/TextView;

.field private mHueValue:I

.field private mIBar:Landroid/widget/SeekBar;

.field private mITv:Landroid/widget/TextView;

.field private mIncreaseC:Landroid/widget/ImageView;

.field private mIncreaseH:Landroid/widget/ImageView;

.field private mIncreaseI:Landroid/widget/ImageView;

.field private mIncreaseS:Landroid/widget/ImageView;

.field private mIntensityValue:I

.field private mMore:Landroid/widget/ImageView;

.field private mNewBtn:Landroid/widget/Button;

.field mPPService:Lcom/android/display/IPPService;

.field mPPServiceConn:Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

.field private mPreviousBtn:Landroid/widget/Button;

.field private mRLayout:Landroid/widget/RelativeLayout;

.field private mReduceC:Landroid/widget/ImageView;

.field private mReduceH:Landroid/widget/ImageView;

.field private mReduceI:Landroid/widget/ImageView;

.field private mReduceS:Landroid/widget/ImageView;

.field private mSBar:Landroid/widget/SeekBar;

.field private mSTv:Landroid/widget/TextView;

.field private mSaturationValue:I

.field private mSaveBtn:Landroid/widget/Button;

.field private mScreenColorLayout:Landroid/widget/LinearLayout;

.field private mUpdown:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    iput v0, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    .line 112
    iput v0, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    .line 113
    iput v0, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    .line 114
    iput v0, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    .line 120
    iput-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    .line 121
    iput-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPServiceConn:Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

    .line 647
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ScreenColorSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ScreenColorSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenColorSettings;->restoreSavedHSCI(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/ScreenColorSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ScreenColorSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->resotreBackgroundByDefault()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/ScreenColorSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ScreenColorSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->selectPicFromGallery2()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/ScreenColorSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ScreenColorSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->restoreDefaultHSCI()V

    return-void
.end method

.method private changePreviewByData(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 573
    if-eqz p1, :cond_0

    .line 574
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 575
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/settings/ScreenColorSettings;->setBackgroundByUri(Landroid/net/Uri;)V

    .line 576
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ScreenColorSettings;->savePreviewKey(Ljava/lang/String;)V

    .line 578
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private getScreenColorPreviewKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 616
    const-string v1, "screencolor_preview_name"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ScreenColorSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 618
    .local v0, "share":Landroid/content/SharedPreferences;
    const-string v1, "screencolor_preview_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initBtnsStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 544
    return-void
.end method

.method private initPPService()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;-><init>(Lcom/android/settings/ScreenColorSettings;Lcom/android/settings/ScreenColorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPPServiceConn:Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/display/IPPService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPServiceConn:Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/ScreenColorSettings;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 217
    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 148
    const v3, 0x7f080137

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mRLayout:Landroid/widget/RelativeLayout;

    .line 149
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->getScreenColorPreviewKey()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "previewContent":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->resotreBackgroundByDefault()V

    .line 157
    :goto_0
    const v3, 0x7f080140

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mScreenColorLayout:Landroid/widget/LinearLayout;

    .line 158
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mScreenColorLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0016

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 159
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v3, 0x7f080144

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mHBar:Landroid/widget/SeekBar;

    .line 162
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 163
    const v3, 0x7f080148

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mSBar:Landroid/widget/SeekBar;

    .line 164
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 165
    const v3, 0x7f080151

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mIBar:Landroid/widget/SeekBar;

    .line 166
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 167
    const v3, 0x7f08014c

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mCBar:Landroid/widget/SeekBar;

    .line 168
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    const v3, 0x7f080141

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mHTv:Landroid/widget/TextView;

    .line 171
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mHTv:Landroid/widget/TextView;

    const v4, 0x7f0b07c1

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ScreenColorSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const v3, 0x7f080145

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mSTv:Landroid/widget/TextView;

    .line 173
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mSTv:Landroid/widget/TextView;

    const v4, 0x7f0b07c2

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ScreenColorSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v3, 0x7f08014d

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mITv:Landroid/widget/TextView;

    .line 175
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mITv:Landroid/widget/TextView;

    const v4, 0x7f0b07c4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ScreenColorSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const v3, 0x7f080149

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mCTv:Landroid/widget/TextView;

    .line 177
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mCTv:Landroid/widget/TextView;

    const v4, 0x7f0b07c3

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ScreenColorSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const v3, 0x7f080142

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mReduceH:Landroid/widget/ImageView;

    .line 180
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mReduceH:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v3, 0x7f080143

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseH:Landroid/widget/ImageView;

    .line 182
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseH:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v3, 0x7f080146

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mReduceS:Landroid/widget/ImageView;

    .line 184
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mReduceS:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v3, 0x7f080147

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseS:Landroid/widget/ImageView;

    .line 186
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseS:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v3, 0x7f08014f

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mReduceI:Landroid/widget/ImageView;

    .line 188
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mReduceI:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v3, 0x7f080150

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseI:Landroid/widget/ImageView;

    .line 190
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseI:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v3, 0x7f08014a

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mReduceC:Landroid/widget/ImageView;

    .line 192
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mReduceC:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v3, 0x7f08014b

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseC:Landroid/widget/ImageView;

    .line 194
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseC:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v3, 0x7f08013b

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mUpdown:Landroid/widget/ImageView;

    .line 197
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v3, 0x7f08013c

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mMore:Landroid/widget/ImageView;

    .line 199
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v3, 0x7f08013d

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mPreviousBtn:Landroid/widget/Button;

    .line 202
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v3, 0x7f08013e

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mNewBtn:Landroid/widget/Button;

    .line 204
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v3, 0x7f080139

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mCancelBtn:Landroid/widget/Button;

    .line 206
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mSaveBtn:Landroid/widget/Button;

    .line 208
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->initBtnsStatus()V

    .line 211
    return-void

    .line 153
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 154
    .local v2, "previewUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/settings/ScreenColorSettings;->setBackgroundByUri(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method private previewNewHSIC()V
    .locals 6

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mHBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 513
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mSBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 514
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mIBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 515
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mCBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 516
    const-string v1, "ScreenColorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewNewHSIC mHueValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSaturationValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContrastValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIntensityValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v1}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    iget v2, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    iget v3, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    iget v4, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    iget v5, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenColorSettings"

    const-string v2, "updateHSIC exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private previousOrNewHSCI(Z)V
    .locals 4
    .param p1, "isPrevious"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 547
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 551
    :cond_0
    if-eqz p1, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 553
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 554
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    invoke-direct {p0, v3}, Lcom/android/settings/ScreenColorSettings;->restoreSavedHSCI(Z)V

    .line 564
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 559
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->previewNewHSIC()V

    goto :goto_0
.end method

.method private resotreBackgroundByDefault()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mRLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 593
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/settings/ScreenColorSettings;->savePreviewKey(Ljava/lang/String;)V

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ScreenColorSettings;->canRestorePreview:Z

    .line 595
    return-void
.end method

.method private restoreDefaultHSCI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 484
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->setNewBtnHighlight()V

    .line 485
    return-void
.end method

.method private restoreSavedHSCI(Z)V
    .locals 9
    .param p1, "setProgress"    # Z

    .prologue
    const/4 v8, 0x0

    .line 488
    const-string v6, "screencolor_preview_name"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/ScreenColorSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 490
    .local v5, "share":Landroid/content/SharedPreferences;
    const-string v6, "hue"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 491
    .local v2, "hueValue":I
    const-string v6, "saturation"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 492
    .local v4, "saturationValue":I
    const-string v6, "intensity"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 493
    .local v3, "intensityValue":I
    const-string v6, "contrast"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 494
    .local v0, "contrastValue":I
    if-eqz p1, :cond_0

    .line 495
    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 496
    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 497
    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 498
    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 500
    :cond_0
    const-string v6, "ScreenColorSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSavedHSCI hueValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " saturationValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contrastValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intensityValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v6}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 504
    iget-object v6, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v6, v2, v4, v3, v0}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_1
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "ScreenColorSettings"

    const-string v7, "updateHSIC exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveHSCI()V
    .locals 4

    .prologue
    .line 568
    iget v0, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    iget v1, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    iget v2, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    iget v3, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/ScreenColorSettings;->saveHSICPreference(IIII)V

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->finish()V

    .line 570
    return-void
.end method

.method private saveHSICPreference(IIII)V
    .locals 4
    .param p1, "h"    # I
    .param p2, "s"    # I
    .param p3, "i"    # I
    .param p4, "c"    # I

    .prologue
    .line 606
    const-string v2, "screencolor_preview_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ScreenColorSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 607
    .local v1, "share":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 608
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "hue"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 609
    const-string v2, "saturation"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 610
    const-string v2, "intensity"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 611
    const-string v2, "contrast"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 612
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 613
    return-void
.end method

.method private savePreviewKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 599
    const-string v2, "screencolor_preview_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ScreenColorSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 600
    .local v1, "share":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 601
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencolor_preview_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 603
    return-void
.end method

.method private selectPicFromGallery2()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 464
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.gallery3d"

    const-string v4, "com.android.gallery3d.app.Wallpaper"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "aspectX"

    const/16 v3, 0x1e0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    const-string v2, "aspectY"

    const/16 v3, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    const-string v2, "spotlightX"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 471
    const-string v2, "spotlightY"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 473
    const-string v2, "fromScreenColor"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 475
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ScreenColorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 476
    return-void
.end method

.method private setActivated(Landroid/widget/SeekBar;Z)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "isActivated"    # Z

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    .line 369
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 371
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mReduceH:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseH:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 375
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mReduceS:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 376
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseS:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 379
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mReduceI:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseI:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 383
    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mReduceC:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 384
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mIncreaseC:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 369
    :sswitch_data_0
    .sparse-switch
        0x7f080144 -> :sswitch_0
        0x7f080148 -> :sswitch_1
        0x7f08014c -> :sswitch_3
        0x7f080151 -> :sswitch_2
    .end sparse-switch
.end method

.method private setBackgroundByUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 582
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 583
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 584
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 585
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mRLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/ScreenColorSettings;->canRestorePreview:Z

    .line 589
    return-void

    .line 586
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private setNewBtnHighlight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 530
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 536
    return-void
.end method

.method private showMoreMenus()V
    .locals 4

    .prologue
    .line 632
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/settings/ScreenColorSettings;->mMore:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 633
    .local v1, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 634
    .local v0, "menu":Landroid/view/Menu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f100002

    invoke-virtual {v2, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 636
    iget-boolean v2, p0, Lcom/android/settings/ScreenColorSettings;->canRestorePreview:Z

    if-eqz v2, :cond_0

    .line 637
    const v2, 0x7f08023d

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 643
    :goto_0
    new-instance v2, Lcom/android/settings/ScreenColorSettings$MyMenuItemclick;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/ScreenColorSettings$MyMenuItemclick;-><init>(Lcom/android/settings/ScreenColorSettings;Lcom/android/settings/ScreenColorSettings$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 644
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 645
    return-void

    .line 639
    :cond_0
    const v2, 0x7f08023b

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 640
    const v2, 0x7f08023c

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method private upDownHSCISettingLayout()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 622
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 629
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mScreenColorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 254
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 255
    const-string v0, "ScreenColorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/settings/ScreenColorSettings;->changePreviewByData(Landroid/content/Intent;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 400
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 401
    .local v6, "minHueValue":I
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 402
    .local v2, "maxHueValue":I
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 403
    .local v8, "minSaturationValue":I
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 404
    .local v4, "maxSaturationValue":I
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 405
    .local v7, "minIntensityValue":I
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 406
    .local v3, "maxIntensityValue":I
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 407
    .local v5, "minContrastValue":I
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0008

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 409
    .local v1, "maxContrastValue":I
    sparse-switch v0, :sswitch_data_0

    .line 461
    .end local v1    # "maxContrastValue":I
    .end local v2    # "maxHueValue":I
    .end local v3    # "maxIntensityValue":I
    .end local v4    # "maxSaturationValue":I
    .end local v5    # "minContrastValue":I
    .end local v6    # "minHueValue":I
    .end local v7    # "minIntensityValue":I
    .end local v8    # "minSaturationValue":I
    :goto_0
    return-void

    .line 411
    .restart local v1    # "maxContrastValue":I
    .restart local v2    # "maxHueValue":I
    .restart local v3    # "maxIntensityValue":I
    .restart local v4    # "maxSaturationValue":I
    .restart local v5    # "minContrastValue":I
    .restart local v6    # "minHueValue":I
    .restart local v7    # "minIntensityValue":I
    .restart local v8    # "minSaturationValue":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->finish()V

    goto :goto_0

    .line 414
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->saveHSCI()V

    goto :goto_0

    .line 417
    :sswitch_2
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/settings/ScreenColorSettings;->previousOrNewHSCI(Z)V

    goto :goto_0

    .line 420
    :sswitch_3
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/ScreenColorSettings;->previousOrNewHSCI(Z)V

    goto :goto_0

    .line 423
    :sswitch_4
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->upDownHSCISettingLayout()V

    goto :goto_0

    .line 426
    :sswitch_5
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->showMoreMenus()V

    goto :goto_0

    .line 429
    :sswitch_6
    iget-object v9, p0, Lcom/android/settings/ScreenColorSettings;->mHBar:Landroid/widget/SeekBar;

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    add-int/lit8 v10, v10, -0x1

    if-le v10, v6, :cond_0

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    add-int/lit8 v6, v10, -0x1

    .end local v6    # "minHueValue":I
    :cond_0
    invoke-virtual {v9, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 432
    .restart local v6    # "minHueValue":I
    :sswitch_7
    iget-object v9, p0, Lcom/android/settings/ScreenColorSettings;->mHBar:Landroid/widget/SeekBar;

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    add-int/lit8 v10, v10, 0x1

    if-ge v10, v2, :cond_1

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    add-int/lit8 v2, v10, 0x1

    .end local v2    # "maxHueValue":I
    :cond_1
    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 435
    .restart local v2    # "maxHueValue":I
    :sswitch_8
    iget-object v9, p0, Lcom/android/settings/ScreenColorSettings;->mSBar:Landroid/widget/SeekBar;

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    add-int/lit8 v10, v10, -0x1

    if-le v10, v8, :cond_2

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    add-int/lit8 v8, v10, -0x1

    .end local v8    # "minSaturationValue":I
    :cond_2
    invoke-virtual {v9, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 439
    .restart local v8    # "minSaturationValue":I
    :sswitch_9
    iget-object v9, p0, Lcom/android/settings/ScreenColorSettings;->mSBar:Landroid/widget/SeekBar;

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    add-int/lit8 v10, v10, 0x1

    if-ge v10, v4, :cond_3

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    add-int/lit8 v4, v10, 0x1

    .end local v4    # "maxSaturationValue":I
    :cond_3
    invoke-virtual {v9, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 443
    .restart local v4    # "maxSaturationValue":I
    :sswitch_a
    iget-object v9, p0, Lcom/android/settings/ScreenColorSettings;->mIBar:Landroid/widget/SeekBar;

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    add-int/lit8 v10, v10, -0x1

    if-le v10, v7, :cond_4

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    add-int/lit8 v7, v10, -0x1

    .end local v7    # "minIntensityValue":I
    :cond_4
    invoke-virtual {v9, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 447
    .restart local v7    # "minIntensityValue":I
    :sswitch_b
    iget-object v9, p0, Lcom/android/settings/ScreenColorSettings;->mIBar:Landroid/widget/SeekBar;

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    add-int/lit8 v10, v10, 0x1

    if-ge v10, v3, :cond_5

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    add-int/lit8 v3, v10, 0x1

    .end local v3    # "maxIntensityValue":I
    :cond_5
    invoke-virtual {v9, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 451
    .restart local v3    # "maxIntensityValue":I
    :sswitch_c
    iget-object v9, p0, Lcom/android/settings/ScreenColorSettings;->mCBar:Landroid/widget/SeekBar;

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    add-int/lit8 v10, v10, -0x1

    if-le v10, v5, :cond_6

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    add-int/lit8 v5, v10, -0x1

    .end local v5    # "minContrastValue":I
    :cond_6
    invoke-virtual {v9, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 455
    .restart local v5    # "minContrastValue":I
    :sswitch_d
    iget-object v9, p0, Lcom/android/settings/ScreenColorSettings;->mCBar:Landroid/widget/SeekBar;

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    add-int/lit8 v10, v10, 0x1

    if-ge v10, v1, :cond_7

    iget v10, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    add-int/lit8 v1, v10, 0x1

    .end local v1    # "maxContrastValue":I
    :cond_7
    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 409
    :sswitch_data_0
    .sparse-switch
        0x7f080085 -> :sswitch_1
        0x7f080139 -> :sswitch_0
        0x7f08013b -> :sswitch_4
        0x7f08013c -> :sswitch_5
        0x7f08013d -> :sswitch_2
        0x7f08013e -> :sswitch_3
        0x7f080142 -> :sswitch_6
        0x7f080143 -> :sswitch_7
        0x7f080146 -> :sswitch_8
        0x7f080147 -> :sswitch_9
        0x7f08014a -> :sswitch_c
        0x7f08014b -> :sswitch_d
        0x7f08014f -> :sswitch_a
        0x7f080150 -> :sswitch_b
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->initPPService()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 128
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/android/settings/ScreenColorSettings;->setContentView(I)V

    .line 129
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->initView()V

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f0b07c0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    const/4 v0, 0x2

    const v1, 0x7f0b07bf

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 271
    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 272
    const v0, 0x7f0b07bd

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 274
    const v0, 0x7f0b07be

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 276
    invoke-interface {p1, v3, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 277
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPPServiceConn:Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/ScreenColorSettings;->unbindService(Landroid/content/ServiceConnection;)V

    .line 142
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 294
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 311
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    .line 296
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->finish()V

    .line 313
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->selectPicFromGallery2()V

    goto :goto_1

    .line 302
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->selectPicFromGallery2()V

    goto :goto_1

    .line 305
    :sswitch_3
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->resotreBackgroundByDefault()V

    goto :goto_1

    .line 308
    :sswitch_4
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->restoreDefaultHSCI()V

    goto :goto_1

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 282
    iget-boolean v0, p0, Lcom/android/settings/ScreenColorSettings;->canRestorePreview:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 284
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 289
    :goto_0
    return v1

    .line 286
    :cond_0
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 287
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 12
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const-wide v10, 0x4066800000000000L

    const-wide/high16 v8, 0x4059000000000000L

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 317
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->setNewBtnHighlight()V

    .line 318
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    .line 319
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 346
    :goto_0
    const-string v2, "ScreenColorSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged mHueValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSaturationValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNewContrastValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIntensityValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v2}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    iget v3, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    iget v4, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    iget v5, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    iget v6, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_1
    return-void

    .line 321
    :sswitch_0
    iput p2, p0, Lcom/android/settings/ScreenColorSettings;->mHueValue:I

    .line 323
    iget-object v2, p0, Lcom/android/settings/ScreenColorSettings;->mHTv:Landroid/widget/TextView;

    const v3, 0x7f0b07c1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit16 v5, p2, -0xb4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/ScreenColorSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 326
    :sswitch_1
    iput p2, p0, Lcom/android/settings/ScreenColorSettings;->mSaturationValue:I

    .line 328
    iget-object v2, p0, Lcom/android/settings/ScreenColorSettings;->mSTv:Landroid/widget/TextView;

    const v3, 0x7f0b07c2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit16 v5, p2, -0xb4

    mul-int/lit8 v5, v5, 0x64

    int-to-double v5, v5

    div-double/2addr v5, v10

    double-to-int v5, v5

    int-to-double v5, v5

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/ScreenColorSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 332
    :sswitch_2
    iput p2, p0, Lcom/android/settings/ScreenColorSettings;->mContrastValue:I

    .line 334
    iget-object v2, p0, Lcom/android/settings/ScreenColorSettings;->mCTv:Landroid/widget/TextView;

    const v3, 0x7f0b07c3

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit16 v5, p2, -0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/ScreenColorSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 337
    :sswitch_3
    iput p2, p0, Lcom/android/settings/ScreenColorSettings;->mIntensityValue:I

    .line 339
    iget-object v2, p0, Lcom/android/settings/ScreenColorSettings;->mITv:Landroid/widget/TextView;

    const v3, 0x7f0b07c4

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit16 v5, p2, -0xb4

    mul-int/lit8 v5, v5, 0x64

    int-to-double v5, v5

    div-double/2addr v5, v10

    double-to-int v5, v5

    int-to-double v5, v5

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/ScreenColorSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ScreenColorSettings"

    const-string v3, "updateHSIC exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080144 -> :sswitch_0
        0x7f080148 -> :sswitch_1
        0x7f08014c -> :sswitch_2
        0x7f080151 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/ScreenColorSettings;->restoreSavedHSCI(Z)V

    .line 136
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 360
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ScreenColorSettings;->setActivated(Landroid/widget/SeekBar;Z)V

    .line 361
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ScreenColorSettings;->setActivated(Landroid/widget/SeekBar;Z)V

    .line 365
    return-void
.end method
