import 'package:flutter/material.dart';

class TherapistCard extends StatelessWidget {
  final String name;
  final String address;
  final double distance;
  final String imageTherapist;
  Color _colorCard = Colors.white;
  TherapistCard({
    required this.name,
    required this.address,
    required this.distance,
    required this.imageTherapist
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: _colorCard,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.grey.withOpacity(0.5))
      ),
      elevation: 5,
      child: ListTile(
        leading: Container(
          height: 60.0,
          width: 60.0,
          child: CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(imageTherapist),
          ),
        ),
        title: Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            )
        ),
        subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.pin_drop_outlined,
                color: Colors.black,
                size: 12,
              ),
              SizedBox(width: 0),
              Flexible(
                child: Text(address + ' (' + distance.toStringAsFixed(2) + ' KM dari lokasimu)',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.left
                ),
              ),
            ]
        ),
        isThreeLine: true,
      ),
    );
  }
}