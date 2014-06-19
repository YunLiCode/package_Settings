.class public Lcom/android/settings/MainActivity$MyOnClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnClickListener"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/android/settings/MainActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/MainActivity;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings/MainActivity$MyOnClickListener;->this$0:Lcom/android/settings/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MainActivity$MyOnClickListener;->index:I

    .line 219
    iput p2, p0, Lcom/android/settings/MainActivity$MyOnClickListener;->index:I

    .line 220
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/MainActivity$MyOnClickListener;->this$0:Lcom/android/settings/MainActivity;

    iget-object v0, v0, Lcom/android/settings/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/android/settings/MainActivity$MyOnClickListener;->index:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 225
    return-void
.end method
