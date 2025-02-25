// ignore_for_file: public_member_api_docs, sort_constructors_first
class Book {
  String name;
  String image;
  String description;
  double rate;
  int page;
  String categoryBook;
  String language;
  Book({
    required this.name,
    required this.image,
    required this.description,
    required this.rate,
    required this.page,
    required this.categoryBook,
    required this.language,
  });
}

List<Book> listBook = [
  Book(
    name: 'Redhat',
    image: 'images/buku-redhat.png',
    description:
        'Buku ini membahas secara mendalam tentang sistem operasi Red Hat Enterprise Linux (RHEL), mulai dari instalasi, konfigurasi, hingga manajemen server. Cocok untuk sysadmin yang ingin menguasai lingkungan Linux enterprise.',
    rate: 4.5,
    page: 230,
    categoryBook: 'Sysadmin',
    language: 'IDN',
  ),
  Book(
    name: 'Docker',
    image: 'images/buku-docker.png',
    description:
        'Buku ini mengajarkan konsep containerisasi menggunakan Docker, mulai dari dasar-dasar Docker, pembuatan image, hingga orchestration dengan Docker Compose dan Kubernetes. Ideal untuk developer dan sysadmin yang ingin modernisasi infrastruktur.',
    rate: 4.6,
    page: 190,
    categoryBook: 'Sysadmin',
    language: 'IDN',
  ),
  Book(
    name: 'VPN',
    image: 'images/buku-vpn.png',
    description:
        'Buku ini menjelaskan tentang teknologi Virtual Private Network (VPN), mulai dari konsep keamanan jaringan, protokol VPN seperti OpenVPN dan IPSec, hingga implementasi VPN untuk keperluan bisnis dan pribadi.',
    rate: 4.7,
    page: 250,
    categoryBook: 'Sysadmin',
    language: 'IDN',
  ),
  Book(
    name: 'Hyper-V',
    image: 'images/buku-hyper-v.png',
    description:
        'Buku ini membahas virtualisasi menggunakan Hyper-V dari Microsoft, mencakup instalasi, konfigurasi, dan manajemen virtual machine. Cocok untuk sysadmin yang bekerja di lingkungan Windows Server.',
    rate: 4.4,
    page: 220,
    categoryBook: 'Sysadmin',
    language: 'IDN',
  ),
  Book(
    name: 'IPv6',
    image: 'images/buku-ipv6.png',
    description:
        'Buku ini mengupas tuntas tentang IPv6, termasuk perbandingan dengan IPv4, konfigurasi jaringan, dan migrasi dari IPv4 ke IPv6. Penting bagi network engineer yang ingin mempersiapkan diri untuk era internet baru.',
    rate: 4.8,
    page: 180,
    categoryBook: 'Sysadmin',
    language: 'IDN',
  ),
  Book(
    name: 'NMS',
    image: 'images/buku-nms.png',
    description:
        'Buku ini membahas Network Management System (NMS) untuk memantau dan mengelola jaringan secara efisien. Materi mencakup tools seperti Nagios, Zabbix, dan PRTG, serta best practice dalam manajemen jaringan.',
    rate: 4.3,
    page: 200,
    categoryBook: 'Sysadmin',
    language: 'IDN',
  ),
  Book(
    name: 'OpenStack Admin',
    image: 'images/buku-openstack-admin.png',
    description:
        'Buku ini memberikan panduan lengkap untuk mengelola cloud infrastructure menggunakan OpenStack. Materi mencakup instalasi, konfigurasi, dan optimasi OpenStack untuk lingkungan produksi.',
    rate: 4.7,
    page: 240,
    categoryBook: 'Sysadmin',
    language: 'IDN',
  ),
];
