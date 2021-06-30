import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:auto_size_text/auto_size_text.dart';

class CongratulationGift extends StatelessWidget {
  void onPressed(BuildContext context, String accountNumber) {
    Clipboard.setData(new ClipboardData(text: accountNumber)).then((value) =>
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("계좌번호가 복사되었습니다"))));
  }

  Widget _buildButton(BuildContext context, String receiver, accountNumber) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            receiver,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(width: 20),
          TextButton(
              onPressed: () => onPressed(context, accountNumber),
              child: AutoSizeText(
                accountNumber,
                maxLines: 2,
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(20.0),
        child: Column(
          children: [
            AutoSizeText('신랑 신부에게 마음 전하기',
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 50),
            _buildButton(context, '신랑 김도진', '카카오뱅크 3333-04-6486265'),
            SizedBox(height: 20),
            _buildButton(context, '신부 김채은', '카카오뱅크 3333-08-2397114'),
          ],
        ));
  }
}