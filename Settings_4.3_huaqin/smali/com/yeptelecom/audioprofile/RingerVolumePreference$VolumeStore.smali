.class public Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public mOriginalVolume:I

.field public mSystemVolume:I

.field public mVolume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 421
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    .line 423
    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    .line 424
    iput v0, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    return-void
.end method
