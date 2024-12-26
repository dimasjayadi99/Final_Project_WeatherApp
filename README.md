# Pantera - Pantau (elektronik) Nusantara 
Aplikasi berbasis mobile untuk final project menggunakan Flutter. Aplikasi ini menyediakan informasi cuaca terkini dan gempa bumi di Indonesia menggunakan data dari BMKG (Badan Meteorologi, Klimatologi, dan Geofisika). Aplikasi ini memanfaatkan Firebase Auth untuk autentikasi pengguna.

![Frame 4](https://github.com/user-attachments/assets/95d01ae0-97d8-458d-9a1d-75669a3c70c6)
![Salinan dari Desain Tanpa Judul (1)](https://github.com/user-attachments/assets/2a96963e-69ed-460d-aa1a-5988d01a70bf)

## Instalasi
1. **Clone repository ini**:  
   Buka terminal dan jalankan perintah berikut:
   ```bash
   git clone <URL_REPOSITORY>

2. **Mengunduh semua dependency**
   ```dependency
   flutter pub get
   ```
3. **Jalankan aplikasi**
   ```dependency
   flutter run
   ```
   
## Fitur Aplikasi
- Authentikasi akun
- Perkiraaan cuaca terkini dan dua hari berikutnya
- Informasi terkini terkait gempa bumi, titik lokasi, edukasi dan lainnya
- Berita terupdate mengenai iklim dan bencana (coming soon)
- Notifikasi gempa bumi (coming soon)

## Third Party
- `getx`: Untuk manajemen state.
- `dio`: Untuk melakukan permintaan HTTP ke API.
- `shared_preferences`: Digunakan untuk menyimpan data secara lokal di perangkat..
- `firebase`: Digunakan untuk autentikasi pengguna dan penyimpanan data secara real-time.
- `etc`.

## API
- `Cuaca`: https://data.bmkg.go.id/prakiraan-cuaca/
- `Gempa`: https://data.bmkg.go.id/gempabumi/

## UI Design
- `Figma`: (https://www.figma.com/design/PACqDKE7ZtppuvQxBGHna2/Pantera-UI?node-id=4-2&t=pI7224sm6LOR5glR-1)

## Struktur Folder
```
lib/
└── app/
    ├── core/
    │   ├── constant/
    │   ├── data/
    │   ├── dependency/
    │   ├── utils/
    │   └── etc/
    ├── config/
    │   ├── router/
    │   ├── api_config/
    │   └── etc/
    ├── features/
    │   ├── feature_name/
    │   │   ├── data/
    │   │   │   ├── data_sources/
    │   │   │   ├── models/
    │   │   │   └── repositories/
    │   │   ├── domain/
    │   │   │   ├── entities/
    │   │   │   ├── repositories/
    │   │   │   └── use_case/
    │   │   └── presentation/
    │   │       ├── bindings/
    │   │       ├── controllers/
    │   │       ├── pages/
    │   │       └── widgets/
    ├── shared/
    └── main.dart
```

## Credit
- [Github](https://github.com/dimasjayadi99)
- [Linekdin](https://www.linkedin.com/in/dimasjayadi99/)
