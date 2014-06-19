.class public Lcom/example/testviewpagerandtabhost/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;,
        Lcom/example/testviewpagerandtabhost/MainActivity$MyOnPageChangeListener;,
        Lcom/example/testviewpagerandtabhost/MainActivity$MyPagerAdapter;
    }
.end annotation


# instance fields
.field private bmpW:I

.field context:Landroid/content/Context;

.field private currIndex:I

.field private cursor:Landroid/widget/ImageView;

.field manager:Landroid/app/LocalActivityManager;

.field private offset:I

.field pager:Landroid/support/v4/view/ViewPager;

.field t1:Landroid/widget/TextView;

.field t2:Landroid/widget/TextView;

.field t3:Landroid/widget/TextView;

.field tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->context:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->manager:Landroid/app/LocalActivityManager;

    .line 32
    iput-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 33
    iput-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->tabHost:Landroid/widget/TabHost;

    .line 36
    iput v1, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->offset:I

    .line 37
    iput v1, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->currIndex:I

    .line 28
    return-void
.end method

.method private InitImageView()V
    .locals 5

    .prologue
    .line 89
    const v3, 0x7f050005

    invoke-virtual {p0, v3}, Lcom/example/testviewpagerandtabhost/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->cursor:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {p0}, Lcom/example/testviewpagerandtabhost/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020002

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 90
    iput v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->bmpW:I

    .line 92
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/example/testviewpagerandtabhost/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 95
    .local v2, "screenW":I
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->bmpW:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->offset:I

    .line 96
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->offset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 98
    iget-object v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->cursor:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/example/testviewpagerandtabhost/MainActivity;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->offset:I

    return v0
.end method

.method static synthetic access$1(Lcom/example/testviewpagerandtabhost/MainActivity;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->bmpW:I

    return v0
.end method

.method static synthetic access$2(Lcom/example/testviewpagerandtabhost/MainActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->currIndex:I

    return v0
.end method

.method static synthetic access$3(Lcom/example/testviewpagerandtabhost/MainActivity;I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->currIndex:I

    return-void
.end method

.method static synthetic access$4(Lcom/example/testviewpagerandtabhost/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->cursor:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getView(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/View;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->manager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initPagerViewer()V
    .locals 5

    .prologue
    .line 72
    const v3, 0x7f050006

    invoke-virtual {p0, v3}, Lcom/example/testviewpagerandtabhost/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/example/testviewpagerandtabhost/normalsettings;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "A"

    invoke-direct {p0, v3, v0}, Lcom/example/testviewpagerandtabhost/MainActivity;->getView(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/example/testviewpagerandtabhost/allsettings;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v1, "intent2":Landroid/content/Intent;
    const-string v3, "B"

    invoke-direct {p0, v3, v1}, Lcom/example/testviewpagerandtabhost/MainActivity;->getView(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/example/testviewpagerandtabhost/MainActivity$MyPagerAdapter;

    invoke-direct {v4, p0, v2}, Lcom/example/testviewpagerandtabhost/MainActivity$MyPagerAdapter;-><init>(Lcom/example/testviewpagerandtabhost/MainActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 82
    iget-object v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 83
    iget-object v3, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnPageChangeListener;

    invoke-direct {v4, p0}, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnPageChangeListener;-><init>(Lcom/example/testviewpagerandtabhost/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 84
    return-void
.end method

.method private initTextView()V
    .locals 3

    .prologue
    .line 59
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/example/testviewpagerandtabhost/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->t1:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/example/testviewpagerandtabhost/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->t2:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/example/testviewpagerandtabhost/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->t3:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->t1:Landroid/widget/TextView;

    new-instance v1, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;-><init>(Lcom/example/testviewpagerandtabhost/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->t2:Landroid/widget/TextView;

    new-instance v1, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;-><init>(Lcom/example/testviewpagerandtabhost/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->t3:Landroid/widget/TextView;

    new-instance v1, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/example/testviewpagerandtabhost/MainActivity$MyOnClickListener;-><init>(Lcom/example/testviewpagerandtabhost/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/example/testviewpagerandtabhost/MainActivity;->setContentView(I)V

    .line 46
    iput-object p0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->context:Landroid/content/Context;

    .line 47
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->manager:Landroid/app/LocalActivityManager;

    .line 48
    iget-object v0, p0, Lcom/example/testviewpagerandtabhost/MainActivity;->manager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/example/testviewpagerandtabhost/MainActivity;->InitImageView()V

    .line 51
    invoke-direct {p0}, Lcom/example/testviewpagerandtabhost/MainActivity;->initTextView()V

    .line 52
    invoke-direct {p0}, Lcom/example/testviewpagerandtabhost/MainActivity;->initPagerViewer()V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/example/testviewpagerandtabhost/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method
