///
/// ~~ No1. Scroll (1) ~~
///
/// {Goal}
/// 실제로도 많이 사용하는 위젯인 '특정 아이템에 대한 리스트'를 다양한 방법으로 구현해보자
///   - SingleChildScrollView
///   - List.generate
///   - ListView / ListView.builder / ListView.separated
///

import 'package:flutter/material.dart';

/// SingleChildScrollView (SCSV)
/// - 가장 다루기 쉬운 스크롤 위젯
/// - build 과정에서 자식 위젯이 모두 build됨
/// - 아주 많은 아이템을 표시하려면 아래 방법은 비효율적임
class SingleChildScrollViewExample extends StatelessWidget {
  const SingleChildScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 100,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal, width: 2),
              borderRadius: BorderRadius.circular(12)
            ),
            alignment: Alignment.center,
            child: const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(Icons.person, size: 64, color: Colors.teal),
                SizedBox(width: 11),
                Text(
                  'No.1 card',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ]
            )
          ),
          Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.person, size: 64, color: Colors.teal),
                    SizedBox(width: 16),
                    Text(
                      'No.2 card',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ]
              )
          ),
          Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.person, size: 64, color: Colors.teal),
                    SizedBox(width: 16),
                    Text(
                      'No.3 card',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ]
              )
          ),
          Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.person, size: 64, color: Colors.teal),
                    SizedBox(width: 16),
                    Text(
                      'No.4 card',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ]
              )
          ),
          Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.person, size: 64, color: Colors.teal),
                    SizedBox(width: 16),
                    Text(
                      'No.5 card',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ]
              )
          ),
          Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.person, size: 64, color: Colors.teal),
                    SizedBox(width: 16),
                    Text(
                      'No.6 card',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ]
              )
          ),
          Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.person, size: 64, color: Colors.teal),
                    SizedBox(width: 16),
                    Text(
                      'No.7 card',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ]
              )
          ),
          Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.person, size: 64, color: Colors.teal),
                    SizedBox(width: 16),
                    Text(
                      'No.8 card',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ]
              )
          ),
          Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.person, size: 64, color: Colors.teal),
                    SizedBox(width: 16),
                    Text(
                      'No.9 card',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ]
              )
          ),
          Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.person, size: 64, color: Colors.teal),
                    SizedBox(width: 16),
                    Text(
                      'No.10 card',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ]
              )
          ),
        ]
      )
    );
  }
}

/// List.generate(...)
/// - 리스트 생성 함수
/// - 똑같은 위젯을 여러개 만들 경우 이 방법이 훨씬 효율적
class ListGenerateExample extends StatelessWidget {
  const ListGenerateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: List.generate(100, (index) {
              return Container(
                  height: 100,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.teal, width: 2),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.person, size: 64, color: Colors.teal),
                        SizedBox(width: 11),
                        Text(
                          'No.$index card',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ]
                  )
              );
            })
        )
    );
  }
}

/// ListView
/// - 가장 기본적인 스크롤 위젯
/// - SCSV보다 제한적임
///   └> 자식 위젯이 필연적으로 크기가 정해져야 함 (ex. Stack 위젯 안 됨)
///   └> 또한, 스크롤을 길게 해보면 SCSV보다 버벅임
class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(100, (index) {
        return Container(
            height: 100,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.teal, width: 2),
                borderRadius: BorderRadius.circular(12)
            ),
            alignment: Alignment.center,
            child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.person, size: 64, color: Colors.teal),
                  SizedBox(width: 11),
                  Text(
                    'No.$index card',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ]
            )
        );
      })
    );
  }
}

/// ListView.builder
/// - 화면에 보이는 아이템만 렌더링함
/// - 하드웨어의 성능을 향상시킬 수 있음
/// - 반복되는 아이템을 표시할 때 효과적
class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Container(
            height: 100,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.teal, width: 2),
                borderRadius: BorderRadius.circular(12)
            ),
            alignment: Alignment.center,
            child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.person, size: 64, color: Colors.teal),
                  SizedBox(width: 11),
                  Text(
                    'No.$index card',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ]
            )
        );
      }
    );
  }
}

/// ListView.separated
/// - 아이템들 사이에 위젯을 배치할 수 있다
///   └> 위젯이라면 뭐든 가능함
class ListViewSeparatedExample extends StatelessWidget {
  const ListViewSeparatedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.teal, width: 2),
              borderRadius: BorderRadius.circular(12)
          ),
          alignment: Alignment.center,
          child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(Icons.person, size: 64, color: Colors.teal),
                SizedBox(width: 11),
                Text(
                  'No.$index card',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ]
          )
      );
      },
      separatorBuilder: (context, index) {
        /// Divider: Column과 같은 위젯에서 쓰는 가로 구분선 위젯
        /// <-> VerticalDivider: Row와 같은 위젯에서 쓰는 세로 구분선
        return const Divider();
      },
    );
  }
}