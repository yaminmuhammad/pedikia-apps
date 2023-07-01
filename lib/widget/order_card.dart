import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pedikia/models/order_model.dart';
import 'package:pedikia/providers/order_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:provider/provider.dart';

class OrderCard extends StatelessWidget {
  // const OrderCard({Key key}) : super(key: key);
  final OrderModel order;
  OrderCard(this.order);

  @override
  Widget build(BuildContext context) {
    // TransactionSuccessProvider transactionSuccessProvider =
    //     Provider.of<TransactionSuccessProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: secondaryColor,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dipesan tgl : '),
              Text(
                DateFormat('dd-MM-yyyy').format(order.createdAt.toLocal()),
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Jam             : '),
              Text(
                DateFormat('HH:mm:ss').format(order.createdAt.toLocal()),
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Alamat        : '),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  order.address,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Pembayaran : '),
              Text(
                order.payment,
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Biaya Admin : '),
              Text(
                'Rp ${order.extraPrice.toStringAsFixed(0).replaceAll('.', ',')}',
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Status : '),
              Container(
                width: 100,
                height: 25,
                padding: EdgeInsets.only(
                  left: 4,
                  right: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: _getStatusColor(order.status),
                ),
                child: Center(
                  child: Text(
                    order.status,
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      color: whiteColor,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total : '),
              Text(
                'Rp ${order.totalPrice.toStringAsFixed(0).replaceAll('.', ',')}',
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

Color _getStatusColor(String status) {
  switch (status) {
    case "PENDING":
      return Color.fromARGB(255, 219, 219, 4);
    case "SUCCESS":
      return Color.fromARGB(255, 36, 180, 41);
    case "CANCELLED":
      return Colors.red;
    case "FAILED":
      return Colors.red;
    default:
      return Colors.grey;
  }
}
