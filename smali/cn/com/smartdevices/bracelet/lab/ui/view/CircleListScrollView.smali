.class public Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;
.super Landroid/widget/HorizontalScrollView;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->e:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->e:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->e:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private a()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b:I

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_1
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->requestLayout()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->e:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->setOverScrollMode(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->addView(Landroid/view/View;)V

    iput v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b:I

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->getScroll()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->setScroll(I)V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method private b(I)V
    .locals 4

    const-string v0, "scroll"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->getScrollX()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void

    :cond_1
    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b:I

    goto :goto_0
.end method

.method private c(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    if-le v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b(I)V

    goto :goto_0

    :cond_2
    if-ge v1, v3, :cond_0

    sub-int v0, v1, v3

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b(I)V

    goto :goto_0
.end method


# virtual methods
.method public addView(I)V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->e:Landroid/content/Context;

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070057

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->setStateText(Ljava/lang/String;)V

    const/high16 v2, 0x41900000

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->setStateTextSize(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070056

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getScroll()I
    .locals 1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->getScrollX()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-le v0, p4, :cond_0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->b(I)V

    :cond_0
    const-string v0, "Lab"

    const-string v1, "onLayout"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    const-string v0, "Lab"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScrollChanged l = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  oldl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setScroll(I)V
    .locals 1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->scrollTo(II)V

    return-void
.end method

.method protected updateLayout()V
    .locals 1

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->a()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->c(Landroid/view/View;)V

    return-void
.end method
