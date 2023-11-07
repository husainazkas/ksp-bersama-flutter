import 'package:flutter/material.dart';

import '../../paints/shapes.dart';
import '../../utils/color_util.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/unindra-b-1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: DecoratedBox(
              decoration: const BoxDecoration(color: Colors.black38),
              child: DefaultTextStyle.merge(
                style: const TextStyle(color: Colors.white),
                child: CustomPaint(
                  painter: SimpleShape1(
                    color: Theme.of(context)
                        .colorScheme
                        .primary
                        .withLightness(0.475),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.925,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 64.0,
                        vertical: 54.0,
                      ).add(const EdgeInsets.only(top: 168.0)),
                      child: DefaultTextStyle.merge(
                        style: const TextStyle(fontWeight: FontWeight.w600),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Koperasi Simpan Pinjam Bersama (Kampus UNINDRA)',
                              style: TextStyle(
                                fontSize: 36.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Jl. Raya Tengah No.80, Gedong, Kec. Ps. Rebo, Kota Jakarta Timur, DKI Jakarta',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Text(
                                'Telp: (021) 87797409 - 87781300 HP/WhatsApp: 081318998016 Email: kampus@unindra.ac.id')
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          CustomPaint(
            painter: SimpleShape2(
              color: Theme.of(context).colorScheme.primary.withLightness(0.475),
            ),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.925,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 64.0,
                  vertical: 48.0,
                ).add(const EdgeInsets.only(
                  right: 36.0,
                  top: 36.0,
                )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Landasan Organisasi',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          'Visi',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Mewujudkan koperasi mahasiswa yang tangguh',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Misi',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  '1.\t Meningkatkan/mengoptimalkan kegiatan usaha koperasi yang telah ada',
                              style: DefaultTextStyle.of(context).style,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  '2.\t Mencari peluang baru kegiatan usaha koperasi',
                              style: DefaultTextStyle.of(context).style,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  '3.\t Meningkatkan peran serta anggota dalam kegiatan koperasi',
                              style: DefaultTextStyle.of(context).style,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  '4.\t Meningkatkan keterbukaan dalam pengelolaan koperasi',
                              style: DefaultTextStyle.of(context).style,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  '5.\t Meningkatkan pembagian keuntungan anggota (SHU)',
                              style: DefaultTextStyle.of(context).style,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  '6.\t Menciptakan lapangan kerja bagi anggota dan masyarakat sekitar',
                              style: DefaultTextStyle.of(context).style,
                            ),
                          ),
                          // const SizedBox(height: 64.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
