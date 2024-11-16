import 'package:go_router/go_router.dart';
import 'package:hyperce_demo_app/features/products/presentation/screens/product_collection_screen.dart';
import 'package:hyperce_demo_app/features/products/presentation/screens/product_detail_screen.dart';
import 'package:hyperce_demo_app/features/products/presentation/screens/product_list_screen.dart';

final GoRouter goRouterConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ProductCollectionScreen(),
    ),
    GoRoute(
      path: '/productList/:collectionName',
      builder: (context, state) => ProductListScreen(
        productCollectionName: state.pathParameters['collectionName'] ?? "",
      ),
    ),
    GoRoute(
      path: '/productDetail/:id',
      builder: (context, state) => ProductDetailScreen(
        productId: state.pathParameters['id'] ?? "",
      ),
    ),
  ],
  debugLogDiagnostics: true,
);
