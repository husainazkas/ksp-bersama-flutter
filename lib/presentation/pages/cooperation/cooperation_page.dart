import 'package:flutter/material.dart';

class CooperationPage extends StatelessWidget {
  const CooperationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 36.0,
        vertical: 56.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Koperasi',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 32.0),
          Image.asset('assets/images/koperasi-1.png'),
          const SizedBox(height: 4.0),
          Text(
            'Gambar: Logo Koperasi Indonesia',
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.grey[600],
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 28.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0),
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const [
                  TextSpan(
                    text: 'Koperasi',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text:
                        ' adalah organisasi bisnis yang dimiliki dan dioperasikan oleh orang-seorang demi kepentingan bersama. Koperasi melandaskan kegiatan berdasarkan prinsip gerakan ekonomi rakyat yang berdasarkan asas kekeluargaan.\n\n\n',
                  ),
                  TextSpan(
                    text: 'Prinsip\n',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(text: '\n', style: TextStyle(fontSize: 4.0)),
                  TextSpan(
                    text:
                        'Prinsip koperasi adalah suatu sistem ide-ide abstrak yang merupakan petunjuk untuk membangun koperasi yang efektif dan tahan lama. Prinsipkoperasi terbaru yang dikembangkan International Cooperative Alliance (Federasi koperasi non-pemerintah internasional) adalah Keanggotaan yang bersifat terbuka dan sukarela Pengelolaan yang demokratis, Partisipasi anggota dalam ekonomi, Kebebasan dan otonomi, Pengembangan pendidikan, pelatihan, dan informasi. Di Indonesia sendiri telah dibuat UU no. 25 tahun 1992 tentang Perkoperasian.\n\n\n',
                  ),
                  TextSpan(
                    text: 'Jenis\n',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(text: '\n', style: TextStyle(fontSize: 4.0)),
                  TextSpan(
                    text:
                        'Apabila koperasi menyelenggarakan satu fungsi disebut koperasi tunggal usaha (single purpose cooperative), sedangkan koperasi yang menyelenggarakan lebih dari satu fungsi disebut koperasi serba usaha (multi purpose cooperative).\n\n\n',
                  ),
                  TextSpan(
                    text: 'Keunggulan\n',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(text: '\n', style: TextStyle(fontSize: 4.0)),
                  TextSpan(
                    text:
                        'Kemungkinan koperasi untuk memperoleh keunggulan komparatif dari perusahaan lain cukup besar mengingat koperasi mempunyai potensi kelebihan antara lain pada skala ekonomi, aktivitas yang nyata, faktor-faktor precuniary, dan lain-lain.\n\n\n',
                  ),
                  TextSpan(
                    text: 'Koperasi Di Indonesia\n',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(text: '\n', style: TextStyle(fontSize: 4.0)),
                  TextSpan(
                    text:
                        'Koperasi di Indonesia, menurut UU tahun 1992, didefinisikan sebagai badan usaha yang beranggotakan orang-seorang atau badan hukum koperasi dengan melandaskan kegiatannya berdasarkan prinsip-prinsip koperasi sekaligus sebagai gerakan ekonomi rakyat yang berdasar atas asas kekeluargaan. Di Indonesia, prinsip koperasi telah dicantumkan dalam UU No. 12 Tahun 1967 dan UU No. 25 Tahun 1992. Prinsip koperasi di Indonesia kurang lebih sama dengan prinsip yang diakui dunia internasional dengan adanya sedikit perbedaan, yaitu adanya penjelasan mengenai SHU (Sisa Hasil Usaha).\n\n\n',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
