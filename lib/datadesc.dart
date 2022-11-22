class resep {
  String name, htm, deskripsi, image;

  resep(
      {required this.name,
      required this.htm,
      required this.deskripsi,
      required this.image});
}

List<resep> dataResep = [
  resep(
      name: 'diton king',
      htm: '125k',
      deskripsi:
          'Kualitasnya okeh banget dan cat semprot ini sekarang jadi idola anak grafiti',
      image: 'assets/diton.jpg'),
  resep(
      name: 'autolux',
      htm: '110k',
      deskripsi: '-',
      image: 'assets/autolux.jpg'),
  resep(
      name: 'ace premium',
      htm: '135k',
      deskripsi: '-',
      image: 'assets/ace premium.jpg'),
  resep(
      name: 'aerox spray',
      htm: '225k',
      deskripsi: '-',
      image: 'assets/aerox spray.jpg'),
  resep(
      name: 'hi temp spray',
      htm: '132k',
      deskripsi: '-',
      image: 'assets/hi temp spray.png'),
  resep(
      name: 'krylon glowz',
      htm: '115k',
      deskripsi: '-',
      image: 'assets/krylon glowz.jpg'),
  resep(
      name: 'oxygen spray',
      htm: '219k',
      deskripsi: '-',
      image: 'assets/oxygen spray.jpg'),
  resep(
      name: 'rubber_spray',
      htm: '95k',
      deskripsi: '-',
      image: 'assets/rubber_spray.jpg'),
  resep(
      name: 'samurai2k',
      htm: '173k',
      deskripsi: '-',
      image: 'assets/samurai2k.png'),
];
