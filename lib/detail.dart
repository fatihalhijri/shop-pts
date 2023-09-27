// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, unused_element, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:shop_pts/cart.dart';

class Detail extends StatefulWidget {
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int selectedIndex = 0;

  
  bool SecuredLove = true;
  void _SecuredLove(){
    setState(() {
      SecuredLove =!SecuredLove;
    });
  }
  bool SecuredStar = true;
  void _SecuredStar (){
    setState(() {
      SecuredStar = !SecuredStar;
    });
  }

  Widget kategori(int index, String namabar) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border:selectedIndex == index ? Border.all(color: Color(0xff00B14F), width: 0) : Border.all(color: Colors.grey,width: 1),
              color: selectedIndex == index ? Color(0xff00B14F).withOpacity(0.1) : Colors.transparent),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '43',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 130,
        backgroundColor: Colors.white,
        title: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '09:14',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.home,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Iconsax.battery_3full,
                        color: Colors.black,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Iconsax.arrow_left,
                        size: 32,
                        color: Colors.black,
                      )),
                  Text(
                    'Detail Product',
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: _SecuredLove,
                    child: Image.asset(SecuredLove ?'assets/heart.png' : 'assets/heart2.png'))
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/sepatu-2.png',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'New Balance 992 Grey Original',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 8.0, top: 8.0, bottom: 8.0),
                          child: GestureDetector(
                            onTap: _SecuredStar,
                            child: Image.asset(SecuredStar ?'assets/starno.png' : 'assets/star.png',))
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '(102) | 67 ulasan',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      ' Baca selengkapnya',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    RichText(
                      text: TextSpan(
                          text:
                              'Our Made US 992 mens sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These mens fashion sneakers have a pigskin...',
                          style: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Baca selengkapnya',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.green,
                                    fontSize: 16))
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pilih Ukuran',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Row(
                        children: [
                          kategori(0, '39'),
                          kategori(1, '40'),
                          kategori(2, '41'),
                          kategori(3, '42'),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp1.240.00',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cart()),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'Tambah Keranjang',
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
