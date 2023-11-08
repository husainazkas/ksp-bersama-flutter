import 'package:flutter/material.dart';

import '../../utils/size_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _FirstSection(),
        _SecondSection(),
      ],
    );
  }
}

class _FirstSection extends StatelessWidget {
  const _FirstSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width(context, desktop: 66.0, tablet: 42.0, mobile: 20.0),
        vertical: 82.0,
      ),
      child: Builder(
        builder: (context) {
          final text = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tinjauan Koperasi Simpan Pinjam Bersama (UNINDRA)',
                style: TextStyle(
                  fontSize: width(
                    context,
                    desktop: 24.0,
                    tablet: 20.0,
                    mobile: 16.0,
                  ),
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 24.0),
              Text(
                'Koperasi Simpan Pinjam Bersama didirikan pada tanggal 15 Oktober 2023 untuk memenuhi tugas besar mata kuliah Web Dasar.\nKoperasi Simpan Pinjam Bersama bergerak di bidang Koperasi Serba Usaha (KSU), dengan melayani anggota akan kebutuhan produk pendanaan dan pembiayaan dengan mengacu pada proses pembangunan ekonomi kerakyatan.',
                style: TextStyle(
                  fontSize: width(
                    context,
                    desktop: 20.0,
                    tablet: 16.0,
                    mobile: 14.0,
                  ),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 24.0),
              InkWell(
                onTap: () {},
                child: Text(
                  'Selengkapnya',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width(
                      context,
                      desktop: 22.0,
                      tablet: 18.0,
                      mobile: 16.0,
                    ),
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          );
          final size = MediaQuery.sizeOf(context);
          if (size.width > 1200) {
            return Row(
              children: [
                Image.asset(
                  'assets/images/sample-1.jpg',
                  width: 532.0,
                ),
                const SizedBox(width: 96.0),
                Expanded(child: text)
              ],
            );
          }
          return Column(
            children: [
              Image.asset(
                'assets/images/sample-1.jpg',
                width: 532.0,
              ),
              SizedBox(
                height: width(
                  context,
                  tablet: 40.0,
                  mobile: 20.0,
                ),
              ),
              text
            ],
          );
        },
      ),
    );
  }
}

class _SecondSection extends StatelessWidget {
  const _SecondSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        bottom: width(
          context,
          desktop: 120.0,
          tablet: 64.0,
          mobile: 64.0,
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned.fill(
            bottom: width(
              context,
              desktop: 152.0,
              tablet: 90.0,
              mobile: 60,
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
                desktop: 113.0,
                tablet: 68.0,
                mobile: 40.0,
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Produk Kami',
                  style: TextStyle(
                    fontSize: width(
                      context,
                      desktop: 24.0,
                      tablet: 20.0,
                      mobile: 16.0,
                    ),
                    color: Theme.of(context).colorScheme.background,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 90.0),
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
                      desktop: 182.0,
                      tablet: 72.0,
                      mobile: 32.0,
                    ),
                    runSpacing: width(
                      context,
                      desktop: 120.0,
                      tablet: 56.0,
                      mobile: 24.0,
                    ),
                    children: [
                      _buildCard(
                        context,
                        imageAsset: 'assets/images/vector-1.png',
                        title: 'Simpanan',
                        description:
                            'Program simpanan dapat diikuti oleh Masyarakat yang sudah terdaftar menjadi anggota Koperasi Simpan Pinjam Bersama (UNINDRA)',
                        onPressed: () {},
                      ),
                      _buildCard(
                        context,
                        imageAsset: 'assets/images/vector-2.png',
                        title: 'Pinjaman',
                        description:
                            'Program pinjaman dapat diikuti oleh Masyarakat yang sudah terdaftar menjadi anggota Koperasi Simpan Pinjam Bersama (UNINDRA)',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required String imageAsset,
    required String title,
    required String description,
    VoidCallback? onPressed,
  }) {
    return SizedBox(
      width: width(
        context,
        desktop: 523.0,
        tablet: 420.0,
        mobile: double.infinity,
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
          padding: const EdgeInsets.fromLTRB(62.0, 64.0, 62.0, 47.0),
          child: Column(
            children: [
              SizedBox.square(
                dimension: 150.0,
                child: Image.asset(imageAsset),
              ),
              const SizedBox(height: 69.0),
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
              const SizedBox(height: 41.0),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width(
                    context,
                    desktop: 20.0,
                    tablet: 16.0,
                    mobile: 14.0,
                  ),
                ),
              ),
              const SizedBox(height: 41.0),
              FilledButton(
                style: FilledButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 60.0,
                  ),
                ),
                onPressed: onPressed,
                child: Text(
                  'LEBIH LANJUT',
                  style: TextStyle(
                    fontSize: width(
                      context,
                      desktop: 20.0,
                      tablet: 16.0,
                      mobile: 14.0,
                    ),
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
