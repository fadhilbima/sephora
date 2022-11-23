import 'package:flutter/material.dart';
import 'package:sephora_project/home/home_export.dart';
import 'package:sephora_project/register/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Success extends StatelessWidget {
  const Success({Key? key, required this.text}) : super(key: key);

  final String text;


  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Berhasil!', textAlign: TextAlign.center,),
            SizedBox(height: 28),
            Icon(Icons.check_circle_rounded, color: Color(0xFF63F984), size: 81,),
            SizedBox(height: 20),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 35),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('isLoggedIn', true);
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFF2F82FF),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text('Tutup', style: TextStyle(color: Colors.white),),
                  ),
                ),
              )
            )
          ],
        ),
      )
    );
  }
}

class Failed extends StatelessWidget {
  const Failed({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Gagal!', textAlign: TextAlign.center,),
              SizedBox(height: 28),
              Icon(Icons.cancel_rounded, color: Colors.red, size: 81,),
              SizedBox(height: 20),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 35),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return RegisterBuatAkun();
                              }));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color(0xFF2F82FF), width: 1.5)
                              ),
                              child: Center(
                                child: Text('Coba Lagi', style: TextStyle(color: Color(0xFF2F82FF)),),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF2F82FF),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text('Tutup', style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
