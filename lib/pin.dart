
import 'package:flutter/material.dart';


class AgentPin extends StatefulWidget {
  // final Function() onTap;
  // final String text;

  const AgentPin({
    super.key,
    // required this.onTap,
    // required this.text,
  });

  @override
  State<AgentPin> createState() => _AgentPinState();
}

class _AgentPinState extends State<AgentPin> {
  late final Function() onTap;
  late String text;
  var selectedindex = 0;
  String code = '';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Agent Pin",
          style: TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SizedBox(
        width: width,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DigitHolder(
                            width: width,
                            index: 0,
                            selectedIndex: selectedindex,
                            code: code,
                          ),
                          DigitHolder(
                              width: width,
                              index: 1,
                              selectedIndex: selectedindex,
                              code: code),
                          DigitHolder(
                              width: width,
                              index: 2,
                              selectedIndex: selectedindex,
                              code: code),
                          DigitHolder(
                              width: width,
                              index: 3,
                              selectedIndex: selectedindex,
                              code: code),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 1, 2, 3 text row
                          Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      addDigit(1);
                                    },
                                    child: const Text('1',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      addDigit(2);
                                    },
                                    child: const Text('2',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      addDigit(3);
                                    },
                                    child: const Text('3',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                            ],
                          ),

                          //4, 5, 6 row
                          Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      addDigit(4);
                                    },
                                    child: const Text('4',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      addDigit(5);
                                    },
                                    child: const Text('5',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      addDigit(6);
                                    },
                                    child: const Text('6',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                            ],
                          ),

                          // 7, 8, 9 text row
                          Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      addDigit(7);
                                    },
                                    child: const Text('7',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      addDigit(8);
                                    },
                                    child: const Text('8',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      addDigit(9);
                                    },
                                    child: const Text('9',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                            ],
                          ),

                          // clear, Zero and check icon
                          Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      backspace();
                                    },
                                    child: const Text(
                                      'Clear',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    )),
                              ),
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      addDigit(0);
                                    },
                                    child: const Text('0',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                              Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      delete();
                                    },
                                    child: const Text('Cancel',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),

              // defaultButton(
              //   onTap: () {
              //           Navigator.push(context,
              //               MaterialPageRoute(builder: (context) {
              //             return HomePage();
              //           }));
              //         },
              //  text: "text", 
              //  color: Colors.fadedYellow),
             
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: onTap,
                      child: Container(
                        height: 58,
                        width: 390,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            text,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

//adding digits to the PinTextField
  addDigit(int digit) {
    if (code.length > 3) {
      return;
    }
    setState(() {
      code = code + digit.toString();
      print('Code is $code');
      selectedindex = code.length;
    });
  }

  backspace() {
    if (code.isEmpty) {
      return;
    }
    setState(() {
      code = code.substring(0, code.length - 1);
      selectedindex = code.length;
    });
  }

  void delete() {
    setState(() {
      code = "";
    });
  }
}

class DigitHolder extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final double width;
  final String code;
  const DigitHolder({
    required this.selectedIndex,
    Key? key,
    required this.width,
    required this.index,
    required this.code,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: width * 0.17,
      width: width * 0.17,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: index == selectedIndex ? Colors.green : Colors.black12,
              offset: const Offset(0, 0),
              spreadRadius: 1.5,
              blurRadius: 2,
            )
          ]),
      child: code.length > index
          ? Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.black.withBlue(40),
                shape: BoxShape.circle,
              ),
            )
          : Container(),
    );
  }
}
