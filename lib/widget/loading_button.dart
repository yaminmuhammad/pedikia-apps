import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      margin: EdgeInsets.only(top: 15),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'Loading',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                color: Colors.white,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
