package com.example.restclient.api;

import com.example.restclient.pojo.User;
import retrofit2.Call;
import retrofit2.http.*;

public interface APIInterface {
    @GET("/api/hello")
    Call<String> sayHello(@Header("Authorization") String authorization);

    @GET("/api/hi")
    Call<String> sayHi();

    @POST("api/login")
    Call<String> login(@Body User user);
}
