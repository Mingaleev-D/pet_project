import 'package:flutter/material.dart';

const baseStringAuth =
    'Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой. ';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Войдите в аккаунт'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: const [
            Column(
              children: [
                Text(
                  baseStringAuth,
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 22),
                ),
                SizedBox(height: 15),
                _FormWidget(),
                SizedBox(height: 15),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = '';

  void _auth() {
    final login = _loginTextController.text;
    final pass = _passwordTextController.text;
    if (login == 'admin' && pass == 'admin') {
      errorText = null;
      print('open app');
    } else {
      errorText = 'Неверный логин или пароль';
      print('error');
    }
    setState(() {});
  }

  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //const SizedBox(height: 10),
        if (errorText != null) ...[
          Text(
            errorText!,
            style: const TextStyle(color: Colors.red),
          ),
          const SizedBox(height: 7),
        ],
        const Text('Имя пользователя'),
        TextField(
          controller: _loginTextController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(10),
          ),
        ),
        const SizedBox(height: 10),
        const Text('Пароль'),
        TextField(
          controller: _passwordTextController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(10),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: _auth,
              child: const Text(
                'Войти',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 15),
            TextButton(
              onPressed: _resetPassword,
              child: const Text('Сбрость пароль'),
            ),
          ],
        ),
      ],
    );
  }
}
