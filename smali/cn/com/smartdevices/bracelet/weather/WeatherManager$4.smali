.class Lcn/com/smartdevices/bracelet/weather/WeatherManager$4;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$4;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2

    const-string v0, "WeatherManager"

    const-string v1, "Request Weather Failed!!"

    invoke-static {v0, v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 5

    const-string v0, "WeatherManager"

    const-string v1, "Request Weather Successed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    const-string v1, "WeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Respone : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo;

    const-string v1, "WeatherManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WeatherInfo : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo;->getRealtime()Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Realtime;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$Realtime;->getWeather()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->setWeather(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$4;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    #getter for: Lcn/com/smartdevices/bracelet/weather/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->access$0(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->getWeather()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->toWeatherDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->setWeatherDescription(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo;->getAqi()Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$AQI;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/weather/OriginalWeatherInfo$AQI;->getAqi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->setAqi(I)V

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->getAqi()I

    move-result v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->toAqiLevel(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->setAqiLevel(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$4;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    #getter for: Lcn/com/smartdevices/bracelet/weather/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->access$0(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->getAqiLevel()I

    move-result v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->toAqiDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/weather/WeatherInfo;->setAqiDescription(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "WeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Weather : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$4;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    #getter for: Lcn/com/smartdevices/bracelet/weather/WeatherManager;->mWeatherListener:Lcn/com/smartdevices/bracelet/weather/WeatherListener;
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->access$1(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)Lcn/com/smartdevices/bracelet/weather/WeatherListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/weather/WeatherManager$4;->this$0:Lcn/com/smartdevices/bracelet/weather/WeatherManager;

    #getter for: Lcn/com/smartdevices/bracelet/weather/WeatherManager;->mWeatherListener:Lcn/com/smartdevices/bracelet/weather/WeatherListener;
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/weather/WeatherManager;->access$1(Lcn/com/smartdevices/bracelet/weather/WeatherManager;)Lcn/com/smartdevices/bracelet/weather/WeatherListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/com/smartdevices/bracelet/weather/WeatherListener;->onReceiveWeather(Lcn/com/smartdevices/bracelet/weather/WeatherInfo;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    const-string v2, "WeatherManager"

    const-string v3, "Parse WeatherInfo Error!!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method