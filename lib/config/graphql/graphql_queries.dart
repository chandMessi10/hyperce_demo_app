class GraphQLQueries {
  static String getProductDetail(String productId) {
    return '''
    query GetProductDetail {
      product(id: "$productId") {
        id
        name
        slug
        featuredAsset {
          preview
          mimeType
        }
        variants {
          price
          stockLevel
          sku
        }
        description
      }
    }
    ''';
  }

  static String getProductList(int skipValue, String collectionName) {
    return '''
    query GetProductList {
      products(
        options: {
          skip: $skipValue
          take: 10
          filter: { name: { contains: "${collectionName.toLowerCase()}" } }
          sort: { name: ASC }
        }
      ) {
        totalItems
        items {
          id
          name
          slug
          variants {
            price
            stockLevel
            sku
          }
          featuredAsset {
            preview
            mimeType
            width
            height
          }
        }
      }
    }
    ''';
  }

  static String getProductCollection(int skipValue) {
    return '''
    query GetProductCollection {
      collections(
        options: {
          skip: $skipValue
          take: 10
          filter: {}
          sort: { name: ASC }
        }
      ) {
        totalItems
        items {
          id
          name
          slug
          featuredAsset {
            preview
            mimeType
            width
            height
          }
        }
      }
    }
    ''';
  }
}
