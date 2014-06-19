.class public Lcom/android/settings/MainActivity$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field one:I

.field final synthetic this$0:Lcom/android/settings/MainActivity;

.field two:I


# direct methods
.method public constructor <init>(Lcom/android/settings/MainActivity;)V
    .locals 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    # getter for: Lcom/android/settings/MainActivity;->offset:I
    invoke-static {p1}, Lcom/android/settings/MainActivity;->access$0(Lcom/android/settings/MainActivity;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    # getter for: Lcom/android/settings/MainActivity;->bmpW:I
    invoke-static {p1}, Lcom/android/settings/MainActivity;->access$1(Lcom/android/settings/MainActivity;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->one:I

    .line 168
    iget v0, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->one:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->two:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 218
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8
    .param p1, "arg0"    # I

    .prologue
    const/4 v7, -0x1

    const/high16 v6, -0x1000000

    const/4 v5, 0x1

    const v4, -0x555556

    const/4 v3, 0x0

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "animation":Landroid/view/animation/Animation;
    packed-switch p1, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    invoke-static {v1, p1}, Lcom/android/settings/MainActivity;->access$3(Lcom/android/settings/MainActivity;I)V

    .line 205
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 206
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 207
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    # getter for: Lcom/android/settings/MainActivity;->cursor:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/MainActivity;->access$4(Lcom/android/settings/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    return-void

    .line 175
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    # getter for: Lcom/android/settings/MainActivity;->currIndex:I
    invoke-static {v1}, Lcom/android/settings/MainActivity;->access$2(Lcom/android/settings/MainActivity;)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 176
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->one:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 177
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    iget-object v1, v1, Lcom/android/settings/MainActivity;->t1:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    iget-object v1, v1, Lcom/android/settings/MainActivity;->t2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    # getter for: Lcom/android/settings/MainActivity;->currIndex:I
    invoke-static {v1}, Lcom/android/settings/MainActivity;->access$2(Lcom/android/settings/MainActivity;)I

    move-result v1

    const/4 v2, 0x2
    if-ne v1, v2, :cond_0

    .line 180
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->two:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 182
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    # getter for: Lcom/android/settings/MainActivity;->currIndex:I
    invoke-static {v1}, Lcom/android/settings/MainActivity;->access$2(Lcom/android/settings/MainActivity;)I

    move-result v1

    if-nez v1, :cond_2

    .line 185
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    # getter for: Lcom/android/settings/MainActivity;->offset:I
    invoke-static {v1}, Lcom/android/settings/MainActivity;->access$0(Lcom/android/settings/MainActivity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->one:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 186
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    iget-object v1, v1, Lcom/android/settings/MainActivity;->t1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    iget-object v1, v1, Lcom/android/settings/MainActivity;->t2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    # getter for: Lcom/android/settings/MainActivity;->currIndex:I
    invoke-static {v1}, Lcom/android/settings/MainActivity;->access$2(Lcom/android/settings/MainActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 189
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->two:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->one:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 190
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    iget-object v1, v1, Lcom/android/settings/MainActivity;->t2:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    iget-object v1, v1, Lcom/android/settings/MainActivity;->t3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 195
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    # getter for: Lcom/android/settings/MainActivity;->currIndex:I
    invoke-static {v1}, Lcom/android/settings/MainActivity;->access$2(Lcom/android/settings/MainActivity;)I

    move-result v1

    if-nez v1, :cond_3

    .line 196
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    # getter for: Lcom/android/settings/MainActivity;->offset:I
    invoke-static {v1}, Lcom/android/settings/MainActivity;->access$0(Lcom/android/settings/MainActivity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->two:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 197
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    # getter for: Lcom/android/settings/MainActivity;->currIndex:I
    invoke-static {v1}, Lcom/android/settings/MainActivity;->access$2(Lcom/android/settings/MainActivity;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    iget-object v1, v1, Lcom/android/settings/MainActivity;->t2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings/MainActivity;

    iget-object v1, v1, Lcom/android/settings/MainActivity;->t3:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->one:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/MainActivity$MyOnPageChangeListener;->two:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
