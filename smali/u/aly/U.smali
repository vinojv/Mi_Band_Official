.class Lu/aly/U;
.super Lu/aly/di;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/di",
        "<",
        "Lu/aly/am;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/aly/di;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/U;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/U;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/am;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lu/aly/cy;->k()V

    invoke-virtual {p2}, Lu/aly/am;->e()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-short v1, v0, Lu/aly/ct;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    :goto_1
    invoke-virtual {p1}, Lu/aly/cy;->m()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/am;->a:J

    invoke-virtual {p2, v3}, Lu/aly/am;->b(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/am;->b:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lu/aly/am;->c(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    invoke-static {v0}, Lu/aly/an;->a(I)Lu/aly/an;

    move-result-object v0

    iput-object v0, p2, Lu/aly/am;->c:Lu/aly/an;

    invoke-virtual {p2, v3}, Lu/aly/am;->d(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lu/aly/am;->m()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0

    check-cast p2, Lu/aly/am;

    invoke-virtual {p0, p1, p2}, Lu/aly/U;->a(Lu/aly/cy;Lu/aly/am;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/am;)V
    .locals 2

    invoke-virtual {p2}, Lu/aly/am;->m()V

    invoke-static {}, Lu/aly/am;->n()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    invoke-static {}, Lu/aly/am;->o()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-wide v0, p2, Lu/aly/am;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(J)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    iget-object v0, p2, Lu/aly/am;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lu/aly/am;->p()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p2, Lu/aly/am;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    :cond_0
    iget-object v0, p2, Lu/aly/am;->c:Lu/aly/an;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lu/aly/am;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lu/aly/am;->q()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p2, Lu/aly/am;->c:Lu/aly/an;

    invoke-virtual {v0}, Lu/aly/an;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(I)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    :cond_1
    invoke-virtual {p1}, Lu/aly/cy;->d()V

    invoke-virtual {p1}, Lu/aly/cy;->b()V

    return-void
.end method

.method public bridge synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0

    check-cast p2, Lu/aly/am;

    invoke-virtual {p0, p1, p2}, Lu/aly/U;->b(Lu/aly/cy;Lu/aly/am;)V

    return-void
.end method
