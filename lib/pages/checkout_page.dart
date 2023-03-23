import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:pedikia/pages/home/home_page.dart';
import 'package:pedikia/pages/home/main_page.dart';
import 'package:pedikia/theme.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  bool isChecked = false;
  String _date = "Not set";
  String _time = "Not set";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget selectedService() {
      return Container(
        margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Layanan yang dipilih',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  top: 20.0,
                  left: 10.0,
                  right: 10.0,
                  bottom: 10.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Baby  Massage  (45 Menit)',
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              color: Color(0xff4F4F4F),
                            ),
                          ),
                        ),
                        Text(
                          'Rp. 90.000,-',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Total',
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                        Text(
                          'Rp. 90.000,-',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget addressInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Masukkan Alamat Lengkap',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              // height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: TextField(
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    color: Color(0xff4F4F4F),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Masukkan Alamat Lengkap',
                    hintStyle: primaryTextStyle.copyWith(
                      fontSize: 12,
                      color: Color(0xff4F4F4F),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget dateInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tanggal Reservasi',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: TextButton(
                  onPressed: () {
                    DatePicker.showDateTimePicker(context,
                        theme: DatePickerTheme(
                          doneStyle: TextStyle(color: primaryColor),
                        ),
                        showTitleActions: true,
                        minTime: DateTime.now(),
                        maxTime: DateTime(2024, 6, 7, 05, 09),
                        onChanged: (date) {
                      print('change $date in time zone ' +
                          date.timeZoneOffset.inHours.toString());
                      _date = date.timeZoneOffset.inHours.toString();
                    }, onConfirm: (date) {
                      _date = date.timeZoneOffset.inHours.toString();
                      print('confirm $date');
                    }, locale: LocaleType.id, currentTime: DateTime.now());
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit_calendar_rounded,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Pilih Tanggal Reservasi',
                        style: TextStyle(color: primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget confirmBox() {
      return Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              // height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Saya mengerti bahwa Pedikia mengawasi dan bertindak tegas terhadap segala pelanggaran, termasuk pelecehan seksual sesuai hukum dan undang-undang yang berlaku.',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          color: Color(0xff4F4F4F),
                        ),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: primaryColor,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget butttonDialog(BuildContext context) {
      return MaterialButton(
        minWidth: 300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: primaryColor,
        onPressed: () => Dialogs.materialDialog(
          color: Colors.white,
          msg: 'Terapis akan segera menghubungi anda',
          title: 'Selamat, reservasi berhasil dibuat!',
          titleStyle: primaryTextStyle.copyWith(
            fontSize: 15,
            fontWeight: bold,
          ),
          customView: Container(
            height: 200,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/baby_happy.png'),
              ),
            ),
          ),
          dialogWidth: kIsWeb ? 0.3 : null,
          context: context,
          actions: [
            IconsButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              text: 'Oke',
              color: primaryColor,
              textStyle: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: medium,
                color: Colors.white,
              ),
              iconColor: Colors.white,
            ),
          ],
        ),
        child: Text(
          "Reservasi",
          style: primaryTextStyle.copyWith(
            fontSize: 20,
            fontWeight: medium,
            color: Colors.white,
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomSheet: Container(
        margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          bottom: 20.0,
        ),
        height: 40.0,
        width: 364,
        child: butttonDialog(
          context,
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: primaryTextStyle.copyWith(
            fontSize: 18.0,
            fontWeight: bold,
            color: primaryColor,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          bottom: 100.0,
        ),
        child: Column(
          children: [
            selectedService(),
            addressInput(),
            dateInput(),
            confirmBox(),
          ],
        ),
      ),
    );
  }
}
