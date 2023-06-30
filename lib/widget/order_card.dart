import 'package:flutter/material.dart';
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
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // color: secondaryColor,
      ),
      child: Row(
        children: [
          Text(
            // trSuccess.therapist.name,
            order.address,
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            order.address,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order.status,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                // Text(
                //   '   Rp ${service.price.toStringAsFixed(0).replaceAll('.', ',')}',
                //   style: priceTextStyle,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
