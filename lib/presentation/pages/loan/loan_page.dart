import 'package:flutter/material.dart';

import '../../utils/size_util.dart';

class LoanPage extends StatelessWidget {
  const LoanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: width(
              context,
              desktop: 82.0,
              tablet: 54.0,
              mobile: 32.0,
            ),
            horizontal: width(
              context,
              desktop: 58.0,
              tablet: 36.0,
              mobile: 20.0,
            ),
          ),
          child: Column(
            children: [
              Text(
                'MANFAATKAN PRODUK PINJAMAN KOPERASI SIMPAN PINJAM BERSAMA (UNINDRA)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width(
                    context,
                    desktop: 24.0,
                    tablet: 20.0,
                    mobile: 16.0,
                  ),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: width(
                  context,
                  desktop: 134.0,
                  tablet: 82.0,
                  mobile: 48.0,
                ),
              ),
              Text(
                'Program Pinjaman dapat diikuti oleh Masyarakat yang sudah menjadi\nanggota Koperasi Simpan Pinjam Bersama (UNINDRA)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width(
                    context,
                    desktop: 22.0,
                    tablet: 18.0,
                    mobile: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            bottom: width(
              context,
              desktop: 146.0,
              tablet: 106.0,
              mobile: 78.0,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned.fill(
                bottom: width(
                  context,
                  desktop: 83.0,
                  tablet: 46.0,
                  mobile: 28.0,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(25.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: width(
                    context,
                    desktop: 52.0,
                    tablet: 34.0,
                    mobile: 20.0,
                  ),
                ),
                child: Column(
                  children: [
                    ..._buildCards(context, title: 'MIKRO', cardData: [
                      (
                        'KUR',
                        'Kredit Usaha Rakyat (KUR) terdiri dari KUR Micro, Retail KUR, dan KUR TKI',
                      ),
                      (
                        'BIASA',
                        'Pinjaman bunga kompetitif yang umum bagi semua sektor ekonomi',
                      )
                    ]),
                    SizedBox(
                      height: width(
                        context,
                        desktop: 134.0,
                        tablet: 80.0,
                        mobile: 52.0,
                      ),
                    ),
                    ..._buildCards(context,
                        title: 'RETAIL MENENGAH',
                        cardData: [
                          (
                            'KREDIT MODAL KERJA',
                            'Fasilitas kredit untuk membiayai operasional usaha termasuk kebutuhan untuk  ...',
                          ),
                          (
                            'KREDIT INVESTASI',
                            'Fasilitas kredit kepada perusahaan dan atau perorangan untuk membiayai kebutuhan ...',
                          )
                        ])
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> _buildCards(
    BuildContext context, {
    required String title,
    required List<(String, String)> cardData,
  }) {
    return [
      const SizedBox(height: 52.0),
      Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.surface,
          fontSize: width(
            context,
            desktop: 22.0,
            tablet: 18.0,
            mobile: 16.0,
          ),
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
        ),
      ),
      const SizedBox(height: 52.0),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width(
            context,
            desktop: 105.0,
            tablet: 64.0,
            mobile: 32.0,
          ),
        ),
        child: Wrap(
          spacing: width(
            context,
            desktop: 125.0,
            tablet: 85.0,
            mobile: 48.0,
          ),
          runSpacing: width(
            context,
            desktop: 125.0,
            tablet: 85.0,
            mobile: 48.0,
          ),
          children: cardData
              .map((e) => _buildCard(context, title: e.$1, description: e.$2))
              .toList(),
        ),
      )
    ];
  }

  Widget _buildCard(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    return SizedBox(
      width: width(
        context,
        desktop: 393.0,
        tablet: 300.0,
        mobile: 300.0,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0.0, 4.0),
              blurRadius: 30.0,
              color: Colors.black26,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22.0, 59.0, 22.0, 59.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: width(
                    context,
                    desktop: 24.0,
                    tablet: 20.0,
                    mobile: 16.0,
                  ),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: width(
                  context,
                  desktop: 60.0,
                  tablet: 38.0,
                  mobile: 20.0,
                ),
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width(
                    context,
                    desktop: 22.0,
                    tablet: 18.0,
                    mobile: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
