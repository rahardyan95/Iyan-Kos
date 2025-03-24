import 'package:flutter/material.dart';
import 'package:iyan_kos/theme.dart';
import 'package:iyan_kos/widgets/bottom_navbar_item.dart';
import 'package:iyan_kos/widgets/city_card.dart';
import 'package:iyan_kos/models/city.dart';
import 'package:iyan_kos/widgets/space_card.dart';
import 'package:iyan_kos/models/space.dart';
import 'package:iyan_kos/widgets/tips_card.dart';
import 'package:iyan_kos/models/tips.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(height: 24),
            //NOTE : TITLE/Header
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 30),
            // NOTE: POPULAR CITIES
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Popular Cities',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            // ignore: sized_box_for_whitespace
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24),
                  CityCard(
                    city: City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/city1.png',
                      isPopular: false,
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    city: City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/city2.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    city: City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/city3.png',
                      isPopular: false,
                    ),
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            //NOTE: RECOMMENDED SPACE
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Recommended Space',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SpaceCard(
                    space: Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/space1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Germany',
                      rating: 4,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    space: Space(
                      id: 2,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/space2.png',
                      price: 20,
                      city: 'Seattle',
                      country: 'USA',
                      rating: 5,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    space: Space(
                      id: 3,
                      name: 'Darrling How',
                      imageUrl: 'assets/space3.png',
                      price: 11,
                      city: 'Jakarta',
                      country: 'Indonesia',
                      rating: 3,
                    ),
                  ),
                ],
              ),
            ),
            //NOTE: TIPS & GUIDANCE
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Tips & Guidance',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  TipsCard(
                    tips: Tips(
                      id: 1,
                      imageUrl: 'assets/tips1.png',
                      title: 'City Guidelines',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  SizedBox(height: 20),
                  TipsCard(
                    tips: Tips(
                      id: 2,
                      imageUrl: 'assets/tips2.png',
                      title: 'Jakarta Fairship',
                      updatedAt: '11 Dec',
                    ),
                  ),
                ],
              ),
            ),
            //NOTE: FOOTER
            SizedBox(height: 50 + 40),
            // ignore: sized_box_for_whitespace
          ],
        ),
      ),
      floatingActionButton: Container(
                height: 65,
                width: MediaQuery.of(context).size.width - (2 * 24),
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: const Color(0xffF6F7F8),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_home.png',
                      isActive: true,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_email.png',
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_card.png',
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_love.png',
                      isActive: false,
                    ),
                  ],
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}