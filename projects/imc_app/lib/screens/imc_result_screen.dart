import 'package:flutter/material.dart';
import 'package:imc_app/core/app_colors.dart';
import 'package:imc_app/core/button_style.dart';
import 'package:imc_app/core/text_style.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int weight;
  const ImcResultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolbarResult(),
      body: bodyResult(context),
    );
  }

  Padding bodyResult(BuildContext context) {
    double fixedHeight = height / 100;
    double imcResult = weight / (fixedHeight * fixedHeight);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tu Resultado", style: AppTextStyle.titleText),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 32,
                bottom: 32,
                left: 16,
                right: 16,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      getMyTextByIMC(imcResult),
                      style: TextStyle(
                        fontSize: 30,
                        color: getColorByIMC(imcResult),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      imcResult.toStringAsFixed(2),
                      style: AppTextStyle.resultStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        getDescriptionByIMC(imcResult),
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ComponenteButtonStyle.styleButton,
                child: Text("Finalizar", style: AppTextStyle.bodyText),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar toolbarResult() {
    return AppBar(
      title: Text("Resultado"),
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    );
  }

  Color getColorByIMC(double imcResult) {
    return switch (imcResult) {
      < 18.5 => Colors.blue,
      < 24.9 => Colors.green,
      < 29.99 => Colors.orange,
      _ => Colors.red,
    };
  }

  String getMyTextByIMC(double imcResult) {
    return switch (imcResult) {
      < 18.5 => "IMC Bajo",
      < 24.9 => "IMC Normal",
      < 29.99 => "Sobrepeso",
      _ => "Obesidad",
    };
  }

  String getDescriptionByIMC(double imcResult) {
    return switch (imcResult) {
      < 18.5 => "Estas bien, pero deberias subir un poco de peso.",
      < 24.9 => "Estas bien, tu peso es estable.",
      < 29.99 => "Estas un poco subido de peso, deberias cuidarte.",
      _ => "Estas obeso, deberias tomar medidas para bajar de peso.",
    };
  }
}
