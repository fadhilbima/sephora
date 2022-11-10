import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/fifth_widget/dialog.dart';

class AgreeDisagreeButton extends StatelessWidget {
  const AgreeDisagreeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) =>
                              Failed(
                                text: 'Akun Anda gagal terdaftar di akun Sephora '
                                    'Banking. Silakan coba lagi.',
                              )
                      );
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xFF2F82FF))
                      ),
                      child: Center(
                        child: Text('Tidak', style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2F82FF))),
                      ),
                    ),
                  )
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) =>
                              Success(
                                text: 'Selamat! Akun Anda telah berhasil '
                                    'terdaftar di akun Sephora Banking. '
                                    'Silakan menikmati semua fitur Sephora '
                                    'Banking.',
                              )
                      );
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFF2F82FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Setuju', style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                      ),
                    ),
                  )
              ),
            ],
          ),
        )
      ],
    );
  }
}
