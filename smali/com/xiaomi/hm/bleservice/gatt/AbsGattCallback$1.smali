.class Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;


# direct methods
.method constructor <init>(Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$1;->this$0:Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    invoke-static {}, Lcom/xiaomi/hm/bleservice/util/Debug;->TRACE()V

    const-string v0, "********************************"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Debug;->INFO(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NEW THREAD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Debug;->INFO(Ljava/lang/String;)V

    const-string v0, "********************************"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Debug;->INFO(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-static {}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$1$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$1$1;-><init>(Lcom/xiaomi/hm/bleservice/gatt/AbsGattCallback$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0
.end method