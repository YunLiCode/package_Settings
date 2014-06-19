.class public Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/testviewpagerandtabhost/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnClickListener"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/example/testviewpagerandtabhost/MainActivity;


# direct methods
.method public constructor <init>(Lcom/example/testviewpagerandtabhost/MainActivity;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 226
    iput-object p1, p0, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;->this$0:Lcom/example/testviewpagerandtabhost/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;->index:I

    .line 227
    iput p2, p0, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;->index:I

    .line 228
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;->this$0:Lcom/example/testviewpagerandtabhost/MainActivity;

    iget-object v0, v0, Lcom/example/testviewpagerandtabhost/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;->index:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 233
    return-void
.end method
