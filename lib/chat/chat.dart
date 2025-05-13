import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ChatUI());
  }
}

class ChatUI extends StatelessWidget {
  final List<Map<String, dynamic>> messages = [
    {
      "name": "Tanya Nur",
      "message": "Thank your service.",
      "time": "1 mins ago",
      "unread": "5",
      "avatar": "https://i.pravatar.cc/150?img=1",
    },
    {
      "name": "keny Salgado",
      "message": "pls send more details",
      "time": "16 mins ago",
      "unread": "1",
      "avatar": "https://i.pravatar.cc/150?img=2",
    },
    {
      "name": "Avin Silva",
      "message": "can you?",
      "time": "1 hour ago",
      "avatar": "https://i.pravatar.cc/150?img=3",
    },
    {
      "name": "Elvin Rudrigo",
      "message": "I'll inform later",
      "time": "4 hours ago",
      "avatar": "https://i.pravatar.cc/150?img=4",
    },
    {
      "name": "Shriya Fernando",
      "message": "Hi..!!",
      "time": "8 hours ago",
      "avatar": "https://i.pravatar.cc/150?img=5",
    },
    {
      "name": "Sathya Leno",
      "message": "Yeah..",
      "time": "12 hours ago",
      "avatar": "https://i.pravatar.cc/150?img=6",
    },
    {
      "name": "Henry Singh",
      "message": "i’ll send pickup point",
      "time": "21 hours ago",
      "avatar": "https://i.pravatar.cc/150?img=7",
    },
  ];

  ChatUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.add, size: 30, color: Color(0xFF1C2C56)),
                Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF1C2C56),
                  ),
                ),
                Icon(Icons.search, size: 30, color: Color(0xFF1C2C56)),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final msg = messages[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(msg["avatar"]!),
                          radius: 24,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                msg["name"]!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                msg["message"]!,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (msg.containsKey("unread"))
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Color(0xFF1C2C56),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              msg["unread"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        const SizedBox(width: 10),
                        Text(
                          msg["time"]!,
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF233A66),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Jobs'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}
