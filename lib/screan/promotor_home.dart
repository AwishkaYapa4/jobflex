import 'package:flutter/material.dart';
import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/widget/footer.dart';

class PromotorHomePage extends StatelessWidget {
  const PromotorHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF1FA), // Light blue background
      appBar: AppBar(
        backgroundColor: const Color(0xFFECF1FA),
        elevation: 0,
        title: const Text(
          "Your Needs",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF233A66),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Color(0xFF233A66)),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          20.0,
          10.0,
          20.0,
          5.0,
        ), // Added bottom padding
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: const [
                  CategoryCard(
                    image: 'img/event_crew.png',
                    title: 'Event Crew',
                  ),
                  CategoryCard(
                    image: 'img/supermarket.png',
                    title: 'Super market',
                  ),
                  CategoryCard(
                    image: 'img/supportive_team.png',
                    title: 'Supportive team',
                  ),
                  CategoryCard(image: 'img/marketing.png', title: 'Marketing'),
                  CategoryCard(image: 'img/pet_care.png', title: 'pet care'),
                  CategoryCard(
                    image: 'img/health_care.png',
                    title: 'Health Care',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle enter service/job action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD6E4FF),
                  foregroundColor: const Color(0xFF233A66),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Enter your service / job")],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.image, required this.title})
    : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 80),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: Color(0xFF233A66)),
          ),
        ],
      ),
    );
  }
}
