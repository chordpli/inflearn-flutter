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

  // build 함수 바깥쪽의 값을 변경했을 떄에는 hot reload가 아닌 hot restart를 사용한다.
  // 그 외에도 값을 변경했을 때, 바뀌지 않는다면 그냥 다시 run한다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              SizedBox(height: 100), // Container로 주는 것보다 성능상 우위를 갖는다.
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
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '글자를 입력해주세요.',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {
                        print(text);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('login'),
                    ),
                  ),
                ],
              ),
              Image.network(
                'https://img.freepik.com/premium-photo/wall-papers-energy-flow-background-cool-wallpapers-cute-wallpapers-cool-background-phone-wallpaper_947865-667.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/image.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
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
