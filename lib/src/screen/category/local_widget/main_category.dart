import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MainCategory extends StatefulWidget {
  @override
  State<MainCategory> createState() => _MainCategoryState();
}

class _MainCategoryState extends State<MainCategory> {
  late CategoryProvider provider;
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      provider.loadCategory();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<CategoryProvider>();
    return provider.categories.isEmpty
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: getWidth(40) / getWidth(50),
            ),
            children: provider.categories
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      // provider.firstIndex(e.children.first.id);
                      push(ProductScreen(e.children), ProductProvider());
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: mainOrange.withOpacity(0.6), width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: CachedNetworkImage(
                              imageUrl: e.imagePath,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: CustomText(
                              text: e.name,
                              style: const TextStyle(
                                fontFamily: mainFont,
                                fontWeight: FontWeight.bold,
                                color: mainOrange,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          );
  }
}
