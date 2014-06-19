.class Lcom/android/settings/DataEnabler$1;
.super Ljava/lang/Object;
.source "DataEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/DataEnabler;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$100(Lcom/android/settings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$200(Lcom/android/settings/DataEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/settings/DataEnabler;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/settings/DataEnabler;->access$102(Lcom/android/settings/DataEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    # getter for: Lcom/android/settings/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$400(Lcom/android/settings/DataEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 151
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
