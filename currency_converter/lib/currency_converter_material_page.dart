//import 'dart:html';

import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State createState(){
    return _CurrencyConverterMaterialPage();
  } 
  
}
class _CurrencyConverterMaterialPage extends State{
  double result=0;
  final TextEditingController textEditingController = TextEditingController(); //takes input n lets us use it in our app
  void convert(){
    result = double.parse(textEditingController.text) * 81;
  }
  @override
  void dispose() {
    
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    //app properties ------------------------------------------------------------------------------------
    const border = OutlineInputBorder(
        //borderRadius: BorderRadius.all(Radius.elliptical(60, 60)),
        borderSide: BorderSide(
            color: Color.fromARGB(255, 0, 0, 0),
            width: 4,
            style: BorderStyle.solid));
    //-----------------------------------------------------------------------------------------------------
    
      return Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            elevation: 0,
            title: const Text("Currency Converter", textAlign: TextAlign.center),
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "INR ${result !=0? result.toStringAsFixed(2): result.toStringAsFixed(0)}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                  
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    controller: textEditingController,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    decoration: const InputDecoration(
                        hintText: "Please enter your amount in USD",
                        hintStyle: TextStyle(
                            fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        prefixIcon: Icon(Icons.monetization_on),
                        prefixIconColor: Colors.blueGrey,
                        focusedBorder: border,
                        enabledBorder: border),
                  ),
                  const SizedBox(height: 16,),
                  ElevatedButton(
                    onPressed: () {
                      convert();
                      setState(() {});
                      
                      //print(result);
                    
                    },
                
                    //print(result);},
                
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shadowColor: MaterialStatePropertyAll(Colors.black12),
                        minimumSize:
                            MaterialStatePropertyAll(Size(double.infinity, 50)),
                        shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))))),
                    child: const Text(
                      "Convert",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ));
  }

}

