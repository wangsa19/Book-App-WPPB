import 'package:book_app/detail_page.dart';
import 'package:book_app/film.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF27C2F2),
      // appBar: AppBar(title: const Text('Home Page')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/banner.jpg", width: double.infinity),

              const SizedBox(height: 20),

              // List Buku
              ListView.builder(
                shrinkWrap: true,
                itemCount: listFilm.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final film = listFilm[index];
                  return GestureDetector(
                    onTap: () {
                      // change page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(film: film),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.only(
                        bottom: 10.0,
                        right: 10.0,
                        left: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.grey,
                            blurRadius: 6.0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(film.image, height: 150),
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  film.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  film.genre,
                                  style: const TextStyle(fontSize: 14),
                                ),
                                const SizedBox(height: 17),

                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => DetailPage(film: film),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(
                                      0xFF27C2F2,
                                    ), // Warna tombol
                                    foregroundColor:
                                        Colors.white, // Warna teks tombol
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 12,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ), // Membuat sudut melengkung
                                    ),
                                    elevation: 5, // Efek bayangan tombol
                                  ),
                                  child: const Text(
                                    'Detail',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
