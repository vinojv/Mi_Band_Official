.class final Lcom/google/zxing/oned/rss/expanded/decoders/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/common/BitArray;

.field private final b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

.field private final c:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    return-void
.end method

.method static a(Lcom/google/zxing/common/BitArray;II)I
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-le p2, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extractNumberValueFromBitArray can\'t handle more than 32 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private a()Lcom/google/zxing/oned/rss/expanded/decoders/o;
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->d()Lcom/google/zxing/oned/rss/expanded/decoders/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/k;->b()Z

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/k;->a()Lcom/google/zxing/oned/rss/expanded/decoders/o;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c()Lcom/google/zxing/oned/rss/expanded/decoders/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/k;->b()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b()Lcom/google/zxing/oned/rss/expanded/decoders/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/k;->b()Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    goto :goto_2
.end method

.method private a(I)Z
    .locals 3

    const/4 v0, 0x1

    add-int/lit8 v1, p1, 0x7

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-le v1, v2, :cond_2

    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_1
    add-int/lit8 v2, p1, 0x3

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method private b()Lcom/google/zxing/oned/rss/expanded/decoders/k;
    .locals 5

    const/4 v4, 0x1

    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b(I)Lcom/google/zxing/oned/rss/expanded/decoders/p;

    move-result-object v1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/p;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a(I)V

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/p;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/o;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/o;-><init>(ILjava/lang/String;)V

    :goto_1
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    invoke-direct {v1, v0, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/o;Z)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/o;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/p;->b()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/o;-><init>(ILjava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/p;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/p;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/o;

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/o;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/o;Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/p;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->i(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->f()V

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b(I)V

    :cond_4
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Z)V

    goto :goto_2
.end method

.method private b(I)Lcom/google/zxing/oned/rss/expanded/decoders/p;
    .locals 4

    const/16 v3, 0xa

    add-int/lit8 v0, p1, 0x7

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/p;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/p;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/p;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/p;-><init>(III)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v0

    add-int/lit8 v1, v0, -0x8

    div-int/lit8 v1, v1, 0xb

    add-int/lit8 v0, v0, -0x8

    rem-int/lit8 v2, v0, 0xb

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/p;

    add-int/lit8 v3, p1, 0x7

    invoke-direct {v0, v3, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/p;-><init>(III)V

    goto :goto_0
.end method

.method private c()Lcom/google/zxing/oned/rss/expanded/decoders/k;
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->d(I)Lcom/google/zxing/oned/rss/expanded/decoders/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/n;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a(I)V

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/o;

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/o;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/o;Z)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/n;->a()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b(I)V

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->e()V

    :cond_2
    :goto_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b(I)V

    :goto_3
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->f()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a(I)V

    goto :goto_3
.end method

.method private c(I)Z
    .locals 5

    const/4 v4, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x5

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v2

    if-lt v2, v4, :cond_2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p1, 0x7

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v2, 0x7

    invoke-virtual {p0, p1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_3

    const/16 v3, 0x74

    if-ge v2, v3, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, p1, 0x8

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-gt v2, v3, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v2

    const/16 v3, 0xe8

    if-lt v2, v3, :cond_4

    const/16 v3, 0xfd

    if-ge v2, v3, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private d()Lcom/google/zxing/oned/rss/expanded/decoders/k;
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->f(I)Lcom/google/zxing/oned/rss/expanded/decoders/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/n;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a(I)V

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/o;

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/o;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/o;Z)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/n;->a()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b(I)V

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->e()V

    :cond_2
    :goto_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->b(I)V

    :goto_3
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->g()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a(I)V

    goto :goto_3
.end method

.method private d(I)Lcom/google/zxing/oned/rss/expanded/decoders/n;
    .locals 4

    const/16 v3, 0x5a

    const/16 v2, 0xf

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IC)V

    :goto_0
    return-object v0

    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    add-int/lit8 v2, p1, 0x5

    add-int/lit8 v1, v1, 0x30

    add-int/lit8 v1, v1, -0x5

    int-to-char v1, v1

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IC)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v1

    const/16 v0, 0x40

    if-lt v1, v0, :cond_2

    if-ge v1, v3, :cond_2

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    add-int/lit8 v2, p1, 0x7

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IC)V

    goto :goto_0

    :cond_2
    if-lt v1, v3, :cond_3

    const/16 v0, 0x74

    if-ge v1, v0, :cond_3

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    add-int/lit8 v2, p1, 0x7

    add-int/lit8 v1, v1, 0x7

    int-to-char v1, v1

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IC)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoding invalid ISO/IEC 646 value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v0, 0x21

    :goto_1
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    add-int/lit8 v2, p1, 0x8

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IC)V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x22

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x25

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x26

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x27

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x28

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x29

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x2a

    goto :goto_1

    :pswitch_8
    const/16 v0, 0x2b

    goto :goto_1

    :pswitch_9
    const/16 v0, 0x2c

    goto :goto_1

    :pswitch_a
    const/16 v0, 0x2d

    goto :goto_1

    :pswitch_b
    const/16 v0, 0x2e

    goto :goto_1

    :pswitch_c
    const/16 v0, 0x2f

    goto :goto_1

    :pswitch_d
    const/16 v0, 0x3a

    goto :goto_1

    :pswitch_e
    const/16 v0, 0x3b

    goto :goto_1

    :pswitch_f
    const/16 v0, 0x3c

    goto :goto_1

    :pswitch_10
    const/16 v0, 0x3d

    goto :goto_1

    :pswitch_11
    const/16 v0, 0x3e

    goto :goto_1

    :pswitch_12
    const/16 v0, 0x3f

    goto :goto_1

    :pswitch_13
    const/16 v0, 0x5f

    goto :goto_1

    :pswitch_14
    const/16 v0, 0x20

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private e(I)Z
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x5

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v2

    if-lt v2, v4, :cond_2

    if-ge v2, v5, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p1, 0x6

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p0, p1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v2

    if-lt v2, v5, :cond_3

    const/16 v3, 0x3f

    if-ge v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private f(I)Lcom/google/zxing/oned/rss/expanded/decoders/n;
    .locals 4

    const/16 v2, 0xf

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IC)V

    :goto_0
    return-object v0

    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    add-int/lit8 v2, p1, 0x5

    add-int/lit8 v1, v1, 0x30

    add-int/lit8 v1, v1, -0x5

    int-to-char v1, v1

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IC)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(II)I

    move-result v1

    const/16 v0, 0x20

    if-lt v1, v0, :cond_2

    const/16 v0, 0x3a

    if-ge v1, v0, :cond_2

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    add-int/lit8 v2, p1, 0x6

    add-int/lit8 v1, v1, 0x21

    int-to-char v1, v1

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IC)V

    goto :goto_0

    :cond_2
    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoding invalid alphanumeric value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x2a

    :goto_1
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/n;

    add-int/lit8 v2, p1, 0x6

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/n;-><init>(IC)V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x2c

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x2d

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x2e

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x2f

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private g(I)Z
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    add-int v2, v1, p1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h(I)Z
    .locals 3

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, p1

    :goto_1
    add-int/lit8 v2, p1, 0x3

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i(I)Z
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    add-int v2, v1, p1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(II)I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a:Lcom/google/zxing/common/BitArray;

    invoke-static {v0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(Lcom/google/zxing/common/BitArray;II)I

    move-result v0

    return v0
.end method

.method a(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/o;
    .locals 4

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a(I)V

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a()Lcom/google/zxing/oned/rss/expanded/decoders/o;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/o;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/o;->c()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/o;-><init>(ILjava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/o;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->b:Lcom/google/zxing/oned/rss/expanded/decoders/l;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/l;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/o;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/s;->a(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/o;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/o;->g()I

    move-result v3

    if-ne p2, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/o;->g()I

    move-result p2

    goto :goto_0
.end method
