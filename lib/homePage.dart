import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget selectedMenu = Container();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: const [
              Icon(Icons.health_and_safety, color: Colors.lightBlue, size: 40),
              SizedBox(width: 10),
              Text(
                "Monitoring Kesehatan",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/doctor-6701719_1280.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedMenu = Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  "Tensi Anda",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text("• Sistolik (atas): 120 mmHg"),
                                Text("• Diastolik (bawah): 80 mmHg"),
                                Text(
                                  "• Waktu Pemeriksaan: 26 Mei 2025, pukul 09.00 WIB",
                                ),
                                Text("• Lengan yang diperiksa: Kanan"),
                                Text("• Posisi Pasien: Duduk"),
                                Text("• Alat Ukur: Digital Omron HEM-7120"),
                                Text(
                                  "• Keterangan Tambahan: Pasien dalam kondisi tenang sebelum pemeriksaan.",
                                ),
                              ],
                            ),
                          );
                        });
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.medical_information,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: 10),
                          const Text(
                            "Tensi",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedMenu = Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gula Darah",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text("• Jenis Pemeriksaan: Gula Darah Sewaktu"),
                                Text("• Hasil: 145 mg/dL"),
                                Text(
                                  "• Waktu Pemeriksaan: 26 Mei 2025, pukul 08.30 WIB",
                                ),
                                Text("• Alat Ukur: Accu-Chek Performa"),
                                Text(
                                  "• Metode Pemeriksaan: Tes darah kapiler (ujung jari)",
                                ),
                                Text("• Kondisi Pasien: Belum sarapan"),
                                Text(
                                  "• Keterangan Tambahan: Pasien mengeluhkan sedikit pusing ringan.",
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Kisaran Normal Gula Darah Sewaktu (GDS):",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("  - Normal: < 140 mg/dL"),
                                Text("  - Pra-diabetes: 140–199 mg/dL"),
                                Text("  - Diabetes: ≥ 200 mg/dL"),
                              ],
                            ),
                          );
                        });
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.bloodtype_sharp,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: 10),
                          const Text(
                            "Gula Darah",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedMenu = Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jantung",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "• Detak Jantung (Heart Rate): 72 bpm (denyut per menit)",
                                ),
                                Text("• Tekanan Darah: 120/80 mmHg"),
                                Text("• Irama Jantung: Normal sinus rhythm"),
                                Text("• Saturasi Oksigen (SpO2): 98%"),
                                Text(
                                  "• Keterangan: Tidak ditemukan adanya aritmia atau gangguan lain pada pemeriksaan. Pasien dalam kondisi stabil.",
                                ),
                                Text(
                                  "• Metode Pemeriksaan: EKG (Elektrokardiogram) / Pemeriksaan Fisik",
                                ),
                              ],
                            ),
                          );
                        });
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.heart_broken,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: 10),
                          const Text(
                            "Jantung",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 9, 175, 62),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            selectedMenu,
          ],
        ),
      ),
    );
  }
}
