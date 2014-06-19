.class public Lcom/android/settings/multisimsettings/MultiSimSettingsConstants;
.super Ljava/lang/Object;
.source "MultiSimSettingsConstants.java"


# static fields
.field public static final PREFERRED_SUBSCRIPTION_LISTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/multisimsettings/MultiSimSettingsConstants;->PREFERRED_SUBSCRIPTION_LISTS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0xc8
        0x12c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
