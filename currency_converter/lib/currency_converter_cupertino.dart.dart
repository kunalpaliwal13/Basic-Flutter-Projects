import 'package:flutter/cupertino.dart';



class CurrencyConverterCupertinoState extends StatefulWidget {
  const CurrencyConverterCupertinoState ({super.key});

  @override
  State createState(){ return __CurrencyConverterCupertinoState();}
}

class __CurrencyConverterCupertinoState extends State<CurrencyConverterCupertinoState > {
 double result=0;
  final TextEditingController textEditingController = TextEditingController(); //takes input n lets us use it in our app
  void convert(){
    result = double.parse(textEditingController.text) * 81;
  }
  @override
  Widget build(BuildContext context) {
    
    //app properties ------------------------------------------------------------------------------------
   
    //-----------------------------------------------------------------------------------------------------
    
      return  CupertinoPageScaffold(
          backgroundColor: Color.fromARGB(255, 186, 186, 194),
          navigationBar:  const CupertinoNavigationBar(
            backgroundColor: Color.fromARGB(255, 186, 186, 194),
            
            middle:  Text("Currency Converter", textAlign: TextAlign.center),
  
          ),
          child:  Center(
            child: Padding(
              padding: const  EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "INR ${result !=0? result.toStringAsFixed(2): result.toStringAsFixed(0)}",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  CupertinoTextField(
                    
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    controller: textEditingController,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    decoration:  BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                      color: CupertinoColors.white,
                    ),
                    placeholder: "Please enter the amt in USD",
                    placeholderStyle: const TextStyle(
                        color: CupertinoColors.black, // Set the placeholder text color to black
                      ),
                    prefix: const Icon(CupertinoIcons.money_dollar_circle_fill)
                  ),     
                        
                  const SizedBox(height: 16,),
                  CupertinoButton(
                    color: CupertinoColors.black,
                    onPressed: () {
                      convert();
                      setState(() {});
                    },
                
                    
                
                    
                    child: const Text(
                      "Convert",
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                  )
                ],
              ),
            ),
          ));
  }

}

