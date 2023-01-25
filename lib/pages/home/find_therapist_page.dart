import 'package:flutter/material.dart';
import "package:flutter_map/flutter_map.dart";
import "package:latlong2/latlong.dart" as latLng;
import 'package:flutter_map/src/layer/tile_layer/tile_layer.dart';
import 'package:pedikia/utils/haversine_distance.dart';
import 'package:pedikia/pages/widgets/therapist_card.dart';
import 'package:pedikia/theme.dart';

class FindTherapistPage extends StatefulWidget {
  @override
  _FindTherapistPageState createState() => _FindTherapistPageState();
}

class _FindTherapistPageState extends State<FindTherapistPage> {
  @override
  final String apiKey = "0XVEgGwagCUhKnrKy4omc4AJy56lMfF3"; // limit penggunaan api key: 2500/day
  Widget build(BuildContext context) {
    final coordinatePoint = new latLng.LatLng(-6.333821997340533, 107.30469244615264);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          backgroundColor: Colors.white,
          title: Text('Cari Terapis Terdekat', style: TextStyle(color: Colors.black)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          height:40,
          width:MediaQuery.of(context).size.width * 0.95,
          child:FloatingActionButton(
            child: Text('Lanjutkan',
                style: TextStyle(fontSize: 18, color: Colors.white)
            ),
            backgroundColor: primaryColor,//child widget inside this button
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/sign-in');
              //task to execute when this button is pressed
            },
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    child: FlutterMap(
                        options: new MapOptions(center: coordinatePoint, zoom: 13.0),
                        children: [
                          new TileLayer(
                            urlTemplate: "https://api.tomtom.com/map/1/tile/basic/main/"
                                "{z}/{x}/{y}.png?key={apiKey}",
                            additionalOptions: {"apiKey": apiKey},
                            maxZoom: 100,
                          ),
                          new MarkerLayer(
                              markers: [
                                new Marker(
                                  width: 80.0,
                                  height: 80.0,
                                  point: coordinatePoint,
                                  builder: (BuildContext context) => Icon(
                                      Icons.my_location,
                                      size: 30.0,
                                      color: primaryColor),
                                ),
                              ]
                          )])),
                Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child:  ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        children: <Widget>[
                          TherapistCard(
                            name: 'Tuti Dianingsih, A.Md.Keb., CHE',
                            address: 'Majalaya, Kab. Karawang',
                            distance: HaversineDistance.getDistance(-6.333821997340533, 107.30469244615264, -6.31938379285837, 107.35526610983572),
                            imageTherapist: 'assets/image_therapist_1.png',
                          ),
                          TherapistCard(
                            name: 'Niki Amelia Rio A.Md.Keb., CHE',
                            address: 'Purwakarta, Kab. Purwakarta',
                            distance: HaversineDistance.getDistance(-6.333821997340533, 107.30469244615264, -6.532062611657165, 107.45895411742566),
                            imageTherapist: 'assets/image_therapist_1.png',
                          ),
                          TherapistCard(
                            name: 'Dewi Dedeh R. A.Md.Keb., CHE',
                            address: 'Majalaya, Kab. Karawang',
                            distance: HaversineDistance.getDistance(-6.333821997340533, 107.30469244615264, -6.3223605714023305, 107.34370026544566),
                            imageTherapist: 'assets/image_therapist_1.png',
                          ),
                          TherapistCard(
                            name: 'Ulfah Naelufar A.Md.Keb., CHE',
                            address: 'Kutawaluya, Kab. Karawang',
                            distance: HaversineDistance.getDistance(-6.333821997340533, 107.30469244615264, -6.098657847860992, 107.33614534391533),
                            imageTherapist: 'assets/image_therapist_1.png',
                          ),
                          TherapistCard(
                            name: 'Tri Mulyani, A.Md.Keb.',
                            address: 'Sukmajaya, Kab. Depok',
                            distance: HaversineDistance.getDistance(-6.333821997340533, 107.30469244615264, -6.395831472035687, 106.8628225858918),
                            imageTherapist: 'assets/image_therapist_1.png',
                          )
                        ]
                    )
                )
              ],
            )
        ));
  }
}