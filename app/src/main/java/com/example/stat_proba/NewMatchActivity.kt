package com.example.stat_proba

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.example.stat_proba.databinding.ActivityNewMatchBinding

class NewMatchActivity : AppCompatActivity() {

    private lateinit var binding: ActivityNewMatchBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityNewMatchBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.btnCreateMatch.setOnClickListener {
            val homeTeam = binding.etHomeTeam.text.toString()
            val awayTeam = binding.etAwayTeam.text.toString()

            // később ide kerül majd a mentés
        }
    }
}
