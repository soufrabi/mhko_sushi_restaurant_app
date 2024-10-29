import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mk_sushi_restaurant_app/core/widgets/custom_button.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  Widget buildPromoCard() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: const Color(0xFF7F3431),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Get 32% promo",
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(text: "Redeem", onTap: () {}),
            ],
          ),
          Image.asset(
            "assets/many_sushi.png",
            width: 150,
            height: 150,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBDBDB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFD0D0D0),
        title: const Text("Tokyo"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildPromoCard(),
              const SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 1,
                autocorrect: false,
                autofocus: false,
                decoration: InputDecoration(
                    hintText: "Search here...",
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Food Menu",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.28,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 180,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(right: 10.0),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/tuna.png",
                              height: 140,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Tuna Sushi",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$21.0",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "4.3",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 18.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xFFEFEFEF),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/salmon_eggs_cylinder.png",
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Salmon Eggs",
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text("\$21.00"),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.favorite_outline,
                      size: 28,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
