import 'package:flutter/material.dart';

import '../../utils/size_util.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/sample-3.jpg'),
        const _FirstSection(),
        const _SecondSection(),
      ],
    );
  }
}

class _FirstSection extends StatelessWidget {
  const _FirstSection();

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: width(
          context,
          desktop: 22.0,
          tablet: 18.0,
          mobile: 16.0,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width(
                context,
                desktop: 220.0,
                tablet: 140.0,
                mobile: 56.0,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: width(
                    context,
                    desktop: 125.0,
                    tablet: 74.0,
                    mobile: 38.0,
                  ),
                ),
                Text(
                  'TINJAUAN KOPERASI SIMPAN PINJAM BERSAMA (UNINDRA)',
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
                    desktop: 37.0,
                    tablet: 28.0,
                    mobile: 16.0,
                  ),
                ),
                const Text(
                  'Koperasi Simpan Pinjam Bersama (UNINDRA) merupakan salah satu upaya mahasiswa UNINDRA untuk menambah kesejahteraan masyarakat di seluruh Indonesia melalui manfaat ekonomi yang dikelola Koperasi.',
                ),
                SizedBox(
                  height: width(
                    context,
                    desktop: 153.0,
                    tablet: 90.0,
                    mobile: 56.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: width(
                context,
                desktop: 126.0,
                tablet: 72.0,
                mobile: 28.0,
              ),
              horizontal: width(
                context,
                desktop: 64.0,
                tablet: 36.0,
                mobile: 20.0,
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(35.0),
              ),
            ),
            child: DefaultTextStyle.merge(
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Visi :',
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
                      desktop: 17.0,
                      tablet: 12.0,
                      mobile: 8.0,
                    ),
                  ),
                  const Text(
                    'Menjadi koperasi dengan pengelolaan terbaik di Indonesia',
                  ),
                  SizedBox(
                    height: width(
                      context,
                      desktop: 73.0,
                      tablet: 52.0,
                      mobile: 32.0,
                    ),
                  ),
                  Text(
                    'Misi :',
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
                      desktop: 17.0,
                      tablet: 12.0,
                      mobile: 8.0,
                    ),
                  ),
                  const Text(
                    'Meningkatkan kesejahteraan anggota dengan memberikan manfaat ekonomi denganmengembangan usaha yang menguntungkan dan selaras, meningkatan kepuasan pelanggan melalui pengembangan kompetensi seperti: sumber daya manusia, sistem informasi dan teknologi, melaksanaan Quality Cost Delivery Innovation (QCDI) dan menyediaan program dan produk yang sesuai dengan kebutuhan anggota',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _SecondSection extends StatelessWidget {
  const _SecondSection();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isUseStack = size.width <= 700.0;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: width(
          context,
          desktop: 156.0,
          tablet: 80.0,
          mobile: 42.0,
        ),
        horizontal: width(
          context,
          desktop: 20.0,
          tablet: 12.0,
          mobile: 4.0,
        ),
      ),
      child: DefaultTextStyle.merge(
        style: TextStyle(
          fontSize: width(
            context,
            desktop: 22.0,
            tablet: 18.0,
            mobile: 16.0,
          ),
        ),
        child: isUseStack
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset(
                      'assets/images/koperasi-indonesia-transparent.png',
                    ),
                    _buildCoreValues(context),
                  ],
                ),
              )
            : Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/koperasi-indonesia-transparent.png',
                    ),
                  ),
                  SizedBox(
                    width: width(
                      context,
                      desktop: 20.0,
                      tablet: 12.0,
                      mobile: 4.0,
                    ),
                  ),
                  Expanded(
                    child: _buildCoreValues(context),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildCoreValues(BuildContext context) {
    const List<(String, String)> values = [
      ('Passionate', 'Menghayati pekerjaan dengan sepenuh hati'),
      (
        'Respect',
        'Bersikap saling menghormati menghargai terhadap atasan, bawahan, dan rekan kerja'
      ),
      (
        'Open Mind',
        'Bersikap terbuka terhadap hal baru yang bermanfaat bagi perusahaan'
      ),
      (
        'Synergy',
        'Saling membina kerja sama yang harmonis serta membangun kolaborasi yang produktif'
      ),
      (
        'Performance',
        'Bersikap pantang menyerah untuk memberikan kinerja yang terbaik bagi perusahaan'
      ),
    ];
    return Column(
      children: [
        Text(
          'CORE VALUE\nKOPERASI SIMPAN PINJAM BERSAMA\n(UNINDRA)',
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
            desktop: 35.0,
            tablet: 24.0,
            mobile: 12.0,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: values
              .map((e) => Text.rich(TextSpan(children: [
                    TextSpan(
                      text: '${e.$1}\n',
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(text: '${e.$2}\n\n'),
                  ])))
              .toList(),
        )
      ],
    );
  }
}
