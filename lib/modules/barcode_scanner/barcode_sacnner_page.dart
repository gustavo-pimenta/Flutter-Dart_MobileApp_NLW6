import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:payflow/shared/widgets/set_label_button/set_label_button.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({ Key? key }) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: 'Não foi possível encontrar um código de barras.', 
      subtitle: 'Tente escanear novamente seu boleto.',
      primaryLabel: 'Escanear novamente', 
      primaryOnPressed: () {  }, 
      secondaryLabel: 'Digitar o código', 
      secondaryOnPressed: () {  }, 
    );
    
    
    return SafeArea(
      top: true,
      right: true,
      left: true,
      bottom: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
                "Escaneie o código de barras do boleto",
                style: TextStyles.buttonBackground,
            ),
            centerTitle: true,
            leading: BackButton(
              color: AppColors.background,
            )
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                color: Colors.black.withOpacity(0.75),
                )
              ),
              Expanded(
                flex: 2,
                child: Container(
                color: Colors.transparent,
                )
              ),
              Expanded(
                child: Container(
                color: Colors.black.withOpacity(0.75),
                )
              ),
            ],
          ),
          bottomNavigationBar: SetLabelButton(
            primaryLabel: "Inserir código do boleto", 
            primaryOnPressed: () {}, 
            secondaryLabel: "Adicionar da galeria", 
            secondaryOnPressed: () {},
          ),
        ),
      ),
    );
  }
}