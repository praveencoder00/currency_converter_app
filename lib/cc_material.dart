import 'package:flutter/material.dart';

class CcHomePage extends StatefulWidget {
  const CcHomePage({super.key});
  @override
  State createState() => _CcHomepvt();
}

class _CcHomepvt extends State {
  double result = 0;
  final TextEditingController usdInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        centerTitle: true,
        toolbarHeight: 70,
        title: const Text('Currency Conveter'),
        backgroundColor: const Color.fromARGB(255, 72, 72, 72),
      ),
      backgroundColor: const Color.fromARGB(255, 35, 35, 35),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result = 0}',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(71, 166, 166, 1),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: usdInput,
                style: const TextStyle(
                  color: Color.fromARGB(179, 0, 0, 0),
                  fontSize: 18,
                ),
                decoration: const InputDecoration(
                  hintText: 'Enter the Amount in INR',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  suffixIcon: Icon(Icons.monetization_on_outlined),
                  suffixIconColor: Color.fromARGB(255, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  contentPadding: EdgeInsetsDirectional.only(
                    start: 13.0,
                    bottom: 1,
                    top: 1,
                    end: 1,
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(usdInput.text) * 83;
                  });
                },
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromARGB(255, 0, 112, 0)),
                  minimumSize:
                      MaterialStatePropertyAll(Size(double.infinity, 50)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class CcHomePage extends StatelessWidget {
//   const CcHomePage({super.key});

// }
/*

SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 18),
                  child: SizedBox(
                    child: Column(
                      children: [
                        Icon(
                          Icons.water_drop_rounded,
                          size: 33,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Humidity',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '95',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 18),
                  child: SizedBox(
                    child: Column(
                      children: [
                        Icon(
                          Icons.air,
                          size: 33,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Wind Speed',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '7.67',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 25),
                  child: SizedBox(
                    child: Column(
                      children: [
                        Icon(
                          Icons.beach_access,
                          size: 33,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Pressure',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '1006',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

 */