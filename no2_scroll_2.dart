///
/// ~~ No.2 Scroll (2) ~~
///
/// {Goal}
/// 좀 더 고오급진 스크롤을 만들기 위한 요소들
///   - ScrollPhysics
///   - ScrollController
///   - ScrollConfiguration
///   - Scrollbar
///   - PageView
///   - GridView
///

import 'package:flutter/material.dart';

class ScrollPhysicsExameple extends StatelessWidget {
  const ScrollPhysicsExameple({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      /// ScrollPhysics
      Flexible(child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("ScrollPhysics",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const ScrollPhysics(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(20, (index) {
                  return Container(
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 4,
                        color: index.isEven ? Colors.redAccent : Colors.pinkAccent)
                    ),
                    alignment: Alignment.center,
                    child: Text("$index",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )
                    )
                  );
                })
              )
            )
          ]
        ),
      )),

      /// BouncingScrollPhysics
      Flexible(child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("BouncingScrollPhysics",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  )
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(20, (index) {
                        return Container(
                            width: 70,
                            height: 70,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(width: 4,
                                    color: index.isEven ? Colors.orange : Colors.amber)
                            ),
                            alignment: Alignment.center,
                            child: Text("$index",
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                )
                            )
                        );
                      })
                  )
              )
            ]
        ),
      )),

      /// ClampingScrollPhysics
      Flexible(child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ClampingScrollPhysics",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  )
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(20, (index) {
                        return Container(
                            width: 70,
                            height: 70,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(width: 4,
                                    color: index.isEven ? Colors.green : Colors.teal)
                            ),
                            alignment: Alignment.center,
                            child: Text("$index",
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                )
                            )
                        );
                      })
                  )
              )
            ]
        ),
      )),

      /// PageScrollPhysics
      Flexible(child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PageScrollPhysics",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  )
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(20, (index) {
                        return Container(
                            width: 70,
                            height: 70,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(width: 4,
                                    color: index.isEven ? Colors.lightBlueAccent : Colors.blue)
                            ),
                            alignment: Alignment.center,
                            child: Text("$index",
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                )
                            )
                        );
                      })
                  )
              )
            ]
        ),
      )),

      /// NeverScrollableScrollPhysics
      Flexible(child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("NeverScrollableScrollPhysics",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  )
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(20, (index) {
                        return Container(
                            width: 70,
                            height: 70,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(width: 4,
                                    color: index.isEven ? Colors.purple : Colors.deepPurple)
                            ),
                            alignment: Alignment.center,
                            child: Text("$index",
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                )
                            )
                        );
                      })
                  )
              )
            ]
        ),
      )),
    ]);
  }
}

class ScrollControllerExample extends StatefulWidget {
  const ScrollControllerExample({super.key});

  @override
  State<ScrollControllerExample> createState() => _ScrollControllerExampleState();
}
class _ScrollControllerExampleState extends State<ScrollControllerExample> {
  final _ctr = ScrollController();

  String? offset;

  @override
  void initState() {
    super.initState();
    _ctr.addListener(() {
      setState(() => offset = _ctr.offset.toString());
    });
  }

  @override
  void dispose() {
    _ctr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 9,
          child: SingleChildScrollView(
            controller: _ctr,
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: Row(children: List.generate(50, (index) {
              return Container(
                width: MediaQuery.of(context).size.width- 32,
                height: double.infinity,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 2,
                      spreadRadius: 4
                    )
                  ]
                ),
                alignment: Alignment.center,
                child: Text("$index", style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500
                ))
              );
            }))
          )
        ),
        Flexible(
          flex: 1,
          child: Center(child: Text(
            offset ?? '', style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600
          )
          ))
        )
      ]
    );
  }
}

class ScrollConfigurationExample extends StatelessWidget {
  const ScrollConfigurationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      // behavior: CupertinoScrollBehavior(),
      // behavior: MaterialScrollBehavior(),
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        child: Container(
          height: 10000,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.amber, Colors.transparent]
            )
          )
        ),
      )
    );
  }
}

class ScrollbarExample extends StatelessWidget {
  const ScrollbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      interactive: true,
      trackVisibility: true,
      thumbVisibility: true,
      radius: Radius.circular(12),
      thickness: 20,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(right: 16),
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
                        const Icon(Icons.person, size: 64, color: Colors.teal),
                        const SizedBox(width: 11),
                        Text(
                          'No.$index card',
                          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ]
                  )
              );
            })
        )
      ),
    );
  }
}

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: (index) => print('current page: ${index+1}'),
      children: List.generate(5, (index) {
        return Center(child: Text(
          '${index+1}',
          style: const TextStyle(
              fontSize: 28, fontWeight: FontWeight.w600)
        ));
      })
    );
  }
}

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: PageView(
        children: [
          /// GridView
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text('GridView', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold
                )),
              ),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 10.0
                  ),
                  children: List.generate(100, (index) {
                    late Color color;
                    late IconData icon;

                    if (index.isEven) {
                      color = Colors.blueAccent;
                      icon = Icons.thumb_up;
                    } else {
                      color = Colors.lightBlue;
                      icon = Icons.thumb_down;
                    }

                    return Container(
                      color: color,
                      alignment: Alignment.center,
                      child: Icon(icon, size: 28)
                    );
                  }),
                ),
              ),
            ],
          ),

          /// GridView.builder
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text('GridView.builder', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold
                ))
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 10.0
                  ),
                  itemBuilder: (context, index) {
                    late Color color;
                    late IconData icon;

                    if (index.isEven) {
                      color = Colors.blueAccent;
                      icon = Icons.thumb_up;
                    } else {
                      color = Colors.lightBlue;
                      icon = Icons.thumb_down;
                    }

                    return Container(
                        color: color,
                        alignment: Alignment.center,
                        child: Icon(icon, size: 56)
                    );
                  },
                ),
              ),
            ],
          ),

          /// GridView.count
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text('GridView.count', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold
                )),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                  children: List.generate(99, (index) {
                    late Color color;
                    late IconData icon;

                    if (index.isEven) {
                      color = Colors.blueAccent;
                      icon = Icons.thumb_up;
                    } else {
                      color = Colors.lightBlue;
                      icon = Icons.thumb_down;
                    }

                    return Container(
                        color: color,
                        alignment: Alignment.center,
                        child: Icon(icon, size: 28)
                    );
                  })
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}