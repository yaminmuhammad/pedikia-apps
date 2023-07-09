import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pedikia/models/service_model.dart';
import 'package:pedikia/pages/detail_service_page.dart';
import 'package:pedikia/providers/wishlist_provider.dart';
import 'package:pedikia/theme.dart';
import 'package:provider/provider.dart';

class WishlistCard extends StatelessWidget {
  final ServiceModel service;
  WishlistCard(this.service);

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailServicePage(service),
          ),
        );
      },
      child: Container(
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
          color: secondaryColor,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                service.galleries![0].url,
                width: 100,
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
                    service.name!,
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '   Rp ${service.price!.toStringAsFixed(0).replaceAll('.', ',')}',
                    style: priceTextStyle,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                wishlistProvider.setService(service);
              },
              child: Image.asset(
                'assets/button_wishlist_pink.png',
                width: 34,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
