.class Lcom/yeptelecom/audioprofile/Editprofile$1;
.super Ljava/lang/Object;
.source "Editprofile.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yeptelecom/audioprofile/Editprofile;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yeptelecom/audioprofile/Editprofile;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yeptelecom/audioprofile/Editprofile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/Editprofile$1;->this$0:Lcom/yeptelecom/audioprofile/Editprofile;

    iput-object p2, p0, Lcom/yeptelecom/audioprofile/Editprofile$1;->val$name:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 377
    const-string v1, "Settings/EditProfile"

    const-string v2, "update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile$1;->this$0:Lcom/yeptelecom/audioprofile/Editprofile;

    # getter for: Lcom/yeptelecom/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/Editprofile;->access$000(Lcom/yeptelecom/audioprofile/Editprofile;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile$1;->this$0:Lcom/yeptelecom/audioprofile/Editprofile;

    # invokes: Lcom/yeptelecom/audioprofile/Editprofile;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/Editprofile;->access$100(Lcom/yeptelecom/audioprofile/Editprofile;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile$1;->val$name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "vibrateEnabled":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile$1;->this$0:Lcom/yeptelecom/audioprofile/Editprofile;

    # getter for: Lcom/yeptelecom/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/Editprofile;->access$000(Lcom/yeptelecom/audioprofile/Editprofile;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 384
    const-string v1, "Settings/EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibrate setting is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v0    # "vibrateEnabled":Ljava/lang/String;
    :cond_0
    return-void
.end method
