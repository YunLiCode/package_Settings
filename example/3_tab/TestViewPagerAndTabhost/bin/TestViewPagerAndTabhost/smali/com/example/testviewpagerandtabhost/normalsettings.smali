.class public Lcom/example/testviewpagerandtabhost/normalsettings;
.super Landroid/preference/PreferenceActivity;
.source "normalsettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f040001

    invoke-virtual {p0, v0, p1}, Lcom/example/testviewpagerandtabhost/normalsettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 13
    return-void
.end method
