import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Tab1 extends StatelessWidget {
  final List<String> imgList = [
    'assets/phone1.jpg',
    'assets/phone2.jpg',
    'assets/phone3.jpg',
    // 'assets/phone4.jpg',
    'assets/phone5.jpg',
    'assets/phone6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return
      Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child:
            CarouselSlider(
              options: CarouselOptions(
              height: 500.0,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 3 / 2,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              viewportFraction: 0.8,
            ),
            items: imgList.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      Positioned(
                        bottom: 50,
                        left: 16,
                        right: 16,
                        child: DestinationInfoOverlay(
                          title: 'Mount Fuji, Tokyo',
                          location: 'Tokyo, Japan',
                          rating: 4.8,
                        ),
                      ),
                    ]
                  );
                },
              );
            }).toList(),
          )
      );

  }
}



class DestinationInfoOverlay extends StatelessWidget {
  final String title;
  final String location;
  final double rating;

  const DestinationInfoOverlay({
    super.key,
    required this.title,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7), // Semi-transparent dark background
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),

          // Location + Rating Row
          Row(
            children: [
              // Location Icon + Text
              Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.white, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    location,
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
              const Spacer(), // Pushes rating to the right
              // Rating Icon + Number
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.yellow, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    rating.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}