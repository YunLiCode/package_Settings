.class public Lcom/android/settings/CheckPasswordActivity;
.super Landroid/app/Activity;
.source "CheckPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentTime:J

.field private mButton_ok:Landroid/widget/Button;

.field private mButton_reset:Landroid/widget/Button;

.field private mCount:I

.field private mEditor:Landroid/widget/EditText;

.field mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mMode:I

.field private mTime:J

.field task:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/CheckPasswordActivity;->mCount:I

    .line 36
    iput-wide v1, p0, Lcom/android/settings/CheckPasswordActivity;->mTime:J

    .line 37
    iput-wide v1, p0, Lcom/android/settings/CheckPasswordActivity;->currentTime:J

    .line 43
    new-instance v0, Lcom/android/settings/CheckPasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CheckPasswordActivity$1;-><init>(Lcom/android/settings/CheckPasswordActivity;)V

    iput-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/android/settings/CheckPasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CheckPasswordActivity$2;-><init>(Lcom/android/settings/CheckPasswordActivity;)V

    iput-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->task:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CheckPasswordActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/CheckPasswordActivity;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/android/settings/CheckPasswordActivity;->mTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/settings/CheckPasswordActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CheckPasswordActivity;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/android/settings/CheckPasswordActivity;->mTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/settings/CheckPasswordActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/CheckPasswordActivity;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/android/settings/CheckPasswordActivity;->currentTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/settings/CheckPasswordActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CheckPasswordActivity;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/android/settings/CheckPasswordActivity;->currentTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/settings/CheckPasswordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CheckPasswordActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/settings/CheckPasswordActivity;->mCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/CheckPasswordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CheckPasswordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/settings/CheckPasswordActivity;->mCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/CheckPasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CheckPasswordActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/CheckPasswordActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CheckPasswordActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mButton_reset:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/CheckPasswordActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CheckPasswordActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mButton_ok:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/CheckPasswordActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CheckPasswordActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method private clearEditors()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    return-void
.end method

.method private configureViews()V
    .locals 5

    .prologue
    .line 129
    const v2, 0x7f08002a

    invoke-virtual {p0, v2}, Lcom/android/settings/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "firstEditor":Landroid/view/View;
    const v2, 0x7f08002b

    invoke-virtual {p0, v2}, Lcom/android/settings/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mHeaderText:Landroid/widget/TextView;

    .line 132
    const v2, 0x7f08002c

    invoke-virtual {p0, v2}, Lcom/android/settings/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    .line 133
    const v2, 0x7f08002e

    invoke-virtual {p0, v2}, Lcom/android/settings/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mButton_reset:Landroid/widget/Button;

    .line 134
    const v2, 0x7f08002f

    invoke-virtual {p0, v2}, Lcom/android/settings/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mButton_ok:Landroid/widget/Button;

    .line 135
    iget-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mButton_reset:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mButton_ok:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget v2, p0, Lcom/android/settings/CheckPasswordActivity;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 152
    const-string v2, "CheckPasswordActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/CheckPasswordActivity;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x7f0b07da

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 145
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 146
    .local v0, "filters":[Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 148
    iget-object v2, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget v0, p0, Lcom/android/settings/CheckPasswordActivity;->mMode:I

    if-eqz v0, :cond_0

    .line 100
    iget v0, p0, Lcom/android/settings/CheckPasswordActivity;->mMode:I

    if-ne v0, v5, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "password":Ljava/lang/String;
    const-string v0, "CheckPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try password "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "1122"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/CheckPasswordActivity;->setResult(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/CheckPasswordActivity;->finish()V

    goto :goto_0

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CheckPasswordActivity;->clearEditors()V

    .line 108
    iget v0, p0, Lcom/android/settings/CheckPasswordActivity;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/CheckPasswordActivity;->mCount:I

    .line 109
    iget v0, p0, Lcom/android/settings/CheckPasswordActivity;->mCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/CheckPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 111
    .local v7, "text":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/CheckPasswordActivity;->mCount:I

    rsub-int/lit8 v3, v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/CheckPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 114
    .local v8, "text1":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/CheckPasswordActivity;->currentTime:J

    .line 116
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mButton_reset:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->mButton_ok:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/settings/CheckPasswordActivity;->task:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x7f08002e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Lcom/android/settings/CheckPasswordActivity;->setContentView(I)V

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/CheckPasswordActivity;->mMode:I

    .line 87
    invoke-direct {p0}, Lcom/android/settings/CheckPasswordActivity;->configureViews()V

    .line 88
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->timer:Ljava/util/Timer;

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/CheckPasswordActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 167
    :cond_0
    return-void
.end method
