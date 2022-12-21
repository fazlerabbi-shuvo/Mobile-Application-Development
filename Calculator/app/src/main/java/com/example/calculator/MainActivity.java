package com.example.calculator;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements OnClickListener{
TextView text_display,text_result;
Button btn_ac,btn_mod,btn_plus_minus,btn_0,btn_1,btn_2,btn_3,btn_4,btn_5,btn_6,btn_7,btn_8,btn_9,btn_dot,btn_enter,btn_add,btn_sub,btn_mul,btn_div;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        text_display = findViewById(R.id.text_display);
        text_result = findViewById(R.id.text_result);
        btn_ac = findViewById(R.id.btn_ac);
        btn_mod = findViewById(R.id.btn_mod);
        btn_dot = findViewById(R.id.btn_dot);
        btn_plus_minus = findViewById(R.id.btn_plus_minus);
        btn_add = findViewById(R.id.btn_add);
        btn_sub = findViewById(R.id.btn_sub);
        btn_mul = findViewById(R.id.btn_mul);
        btn_div = findViewById(R.id.btn_div);
        btn_enter = findViewById(R.id.btn_enter);
        btn_0 = findViewById(R.id.btn_0);
        btn_1 = findViewById(R.id.btn_1);
        btn_2 = findViewById(R.id.btn_2);
        btn_3 = findViewById(R.id.btn_3);
        btn_4 = findViewById(R.id.btn_4);
        btn_5 = findViewById(R.id.btn_5);
        btn_6 = findViewById(R.id.btn_6);
        btn_7 = findViewById(R.id.btn_7);
        btn_8 = findViewById(R.id.btn_8);
        btn_9 = findViewById(R.id.btn_9);

        btn_ac.setOnClickListener(this);
        btn_mod.setOnClickListener(this);
        btn_dot.setOnClickListener(this);
        btn_plus_minus.setOnClickListener(this);
        btn_add.setOnClickListener(this);
        btn_sub.setOnClickListener(this);
        btn_mul.setOnClickListener(this);
        btn_div.setOnClickListener(this);
        btn_enter.setOnClickListener(this);
        btn_0.setOnClickListener(this);
        btn_1.setOnClickListener(this);
        btn_2.setOnClickListener(this);
        btn_3.setOnClickListener(this);
        btn_4.setOnClickListener(this);
        btn_5.setOnClickListener(this);
        btn_6.setOnClickListener(this);
        btn_7.setOnClickListener(this);
        btn_8.setOnClickListener(this);
        btn_9.setOnClickListener(this);
    }
    @Override
    public void onClick(View view) {
        Button button = (Button) view;
        String buttontext = button.getText().toString();
        //text_result.setText(buttontext);
        String datatocalucation = text_result.getText().toString();
        datatocalucation = datatocalucation+buttontext;
        text_result.setText(datatocalucation);

        if(view.getId() == R.id.btn_ac)
        {
           btn_ac.setText('0');
        }

    }
}