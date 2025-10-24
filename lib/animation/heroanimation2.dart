// Q : Advanced Hero Animation Example
// Requirements:
// - Create two screens: GalleryScreen and PhotoDetailScreen
// - On GalleryScreen, display a GridView of images
// - Wrap each image in a Hero widget with a unique tag (e.g., "photo_$index")
// - On tapping any image, navigate to PhotoDetailScreen
// - On PhotoDetailScreen, show the same image in a larger size inside the same Hero tag
// - Add a fade-in animation for the photo description text below the image
// - Use PageRouteBuilder with a custom transition duration (e.g., 700ms)
// - Observe smooth image transition and text fade effect between screens
//
// File: advanced_hero_example.dart

import 'package:flutter/material.dart';

void main() {
  runApp(const AdvancedHeroApp());
}

class AdvancedHeroApp extends StatelessWidget {
  const AdvancedHeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Hero Animation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
      home: const GalleryScreen(),
    );
  }
}

// ------------------- Gallery Screen -------------------
class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> photos = [
      'https://images.unsplash.com/photo-1501785888041-af3ef285b470',
      'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
      'https://images.unsplash.com/photo-1493246507139-91e8fad9978e',
      'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
      'https://images.unsplash.com/photo-1526778548025-fa2f459cd5c1',
      'https://images.unsplash.com/photo-1519681393784-d120267933ba',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Gallery')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: photos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final imageUrl = photos[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 700),
                    pageBuilder:
                        (_, __, ___) => PhotoDetailScreen(
                          imageUrl: imageUrl,
                          tag: 'photo_$index',
                        ),
                  ),
                );
              },
              child: Hero(
                tag: 'photo_$index',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(imageUrl, fit: BoxFit.cover),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// ------------------- Detail Screen -------------------
class PhotoDetailScreen extends StatefulWidget {
  final String imageUrl;
  final String tag;

  const PhotoDetailScreen({
    super.key,
    required this.imageUrl,
    required this.tag,
  });

  @override
  State<PhotoDetailScreen> createState() => _PhotoDetailScreenState();
}

class _PhotoDetailScreenState extends State<PhotoDetailScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: widget.tag,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 16,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 24,
            right: 24,
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Breathtaking View',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Experience the calm beauty of nature with this smooth hero animation. '
                    'Notice how the image transitions seamlessly and the description fades in elegantly.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
