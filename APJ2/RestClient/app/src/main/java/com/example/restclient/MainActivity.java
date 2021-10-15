package com.example.restclient;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import com.example.restclient.api.APIClient;
import com.example.restclient.api.APIInterface;
import com.example.restclient.pojo.User;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class MainActivity extends AppCompatActivity {

    EditText emailEditText;
    EditText passEditText;
    TextView answerTextView;
    APIInterface apiInterface;
    Callback<String> callback;
    String token;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        emailEditText = findViewById(R.id.editTextTextEmailAddress);
        passEditText = findViewById(R.id.editTextTextPassword);
        answerTextView = findViewById(R.id.textAnswer);
        callback = new Callback<String>() {
            @Override
            public void onResponse(Call<String> call, Response<String> response) {
                if (response.isSuccessful()) {
                    updAnswerTextView(response.body(), true);
                } else {
                    updAnswerTextView("Error code: "+response.code(), false);
                }
            }

            @Override
            public void onFailure(Call<String> call, Throwable t) {
                updAnswerTextView(t.getLocalizedMessage(), false);
                call.cancel();
            }
        };

        apiInterface = APIClient.getClient().create(APIInterface.class);


    }

    private void updAnswerTextView(String text, boolean success){
        answerTextView.setText(text);
        answerTextView.setTextColor(ContextCompat.getColor(getApplicationContext(),success? R.color.successtext:R.color.errortext));


    }
    public void login(View view) {
        User user = new User(emailEditText.getText().toString(), passEditText.getText().toString());
        Call<String> call = apiInterface.login(user);
        call.enqueue(new Callback<String>() {
            @Override
            public void onResponse(Call<String> call, Response<String> response) {
                if (response.isSuccessful()) {
                    updAnswerTextView(response.body(), true);
                    setToken(response.body());
                } else {
                    updAnswerTextView("Error code: "+response.code(), false);

                }


            }

            @Override
            public void onFailure(Call<String> call, Throwable t) {
                updAnswerTextView(t.getLocalizedMessage(), false);
                call.cancel();
            }
        });
//        token=answerTextView.getText().toString();
    }

    public void setToken(String token) {
        this.token = "Bearer "+token;
    }

    public void sayHi(View view) {
        Call<String> call = apiInterface.sayHi();
        call.enqueue(callback);
    }


    public void sayHello(View view) {
        Call<String> call = apiInterface.sayHello(token);
        call.enqueue(callback);
    }
}