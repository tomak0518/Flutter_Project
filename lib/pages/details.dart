import 'package:flutter/material.dart';

class Details extends StatelessWidget
{
  final String imagePath;
  final String title;
  final String location;
  final double rating;

  const Details({
    super.key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main Card
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // Background Image
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                      child: Image.asset(
                        imagePath,
                        height: 450,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),

                    // Top Left Back Button
                    Positioned(
                      top: 12,
                      left: 12,
                      child: BackButtonCircle(
                        onPressed: () {
                          Navigator.pop(context); // 👈 Go back to previous screen
                        },
                      ),
                    ),
                    // Top Right Bookmark Button
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.7),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.bookmark_border, size: 16, color: Colors.black),
                      ),
                    ),

                    // Info Overlay at Bottom
                    Positioned(
                      bottom: 50,
                      left: 20,
                      right: 20,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.center,
                            colors: [
                              Colors.black.withValues(alpha: 0.9),
                              Colors.transparent,
                            ],
                          ),
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(20), bottom: Radius.circular(20)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Andes Mountain',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      const Icon(Icons.location_on, color: Colors.white70, size: 16),
                                      const SizedBox(width: 4),
                                      Text(
                                        location,
                                        style: const TextStyle(color: Colors.white70, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  'Price',
                                  style: TextStyle(color: Colors.white70, fontSize: 12),
                                ),
                                Text(
                                  '\$230',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Tabs: Overview / Details
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
                      indicatorColor: Colors.black,
                      tabs: const [
                        Tab(text: 'Overview'),
                        Tab(text: 'Details'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 200,
                      child: TabBarView(
                        children: [
                          // Overview Tab
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    _infoChip(Icons.access_time, '8 hours'),
                                    const SizedBox(width: 16),
                                    _infoChip(Icons.wb_sunny, '16°C'),
                                    const SizedBox(width: 16),
                                    _infoChip(Icons.star, '4.5'),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                const Text(
                                  'This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus.This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus.This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus.',
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          // Details Tab
                          Center(
                            child: Text(
                              'Detailed information coming soon...',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Book Now Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Book Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(width: 8),
                      Icon(Icons.send, size: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoChip(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.grey[600]),
          const SizedBox(width: 4),
          Text(text, style: TextStyle(fontSize: 12, color: Colors.grey[700])),
        ],
      ),
    );
  }
}



class BackButtonCircle extends StatelessWidget {
  final VoidCallback? onPressed;
  final double size;

  const BackButtonCircle({
    super.key,
    this.onPressed,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
        onPressed: onPressed,
      ),
    );
  }
}