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
///   - NestedScrollView
///   - "Linked Scroll Controller"
///

import 'package:flutter/cupertino.dart';
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 2,
                      spreadRadius: 4
                    )
                  ]
                ),
                alignment: Alignment.center,
                child: Text("$index", style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500
                ))
              );
            }))
          )
        ),
        Flexible(
          flex: 1,
          child: Center(child: Text(
            offset ?? '', style: TextStyle(
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
      behavior: ScrollBehavior(),
      child: SingleChildScrollView(
        child: Container(
          height: 10000,
          decoration: BoxDecoration(
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

// class GridViewExample extends StatelessWidget {
//   const GridViewExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//
//     );
//   }
// }

class NestedScrollVieExample extends StatelessWidget {
  const NestedScrollVieExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tabs = <String>['Tab 1', 'Tab 2'];
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        // These are the slivers that show up in the "outer" scroll view.
        return <Widget>[
          SliverOverlapAbsorber(
            // This widget takes the overlapping behavior of the SliverAppBar,
            // and redirects it to the SliverOverlapInjector below. If it is
            // missing, then it is possible for the nested "inner" scroll view
            // below to end up under the SliverAppBar even when the inner
            // scroll view thinks it has not been scrolled.
            // This is not necessary if the "headerSliverBuilder" only builds
            // widgets that do not overlap the next sliver.
            handle:
            NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverAppBar(
              title:
              const Text('Books'), // This is the title in the app bar.
              pinned: true,
              expandedHeight: 150.0,
              // The "forceElevated" property causes the SliverAppBar to show
              // a shadow. The "innerBoxIsScrolled" parameter is true when the
              // inner scroll view is scrolled beyond its "zero" point, i.e.
              // when it appears to be scrolled below the SliverAppBar.
              // Without this, there are cases where the shadow would appear
              // or not appear inappropriately, because the SliverAppBar is
              // not actually aware of the precise position of the inner
              // scroll views.
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                // These are the widgets to put in each tab in the tab bar.
                tabs: tabs.map((String name) => Tab(text: name)).toList(),
              ),
            ),
          ),
        ];
      },
      body: TabBarView(
        // These are the contents of the tab views, below the tabs.
        children: tabs.map((String name) {
          return SafeArea(
            top: false,
            bottom: false,
            child: Builder(
              // This Builder is needed to provide a BuildContext that is
              // "inside" the NestedScrollView, so that
              // sliverOverlapAbsorberHandleFor() can find the
              // NestedScrollView.
              builder: (BuildContext context) {
                return CustomScrollView(
                  // The "controller" and "primary" members should be left
                  // unset, so that the NestedScrollView can control this
                  // inner scroll view.
                  // If the "controller" property is set, then this scroll
                  // view will not be associated with the NestedScrollView.
                  // The PageStorageKey should be unique to this ScrollView;
                  // it allows the list to remember its scroll position when
                  // the tab view is not on the screen.
                  key: PageStorageKey<String>(name),
                  slivers: <Widget>[
                    SliverOverlapInjector(
                      // This is the flip side of the SliverOverlapAbsorber
                      // above.
                      handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                      // In this example, the inner scroll view has
                      // fixed-height list items, hence the use of
                      // SliverFixedExtentList. However, one could use any
                      // sliver widget here, e.g. SliverList or SliverGrid.
                      sliver: SliverFixedExtentList(
                        // The items in this example are fixed to 48 pixels
                        // high. This matches the Material Design spec for
                        // ListTile widgets.
                        itemExtent: 48.0,
                        delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                            // This builder is called for each child.
                            // In this example, we just number each list item.
                            return ListTile(
                              title: Text('Item $index'),
                            );
                          },
                          // The childCount of the SliverChildBuilderDelegate
                          // specifies how many children this inner list
                          // has. In this example, each tab has a list of
                          // exactly 30 items, but this is arbitrary.
                          childCount: 30,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}

class LinkedScrollControllerExample extends StatefulWidget {
  const LinkedScrollControllerExample({super.key});

  @override
  State<LinkedScrollControllerExample> createState() => _LinkedScrollControllerExampleState();
}
class _LinkedScrollControllerExampleState extends State<LinkedScrollControllerExample> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}