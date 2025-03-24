import 'package:flutter/material.dart';
import 'package:iyan_kos/theme.dart';
import 'package:iyan_kos/widgets/facilities_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/btn_back.png', 
                    width: 40),
                  ),
                  Image.asset('assets/btn_wishlist.png', 
                  width: 40),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(height: 328),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      // NOTE: TITLE
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text (
                                'Kuretakeso Hott',
                                style: blackTextStyle.copyWith(fontSize: 22),
                              ),
                              SizedBox(height: 2),
                              Text.rich(TextSpan(text: '\$52',
                              style: purpleTextStyle.copyWith(fontSize: 16),
                              children: [
                              TextSpan(
                              text: ' / month',
                            style: greyTextStyle.copyWith(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/icon_star.png',
                              width: 20,),
                              SizedBox(width: 2),
                              Image.asset('assets/icon_star.png',
                              width: 20,),
                              SizedBox(width: 2),
                              Image.asset('assets/icon_star.png',
                              width: 20,),
                              SizedBox(width: 2),
                              Image.asset('assets/icon_star.png',
                              width: 20,),
                              SizedBox(width: 2),
                              Image.asset('assets/icon_star.png',
                              width: 20,
                              color: greyColor,),
                            ]
                          ),
                        ],
                      ),
                      ),
                      SizedBox(height: 30),
                      // NOTE: MAIN FACILITIES
                      Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        'Main Facilites',
                        style: regulerTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FacilitiesItem(
                          name: 'Kitchen',
                          imageUrl: 'assets/icon_kitchen.png',
                          total: 2,
                        ),
                        FacilitiesItem(
                          name: 'Bedroom',
                          imageUrl: 'assets/icon_bedroom.png',
                          total: 3,
                        ),
                        FacilitiesItem(
                          name: 'Big Lemari',
                          imageUrl: 'assets/icon_cupboard.png',
                          total: 3,
                        ),
                      ],
                    ),
                    ),
                    SizedBox(height: 30),
                    //NOTE: PHOTO
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        'Photos',
                        style: regulerTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 88,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(width: 24),
                          Image.asset('assets/photo1.png', width: 110, height: 88,
                          fit: BoxFit.cover,),
                          SizedBox(width: 24),
                          Image.asset('assets/photo2.png', width: 110, height: 88,
                          fit: BoxFit.cover,),
                          SizedBox(width: 18),
                          Image.asset('assets/photo3.png', width: 110, height: 88,
                          fit: BoxFit.cover,),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    //NOTE: LOCATION
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        'Location',
                        style: regulerTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 6),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Jln. Kappan Sukses No. 20\nPalembang', style: greyTextStyle,),
                        Image.asset('assets/btn_map.png', width: 40,),
                      ],),
                    ),
                    SizedBox(height: 40),
                    //NOTE: BOOK BUTTON
                    Container( 
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      height: 50,
                      width: MediaQuery.of(context).size.width - (2 * 24),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/choose-payment');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: purpleColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        child: Text(
                          'Book Now',
                          style: whiteTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}