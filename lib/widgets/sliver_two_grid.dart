import 'package:flutter/material.dart';

class SliverTwoGrid extends StatelessWidget {
  const SliverTwoGrid({
    super.key,
    required this.detailsList,
    required this.titleList,
    required this.gridCount,
    this.iconList,
  });
  final List detailsList;
  final List titleList;
  final List? iconList;
  final int gridCount;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(10),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) => Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade50, Colors.blue.shade100],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(15),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (iconList != null) iconList![index],
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleList[index],
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: Colors.blueGrey.shade800,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          detailsList[index],
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          childCount: detailsList.length,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
