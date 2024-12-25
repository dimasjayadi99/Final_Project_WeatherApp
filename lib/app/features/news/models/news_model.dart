class NewsModel {
  final String title;
  final String content;
  final String image;
  final String publish;

  NewsModel({
    required this.title,
    required this.content,
    required this.image,
    required this.publish,
  });
}

final List<NewsModel> list = [
  NewsModel(
    title:
        'Kepala BMKG Pastikan Kesiapan AWOS, LLWAS, dan MAWS, Hadapi Cuaca Ekstrem',
    content:
        'Kepala Badan Meteorologi, Klimatologi, dan Geofisika (BMKG), Dwikorita Karnawati, melakukan inspeksi mendalam ke beberapa alat pemantau cuaca milik BMKG di wilayah Surabaya, Jawa Timur. Alat-alat seperti AWOS (Automatic Weather Observation System), LLWAS (Low Level Wind Shear Alert System), dan MAWS (Meteorological Aerodrome Weather Station) dikonfirmasi dalam kondisi siap menghadapi cuaca ekstrem. Dwikorita menekankan pentingnya kesiapan teknologi ini dalam memberikan data real-time yang akurat untuk membantu penerbangan dan aktivitas masyarakat lainnya. Kesiapan alat-alat ini sangat penting terutama mengingat potensi peningkatan intensitas cuaca ekstrem akibat perubahan iklim.',
    image:
        'https://th.bing.com/th/id/OIP.KO31wmcM2JfaN45GKIh0kAHaEK?rs=1&pid=ImgDetMain',
    publish: '8 Desember 2024',
  ),
  NewsModel(
    title:
        'BMKG: Fenomena El Nino Diprediksi Meningkatkan Suhu Global pada 2025',
    content:
        'BMKG telah mengeluarkan peringatan terkait potensi meningkatnya suhu global pada tahun 2025 akibat fenomena El Nino yang sedang berkembang. Fenomena ini, yang ditandai dengan pemanasan permukaan laut di wilayah Samudra Pasifik tengah dan timur, dapat memengaruhi pola cuaca global. Dalam konferensi pers, BMKG menjelaskan bahwa El Nino tidak hanya berpotensi meningkatkan suhu, tetapi juga dapat menyebabkan kekeringan yang parah di beberapa wilayah di Indonesia. BMKG juga mengimbau masyarakat untuk bersiap menghadapi kemungkinan dampak seperti penurunan hasil pertanian dan kekurangan air.',
    image:
        'https://asset-a.grid.id/crop/0x0:0x0/945x630/photo/2019/07/03/1793250141.jpg',
    publish: '10 Desember 2024',
  ),
  NewsModel(
    title: 'Gempa Magnitudo 6,5 Guncang Wilayah Jawa Barat',
    content:
        'Wilayah Jawa Barat diguncang gempa dengan magnitudo 6,5 pada pukul 14:30 WIB, yang berpusat di laut sekitar 50 km dari pesisir selatan Cianjur. BMKG melaporkan bahwa gempa ini berada pada kedalaman 25 km, tergolong dangkal, yang dapat memperbesar dampaknya di daratan. Tidak ada ancaman tsunami dari gempa ini, tetapi masyarakat diimbau tetap waspada terhadap potensi gempa susulan. Beberapa bangunan di Cianjur mengalami kerusakan ringan, namun belum ada laporan korban jiwa. Tim tanggap darurat sedang melakukan penilaian dampak di lapangan.',
    image:
        'https://th.bing.com/th/id/OIP.42f4FxN0K7dny0bt8IWKsQHaFj?rs=1&pid=ImgDetMain',
    publish: '12 Desember 2024',
  ),
  NewsModel(
    title: 'BMKG Tingkatkan Edukasi Masyarakat Tentang Mitigasi Bencana',
    content:
        'Dalam upaya meningkatkan kesiapsiagaan masyarakat terhadap bencana alam, BMKG meluncurkan program edukasi nasional yang berfokus pada mitigasi risiko bencana. Program ini mencakup pelatihan di sekolah, kampanye di media sosial, serta workshop komunitas tentang langkah-langkah keselamatan saat terjadi gempa, banjir, atau cuaca ekstrem. Kepala BMKG, Dwikorita Karnawati, menyatakan bahwa kesadaran dan pengetahuan masyarakat adalah kunci untuk meminimalkan korban jiwa dan kerugian material. Program ini juga bekerja sama dengan pemerintah daerah dan organisasi internasional untuk menyebarkan informasi penting ke seluruh pelosok Indonesia.',
    image:
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/750x500/photo/2022/11/21/296410286.jpg',
    publish: '15 Desember 2024',
  ),
];
