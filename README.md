# Pedikia

<!-- markdownlint-disable -->
<p align="center">
    <img width="800px" src=https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/banner.png>
</p>
<hr/>

## Backend

Sistem Pedikia menggunakan backend berbasis HTTP dan dikembangkan dengan framework Laravel. Anda dapat menemukan source code dari backend pada tautan [berikut](https://github.com/yaminmuhammad/babyspa-backend).


## Cara coba aplikasinya? 

Mau membangun Pedikia dari source code? Mari ikuti langkah-langkah berikut.

### Clone repository Pedikia

Anda dapat mengklon repository Pedikia, mengunduh arsip zip dari repository ini, atau menggunakan perintah git berikut:

```bash
git clone https://github.com/yaminmuhammad/pedikia-apps.git
```

#### Buka repository setelah clone dengan IDE favorit anda

Dalam pengembangan aplikasi Pedikia, kami memanfaatkan Visual Studio Code.

```shell
cd pedikia-apps
code .
```

#### Melengkapi library yang dipakai dalam pengembangan

Untuk mengurangi penggunaan ruang, tentu saja kita tidak menyertakan pustaka ke dalam repository. Oleh karena itu, kita perlu melaksanakan command :

```shell
flutter pub get
```

Perintah di atas akan mendownload file-file _library_ agar Pedikia dapat di-build.

#### Jalankan aplikasi Pedikia

Dengan asumsi Anda memiliki emulator Android atau Android Virtual Device yang sedang beroperasi di lingkungan pengembangan Anda, cukup tekan tombol F5 pada keyboard di antarmuka VSCode, atau jalankan perintah:

```shell
flutter run
```

## Resource yang dipakai

- [Lottifiles](https://lottiefiles.com/?gclid=Cj0KCQiA8ICOBhDmARIsAEGI6o3GduLhXBpFqNDj4yXCnFIMXu-eOvZywZI1MQ_PUpEz3Mq3e11-HAMaAoVOEALw_wcB) - Penuh dengan animasi yang keren!
- [Response Formatter Laravel](https://github.com/belajarkoding/laravel-response-formatter) - Untuk format bentuk response dari API
- [Figma](https://figma.com) - Membuat design dan prototipe UI
- [Google Fonts](https://pub.dev/packages/google_fonts) - Gaya font modern dan menarik

## Library Pihak Ketiga

- cupertino_icons: ^1.0.2
- google_fonts: ^4.0.3
- carousel_slider: ^4.2.1
- cached_network_image: ^3.2.0
- lottie: ^2.2.0
- material_dialogs: ^1.1.4
- provider: ^6.0.1
- http: ^0.13.3
- shimmer: ^3.0.0
- shared_preferences: ^2.0.9
- intl: ^0.18.1

## SDK Flutter Version 
sdk: ">=2.12.0 <3.0.0"

## Screenshot Tampilan Aplikasi

| Splash | Register | Login |
| ----------- | ----------- | -------- |
| ![Splash](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/d12b62e4c9671aaf6e9be65b00c855e85bbe4174/imageUpload/splash.png) | ![Register](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/register.png) | ![Login](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/login.png) |

| Home | Detail | Service |
| ----------- | ----------- | -------- |
| ![Home](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/home.png) | ![Detail](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/detailService.png) | ![Service](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/favorite.png) |

| Cart | Checkout Detail | Checkout Detail |
| ----------- | ----------- | -------- |
| ![Cart](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/cart.png) | ![Checkout Detail](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/checkoutDetail.png) | ![Checkout Detail](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/checkoutDetail2.png) |

| Success | History | Profile | Edit Profile |
| ----------- | ----------- | -------- | -------- |
| ![Success](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/checkoutSuccess.png) | ![Detail](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/history.png) | ![Profile](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/profile.png) | ![Edit Profile](https://raw.githubusercontent.com/yaminmuhammad/pedikia-backend-app/main/imageUpload/editProfile.png) | 


