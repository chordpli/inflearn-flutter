import 'package:flutter/material.dart';

// CamelCase (낙타형) -> 클래스
// snake_case (뱀형) -> 파일명
// 변수, 메서드, 함수는 소문자로 시작
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '숫자',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40,
              ),
            ),
            Text(
              '$count',
              style: TextStyle(
                color: Colors.red,
                fontSize: 70,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('elecated');
              },
              child: Text('ElevatedButton'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('OutlineButton'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}