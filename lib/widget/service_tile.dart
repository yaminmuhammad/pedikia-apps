import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pedikia/models/service_model.dart';
import 'package:pedikia/theme.dart';

class ServiceTile extends StatelessWidget {
  final ServiceModel service;
  ServiceTile(this.service);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ProductPage(product),
        //   ),
        // );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                service.galleries[0].url,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service.category.name,
                    style: subtitleTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    service.name,
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 80,
                        height: 25,
                        padding: EdgeInsets.only(
                          left: 4,
                          right: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: priceColor,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_price.png',
                              width: 12,
                            ),
                            Text(
                              '   Rp ${service.price.toStringAsFixed(0).replaceAll('.', ',')}',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 10, color: whiteColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 25,
                        padding: EdgeInsets.only(
                          left: 4,
                          right: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: timeColor,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_time.png',
                              width: 12,
                            ),
                            Text(
                              '  60 Menit',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 10, color: whiteColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
