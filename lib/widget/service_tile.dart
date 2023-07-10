import 'package:flutter/material.dart';
import 'package:pedikia_id/models/service_model.dart';
import 'package:pedikia_id/pages/detail_service_page.dart';
import 'package:pedikia_id/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class ServiceTile extends StatelessWidget {
  final ServiceModel service;
  ServiceTile(this.service);

  @override
  Widget build(BuildContext context) {
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
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                imageUrl: service.galleries![0].url,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                placeholder: (context, url) => Shimmer.fromColors(
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  enabled: true,
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
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
                    service.category!.name,
                    style: subtitleTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    service.name!,
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 10,
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
                              '   Rp ${service.price!.toStringAsFixed(0).replaceAll('.', ',')}',
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
