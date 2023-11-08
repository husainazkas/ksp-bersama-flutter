import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../../../injector.dart';
import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/auth/login_form/login_form_bloc.dart';
import '../../blocs/common/loading/loading_bloc.dart';
import '../../utils/size_util.dart';
import '../../widgets/snackbars.dart';

class SavingPage extends StatelessWidget {
  const SavingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginFormBloc>(
      create: (context) => sl(),
      child: BlocConsumer<LoginFormBloc, LoginFormState>(
        listener: (context, state) {
          if (state.isLoggingIn) {
            context.read<LoadingBloc>().add(const LoadingEvent.started());
          } else {
            context.read<LoadingBloc>().add(const LoadingEvent.stopped());
          }

          state.loginFailureOrSuccessOption.fold(
            () => null,
            (a) {
              a.fold(
                (l) =>
                    ScaffoldMessenger.of(context).showSnackBar(FailureSnackBar(
                  message: 'Terjadi error tidak terduga',
                )),
                (r) => r.fold(
                  () => ScaffoldMessenger.of(context)
                      .showSnackBar(InformationSnackBar(
                    message: 'Masuk dengan Google dibatalkan',
                  )),
                  (a) {
                    ScaffoldMessenger.of(context).showSnackBar(SuccessSnackBar(
                      message: 'Berhasil masuk ke Google',
                    ));
                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.authCheckRequested());
                  },
                ),
              );
            },
          );
        },
        builder: (context, state) => IgnorePointer(
          ignoring: state.isLoggingIn,
          child: const Column(
            children: [
              _FirstSection(),
              _SecondSection(),
              _ThirdSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _FirstSection extends StatelessWidget {
  const _FirstSection();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    if (size.width <= 860) {
      return Column(
        children: [
          _buildWelcome(context),
          _buildLogin(context),
        ],
      );
    }
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildWelcome(context),
            ),
            Expanded(
              child: _buildLogin(context),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildWelcome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(width(
        context,
        desktop: 62.0,
        tablet: 44.0,
        mobile: 20.0,
      )),
      child: Column(
        children: [
          Text(
            'Koperasi Simpan Pinjam Bersama (UNINDRA) Simpanan',
            style: TextStyle(
              fontSize: width(
                context,
                desktop: 40.0,
                tablet: 28.0,
                mobile: 18.0,
              ),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: width(
              context,
              desktop: 45.0,
              tablet: 28.0,
              mobile: 18.0,
            ),
          ),
          Text(
            'Selamat datang di halaman simpanan Koperasi Simpan Pinjam Bersama (UNINDRA) Simpanan, dapatkan informasi menarik seputar simpanan anggota',
            style: TextStyle(
              fontSize: width(
                context,
                desktop: 24.0,
                tablet: 20.0,
                mobile: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogin(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(width(
        context,
        desktop: 107.0,
        tablet: 76.0,
        mobile: 36.0,
      )),
      color: Theme.of(context).colorScheme.primary,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: width(
            context,
            desktop: 88.0,
            tablet: 44.0,
            mobile: 20.0,
          ),
          horizontal: width(
            context,
            desktop: 68.0,
            tablet: 36.0,
            mobile: 16.0,
          ),
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          children: [
            Text(
              'Member Login',
              style: TextStyle(
                fontSize: width(
                  context,
                  desktop: 24.0,
                  tablet: 20.0,
                  mobile: 16.0,
                ),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: width(
                context,
                desktop: 71.0,
                tablet: 46.0,
                mobile: 20.0,
              ),
            ),
            SignInButton(
              Buttons.Google,
              onPressed: () {
                context
                    .read<LoginFormBloc>()
                    .add(const LoginFormEvent.loggedIn());
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              text: 'Masuk dengan Google',
            ),
          ],
        ),
      ),
    );
  }
}

class _SecondSection extends StatelessWidget {
  const _SecondSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: width(
          context,
          desktop: 167.0,
          tablet: 120.0,
          mobile: 82.0,
        ),
      ),
      child: Column(
        children: [
          Text(
            'PRODUK SIMPANAN',
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
              desktop: 59.0,
              tablet: 36.0,
              mobile: 20.0,
            ),
          ),
          Text(
            'Beberapa produk simpanan berjangka yang ditawarkan',
            style: TextStyle(
              fontSize: width(
                context,
                desktop: 22.0,
                tablet: 18.0,
                mobile: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: width(
              context,
              desktop: 167.0,
              tablet: 120.0,
              mobile: 90.0,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned.fill(
                  top: width(
                    context,
                    desktop: 74.0,
                    tablet: 52.0,
                    mobile: 36.0,
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(35.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: width(
                      context,
                      desktop: 90.0,
                      tablet: 64.0,
                      mobile: 46.0,
                    ),
                  ),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: width(
                      context,
                      desktop: 61.0,
                      tablet: 36.0,
                      mobile: 20.0,
                    ),
                    runSpacing: width(
                      context,
                      desktop: 61.0,
                      tablet: 36.0,
                      mobile: 20.0,
                    ),
                    children: [
                      _buildCard(
                        context,
                        title: 'Golongan 1',
                        description: 'Jangka Waktu 12 Bulan\nSuku Bunga 7%',
                      ),
                      _buildCard(
                        context,
                        title: 'Golongan 2',
                        description: 'Jangka Waktu 6 Bulan\nSuku Bunga 6%',
                      ),
                      _buildCard(
                        context,
                        title: 'Golongan 3',
                        description: 'Jangka Waktu 3 Bulan\nSuku Bunga 5%',
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

class _ThirdSection extends StatelessWidget {
  const _ThirdSection();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    late Widget content;

    final image = Image.asset('assets/images/sample-2.jpg');
    final text = Text(
      'Koperasi Simpan Pinjam Bersama (UNINDRA) merupakan salah satu upaya mahasiswa UNINDRA untuk menambah kesejahteraan masyarakat di seluruh Indonesia melalui manfaat ekonomi yang dikelola Koperasi.',
      style: TextStyle(
        fontSize: width(
          context,
          desktop: 22.0,
          tablet: 18.0,
          mobile: 16.0,
        ),
      ),
    );

    if (size.width > 600) {
      content = Row(
        children: [
          Expanded(child: image),
          SizedBox(
            width: width(
              context,
              desktop: 94.0,
              tablet: 52.0,
              mobile: 24.0,
            ),
          ),
          Expanded(child: text),
        ],
      );
    } else {
      content = Column(
        children: [
          image,
          SizedBox(
            height: width(
              context,
              desktop: 94.0,
              tablet: 52.0,
              mobile: 24.0,
            ),
          ),
          text,
        ],
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: width(
          context,
          desktop: 167.0,
          tablet: 120.0,
          mobile: 82.0,
        ),
        horizontal: width(
          context,
          desktop: 94.0,
          tablet: 56.0,
          mobile: 28.0,
        ),
      ),
      child: Column(
        children: [
          Text(
            'TENTANG SIMPANAN\nKOPERASI SIMPAN PINJAM BERSAMA (UNINDRA)',
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
              desktop: 100.0,
              tablet: 64.0,
              mobile: 32.0,
            ),
          ),
          content,
        ],
      ),
    );
  }
}
