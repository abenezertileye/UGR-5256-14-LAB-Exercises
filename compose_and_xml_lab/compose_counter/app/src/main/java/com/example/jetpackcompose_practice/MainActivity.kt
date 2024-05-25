package com.example.jetpackcompose_practice

import android.graphics.drawable.Icon
import android.icu.lang.UCharacter.VerticalOrientation
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.runtime.*
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.Role.Companion.Image


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Surface(
                color = Color(0xFFF6DCAC)
            ) {
                Outline()
            }
        }
    }
}

var num by mutableStateOf(0)

fun increment(){
    num++
    println(num);
}

fun decrement(){
    num--
    println(num);
}

fun reset(){
    num = 0
    println(num)
}

@Composable
fun Buttons(value:String, function: () -> Unit){

    Button(
        colors = ButtonDefaults.buttonColors(
            containerColor = Color(0xFF028391)
        ),
        onClick = { function() }
    ) {
        Text(text = value, style = TextStyle(fontSize = 20.sp))
    }
}


@Preview(showSystemUi = true)
@Composable
fun Outline() {

    Box(Modifier
        .padding(16.dp)
    ) {

        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
        ){
            Box(
                contentAlignment = Alignment.Center,
                modifier = Modifier
                    .fillMaxWidth()
                    .height(100.dp)
//                .border(width = 10.dp, brush = Color.Black)
                    .background(
                        color = Color(0xFFFEAE6F),
                        shape = RoundedCornerShape(10.dp)
                    )
            ){
                Text(text = "$num", style = TextStyle(fontSize = 30.sp))
            }

            Spacer(modifier = Modifier.height(30.dp))

            Row(
                horizontalArrangement = Arrangement.Center,
                modifier = Modifier
                    .fillMaxWidth()
            ) {
                Buttons(value = "+", function = ::increment)
                Buttons(value = "-", function = ::decrement)
            }
            Buttons(value = "Reset", function = ::reset)

        }
    }

}