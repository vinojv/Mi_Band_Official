.class Lcn/com/smartdevices/bracelet/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/v;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/v;Z)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/w;->a:Lcn/com/smartdevices/bracelet/ui/v;

    iput-boolean p2, p0, Lcn/com/smartdevices/bracelet/ui/w;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/w;->a:Lcn/com/smartdevices/bracelet/ui/v;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/v;->a(Lcn/com/smartdevices/bracelet/ui/v;)Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/w;->b:Z

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->updateDynamicList(Z)V

    return-void
.end method
