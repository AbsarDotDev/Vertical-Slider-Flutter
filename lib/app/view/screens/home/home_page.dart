// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map<String, String>> data = [
    {
      'title': 'Welcome',
      'subtitle': 'Travel',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget metus fringilla aliquet.',
      'img': 'image1.png',
    },
    {
      'title': 'Travel',
      'subtitle': 'Mountains',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget metus fringilla aliquet.',
      'img': 'image2.jpg',
    },
    {
      'title': 'Travel',
      'subtitle': 'Easy',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget metus fringilla aliquet.',
      'img': 'image3.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('/images/${data[index]['img']}'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data[index]['title']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data[index]['subtitle']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          data[index]['description']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(data.length, (dotIndex) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == dotIndex ? 25 : 10,
                        decoration: BoxDecoration(
                          color: index == dotIndex
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
