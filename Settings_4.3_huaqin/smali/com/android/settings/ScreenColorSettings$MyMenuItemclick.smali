.class Lcom/android/settings/ScreenColorSettings$MyMenuItemclick;
.super Ljava/lang/Object;
.source "ScreenColorSettings.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ScreenColorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMenuItemclick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ScreenColorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ScreenColorSettings;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/settings/ScreenColorSettings$MyMenuItemclick;->this$0:Lcom/android/settings/ScreenColorSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ScreenColorSettings;Lcom/android/settings/ScreenColorSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/ScreenColorSettings;
    .param p2, "x1"    # Lcom/android/settings/ScreenColorSettings$1;

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenColorSettings$MyMenuItemclick;-><init>(Lcom/android/settings/ScreenColorSettings;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 650
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 664
    :goto_0
    return v1

    .line 652
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings$MyMenuItemclick;->this$0:Lcom/android/settings/ScreenColorSettings;

    # invokes: Lcom/android/settings/ScreenColorSettings;->resotreBackgroundByDefault()V
    invoke-static {v0}, Lcom/android/settings/ScreenColorSettings;->access$300(Lcom/android/settings/ScreenColorSettings;)V

    goto :goto_0

    .line 655
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings$MyMenuItemclick;->this$0:Lcom/android/settings/ScreenColorSettings;

    # invokes: Lcom/android/settings/ScreenColorSettings;->selectPicFromGallery2()V
    invoke-static {v0}, Lcom/android/settings/ScreenColorSettings;->access$400(Lcom/android/settings/ScreenColorSettings;)V

    goto :goto_0

    .line 658
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings$MyMenuItemclick;->this$0:Lcom/android/settings/ScreenColorSettings;

    # invokes: Lcom/android/settings/ScreenColorSettings;->selectPicFromGallery2()V
    invoke-static {v0}, Lcom/android/settings/ScreenColorSettings;->access$400(Lcom/android/settings/ScreenColorSettings;)V

    goto :goto_0

    .line 661
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings$MyMenuItemclick;->this$0:Lcom/android/settings/ScreenColorSettings;

    # invokes: Lcom/android/settings/ScreenColorSettings;->restoreDefaultHSCI()V
    invoke-static {v0}, Lcom/android/settings/ScreenColorSettings;->access$500(Lcom/android/settings/ScreenColorSettings;)V

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x7f08023b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
