import 'package:ecommerceapp/common/widgets/routes/troutes.dart';
import 'package:ecommerceapp/features/authentication/models/usermodel.dart';
import 'package:ecommerceapp/features/shop/models/addressmodel.dart';
import 'package:ecommerceapp/features/shop/models/bannermodel.dart';
import 'package:ecommerceapp/features/shop/models/brandcategorymodel.dart';
import 'package:ecommerceapp/features/shop/models/brandmodel.dart';
import 'package:ecommerceapp/features/shop/models/cartmodel.dart';
import 'package:ecommerceapp/features/shop/models/categorymodel.dart';
import 'package:ecommerceapp/features/shop/models/ordermodel.dart';
import 'package:ecommerceapp/features/shop/models/productattributemodel.dart';
import 'package:ecommerceapp/features/shop/models/productcategorymodel.dart';
import 'package:ecommerceapp/features/shop/models/productmodel.dart';
import 'package:ecommerceapp/features/shop/models/productvariationmodel.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';

class TDummyData {
  //banners
  static final List<BannerModel> banners = [
    BannerModel(
        imageUrl: TImages.promoBanner1,
        targetScreen: TRoutes.order,
        active: false),
    BannerModel(
        imageUrl: TImages.promoBanner2,
        targetScreen: TRoutes.cart,
        active: true),
    BannerModel(
        imageUrl: TImages.promoBanner3,
        targetScreen: TRoutes.favorites,
        active: true),
    BannerModel(
        imageUrl: TImages.promoBanner4,
        targetScreen: TRoutes.search,
        active: true),
    BannerModel(
        imageUrl: TImages.promoBanner5,
        targetScreen: TRoutes.settings,
        active: true),
    BannerModel(
        imageUrl: TImages.promoBanner6,
        targetScreen: TRoutes.userAddress,
        active: true),
    BannerModel(
        imageUrl: TImages.promoBanner6,
        targetScreen: TRoutes.checkout,
        active: false),
  ];
  //user
  static final UserModel user = UserModel(
    firstName: 'Rafath',
    lastName: 'Anjum',
    email: 'anjum@gmail.com',
    phoneNumber: '+91111111111111',
    profilePicture: TImages.user,
    username: 'Amaira',
    id: '30',
    addresses: [
      AddressModel(
        id: '1',
        name: 'Rafath anjum',
        phoneNumber: '+9111111111111',
        street: '3781 Timmy caves',
        city: 'South Liane',
        state: 'Maine',
        postalCode: '87665',
        country: 'USA',
      ),
      AddressModel(
        id: '6',
        name: 'maira',
        phoneNumber: '+9111111111111',
        street: 'lane',
        city: 'South street',
        state: 'Maine',
        postalCode: '1231',
        country: 'USA',
      ),
    ],
  );

  static final CartModel cart = CartModel(
    cartId: '001',
    items: [
      CartItemModel(
        productId: '001',
        variationId: '1',
        quantity: 1,
        title: products[0].title,
        image: products[0].thumbnail,
        brandName: products[0].brand!.name,
        price: products[0].productVariations![0].price,
        selectedVariation: products[0].productVariations![0].attributeValues,
      ),
      CartItemModel(
        productId: '002',
        variationId: '',
        quantity: 1,
        title: products[0].title,
        image: products[0].thumbnail,
        brandName: products[0].brand!.name,
        price: products[0].productVariations![0].price,
        selectedVariation: products[0].productVariations![0].attributeValues,
      ),
    ],
  );
  //order
  static final List<OrderModel> orders = [
    OrderModel(
      id: 'CWT0012',
      status: OrderStatus.processing,
      items: cart.items,
      totalAmount: 256,
      orderDate: DateTime(2023, 09, 1),
      deliveryDate: DateTime(2023, 9, 9),
    ),
    OrderModel(
      id: 'CWT0000',
      status: OrderStatus.shipped,
      items: cart.items,
      totalAmount: 369,
      orderDate: DateTime(2023, 10, 5),
      deliveryDate: DateTime(2023, 10, 11),
    ),
  ];
  //list of all categories
  static final List<CategoryModel> categories = [
    CategoryModel(
        id: '1', name: 'Sports', image: TImages.sportIcon, isFeatured: true),
    CategoryModel(
        id: '5',
        name: 'Furniture',
        image: TImages.furnitureIcon,
        isFeatured: true),
    CategoryModel(
        id: '2',
        name: 'Electronics',
        image: TImages.electronicIcon,
        isFeatured: true),
    CategoryModel(
        id: '3', name: 'Clothes', image: TImages.clothesIcon, isFeatured: true),
    CategoryModel(
        id: '4', name: 'Decor', image: TImages.decorIcon, isFeatured: true),
    CategoryModel(
        id: '7',
        name: 'Cosmetics',
        image: TImages.cosmeticIcon,
        isFeatured: true),
    CategoryModel(
        id: '6', name: 'Shoes', image: TImages.shoesIcon, isFeatured: true),
    CategoryModel(
        id: '14',
        name: 'Jewellery',
        image: TImages.jewelleryIcon,
        isFeatured: true),
//subcategories
    CategoryModel(
        id: '8',
        name: 'Sport shoes',
        image: TImages.sportIcon,
        parentId: '1',
        isFeatured: false),
    CategoryModel(
        id: '9',
        name: 'Track suits',
        image: TImages.sportIcon,
        parentId: '1',
        isFeatured: false),
    CategoryModel(
        id: '10',
        name: 'Sports Equipments',
        image: TImages.sportIcon,
        parentId: '1',
        isFeatured: false),

//furniture
    CategoryModel(
        id: '11',
        name: 'Bedroom Furniture',
        image: TImages.furnitureIcon,
        parentId: '5',
        isFeatured: false),
    CategoryModel(
        id: '12',
        name: 'Kitchen Furniture',
        image: TImages.furnitureIcon,
        parentId: '5',
        isFeatured: false),
    CategoryModel(
        id: '13',
        name: 'Office Furniture',
        image: TImages.furnitureIcon,
        parentId: '5',
        isFeatured: false),
    //electronics
    CategoryModel(
        id: '14',
        name: 'Laptop',
        image: TImages.electronicIcon,
        parentId: '2',
        isFeatured: false),
    CategoryModel(
        id: '15',
        name: 'Mobile',
        image: TImages.electronicIcon,
        parentId: '2',
        isFeatured: false),
    CategoryModel(
        id: '16',
        name: 'Shirts',
        image: TImages.clothesIcon,
        parentId: '3',
        isFeatured: false),
  ];
  //list of all brands
  static final List<BrandModel> brands = [
    BrandModel(
        id: '1',
        image: TImages.productImage2,
        name: 'Nike',
        productCount: 265,
        isFeatured: true),
    BrandModel(
        id: '2',
        image: TImages.productImage29,
        name: 'Adidas',
        productCount: 265,
        isFeatured: true),
    BrandModel(
        id: '8',
        image: TImages.productImage54,
        name: 'Kenwood',
        productCount: 265,
        isFeatured: true),
    BrandModel(
        id: '9',
        image: TImages.productImage58,
        name: 'IKEA',
        productCount: 265,
        isFeatured: true),
    BrandModel(
        id: '5',
        image: TImages.productImage16,
        name: 'Apple',
        productCount: 265,
        isFeatured: true),
    BrandModel(
        id: '10',
        image: TImages.productImage38,
        name: 'Acer',
        productCount: 265,
        isFeatured: true),
    BrandModel(
        id: '3',
        image: TImages.productImage10,
        name: 'Jorden',
        productCount: 265,
        isFeatured: true),
    BrandModel(
        id: '4',
        image: TImages.productImage56,
        name: 'Puma',
        productCount: 265,
        isFeatured: true),
    BrandModel(
        id: '6',
        image: TImages.productImage57,
        name: 'Zara',
        productCount: 265,
        isFeatured: true),
    BrandModel(
        id: '7',
        image: TImages.productImage13,
        name: 'Samsung',
        productCount: 265,
        isFeatured: true),
  ];

  //list of all brand categories
  static final List<BrandCategoryModel> brandCategory = [
    BrandCategoryModel(brandId: '1', categoryId: '1'),
    BrandCategoryModel(brandId: '1', categoryId: '8'),
    BrandCategoryModel(brandId: '1', categoryId: '9'),
    BrandCategoryModel(brandId: '1', categoryId: '10'),
    BrandCategoryModel(brandId: '2', categoryId: '1'),
    BrandCategoryModel(brandId: '2', categoryId: '8'),
    BrandCategoryModel(brandId: '2', categoryId: '9'),
    BrandCategoryModel(brandId: '2', categoryId: '10'),
    BrandCategoryModel(brandId: '3', categoryId: '1'),
    BrandCategoryModel(brandId: '3', categoryId: '8'),
    BrandCategoryModel(brandId: '3', categoryId: '9'),
    BrandCategoryModel(brandId: '3', categoryId: '10'),
    BrandCategoryModel(brandId: '4', categoryId: '1'),
    BrandCategoryModel(brandId: '4', categoryId: '8'),
    BrandCategoryModel(brandId: '4', categoryId: '9'),
    BrandCategoryModel(brandId: '4', categoryId: '10'),
    BrandCategoryModel(brandId: '5', categoryId: '15'),
    BrandCategoryModel(brandId: '5', categoryId: '2'),
    BrandCategoryModel(brandId: '10', categoryId: '2'),
    BrandCategoryModel(brandId: '10', categoryId: '14'),
    BrandCategoryModel(brandId: '6', categoryId: '3'),
    BrandCategoryModel(brandId: '6', categoryId: '16'),
    BrandCategoryModel(brandId: '7', categoryId: '2'),
    BrandCategoryModel(brandId: '8', categoryId: '5'),
    BrandCategoryModel(brandId: '8', categoryId: '11'),
    BrandCategoryModel(brandId: '8', categoryId: '12'),
    BrandCategoryModel(brandId: '8', categoryId: '13'),
    BrandCategoryModel(brandId: '9', categoryId: '5'),
    BrandCategoryModel(brandId: '9', categoryId: '11'),
    BrandCategoryModel(brandId: '9', categoryId: '12'),
    BrandCategoryModel(brandId: '9', categoryId: '13'),
  ];
  //list of all product categories
  static final List<ProductCategoryModel> productCategories = [
    ProductCategoryModel(productId: '001', categoryId: '1'),
    ProductCategoryModel(productId: '001', categoryId: '8'),
    ProductCategoryModel(productId: '004', categoryId: '3'),
    ProductCategoryModel(productId: '004', categoryId: '3'),
    ProductCategoryModel(productId: '002', categoryId: '16'),
    ProductCategoryModel(productId: '002', categoryId: '3'),
    ProductCategoryModel(productId: '003', categoryId: '1'),
    ProductCategoryModel(productId: '005', categoryId: '8'),
    ProductCategoryModel(productId: '005', categoryId: '2'),
    ProductCategoryModel(productId: '040', categoryId: '8'),
    ProductCategoryModel(productId: '040', categoryId: '1'),
    ProductCategoryModel(productId: '006', categoryId: '8'),
    ProductCategoryModel(productId: '007', categoryId: '2'),
    ProductCategoryModel(productId: '009', categoryId: '8'),
    ProductCategoryModel(productId: '009', categoryId: '1'),
    ProductCategoryModel(productId: '010', categoryId: '8'),
    ProductCategoryModel(productId: '013', categoryId: '1'),
    ProductCategoryModel(productId: '011', categoryId: '8'),
    ProductCategoryModel(productId: '012', categoryId: '1'),
    ProductCategoryModel(productId: '012', categoryId: '2'),
    ProductCategoryModel(productId: '013', categoryId: '3'),
    ProductCategoryModel(productId: '003', categoryId: '1'),
    ProductCategoryModel(productId: '005', categoryId: '8'),
    ProductCategoryModel(productId: '005', categoryId: '2'),
    ProductCategoryModel(productId: '040', categoryId: '8'),
    ProductCategoryModel(productId: '040', categoryId: '1'),
    ProductCategoryModel(productId: '006', categoryId: '8'),
    ProductCategoryModel(productId: '035', categoryId: '14'),
    ProductCategoryModel(productId: '035', categoryId: '2'),
    ProductCategoryModel(productId: '036', categoryId: '14'),
    ProductCategoryModel(productId: '037', categoryId: '2'),
    ProductCategoryModel(productId: '037', categoryId: '15'),
    ProductCategoryModel(productId: '038', categoryId: '2'),
    ProductCategoryModel(productId: '038', categoryId: '15'),
    ProductCategoryModel(productId: '039', categoryId: '2'),
    ProductCategoryModel(productId: '039', categoryId: '15'),
  ];
  //list of all products
  static final List<ProductModel> products = [
    ProductModel(
      id: '001',
      title: 'NikeShoes',
      thumbnail: TImages.productImage2,
      isFeatured: true,
      stock: 15,
      price: 135,
      description: 'Nike Sports Shoes',
      brand: BrandModel(
          id: '1',
          image: TImages.productImage2,
          name: 'Nike',
          productCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage8,
        TImages.productImage9,
        TImages.productImage10,
        TImages.productImage11
      ],
      salePrice: 30,
      sku: 'HJ73y',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['Eu 30', 'EU 32', 'Eu 34']),
      ],
      productVariations: [],
      productType: '',
    ),
    //
    ProductModel(
      id: '002',
      title: 'Jewellery',
      thumbnail: TImages.productImage67,
      isFeatured: true,
      stock: 15,
      price: 135,
      description: 'Jewellery Necklace',
      brand: BrandModel(
          id: '1',
          image: TImages.productImage1,
          name: 'Necklace',
          productCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage68,
        TImages.productImage69,
        TImages.productImage70,
      ],
      salePrice: 30,
      sku: 'HJ73y',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['Eu 30', 'EU 32', 'Eu 34']),
      ],
      productVariations: [],
      productType: '',
    ),
    //
    ProductModel(
      id: '002',
      title: 'Iphone',
      thumbnail: TImages.productImage15,
      isFeatured: true,
      stock: 15,
      price: 55000,
      description: 'Iphone',
      brand: BrandModel(
          id: '1',
          image: TImages.productImage15,
          name: 'Iphone',
          productCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage16,
        TImages.productImage17,
        TImages.productImage18,
        TImages.productImage15
      ],
      salePrice: 30,
      sku: 'HJ73y',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['Eu 30', 'EU 32', 'Eu 34']),
      ],
      productType: 'ProductType.single',
      productVariations: [],
    ),
    //
    ProductModel(
      id: '003',
      title: 'furniture',
      thumbnail: TImages.productImage35,
      isFeatured: true,
      stock: 15,
      price: 135,
      description: 'Furniture at your door',
      brand: BrandModel(
          id: '1',
          image: TImages.productImage35,
          name: 'Furniture',
          productCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage34,
        TImages.productImage35,
        TImages.productImage36,
        TImages.productImage37
      ],
      salePrice: 30,
      sku: 'HJ73y',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['Eu 30', 'EU 32', 'Eu 34']),
      ],
      productVariations: [],
      productType: '',
    ),
    //
    ProductModel(
      id: '004',
      title: 'Track Suit',
      thumbnail: TImages.productImage1,
      isFeatured: true,
      stock: 15,
      price: 135,
      description: 'Track suit',
      brand: BrandModel(
          id: '1',
          image: TImages.productImage25,
          name: 'Track suit',
          productCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage26,
        TImages.productImage27,
        TImages.productImage28,
        TImages.productImage25
      ],
      salePrice: 30,
      sku: 'HJ73y',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['Eu 30', 'EU 32', 'Eu 34']),
      ],
      productType: 'ProductType.single',
      productVariations: [],
    ),
    //
    ProductModel(
      id: '004',
      title: 'Samsung',
      thumbnail: TImages.productImage1,
      isFeatured: true,
      stock: 15,
      price: 135,
      description: 'Samsung',
      brand: BrandModel(
          id: '1',
          image: TImages.productImage12,
          name: 'Track suit',
          productCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage12,
        TImages.productImage13,
        TImages.productImage14,
      ],
      salePrice: 30,
      sku: 'HJ73y',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['Eu 30', 'EU 32', 'Eu 34']),
      ],
      productType: 'ProductType.single',
      productVariations: [],
    ),
    //
    ProductModel(
      id: '005',
      title: 'Shirt',
      thumbnail: TImages.productImage6,
      isFeatured: true,
      stock: 15,
      price: 135,
      description: 'Shirt',
      brand: BrandModel(
          id: '1',
          image: TImages.productImage6,
          name: 'Shirt',
          productCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage59,
        TImages.productImage60,
        TImages.productImage61,
        TImages.productImage62
      ],
      salePrice: 30,
      sku: 'HJ73y',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['Eu 30', 'EU 32', 'Eu 34']),
      ],
      productType: 'ProductType.single',
      productVariations: [],
    ),
    //
    ProductModel(
      id: '004',
      title: 'Toys',
      thumbnail: TImages.productImage63,
      isFeatured: true,
      stock: 15,
      price: 135,
      description: 'Toys',
      brand: BrandModel(
          id: '1',
          image: TImages.productImage63,
          name: 'Toys',
          productCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage64,
        TImages.productImage65,
        TImages.productImage66,
        TImages.productImage63
      ],
      salePrice: 30,
      sku: 'HJ73y',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['Eu 30', 'EU 32', 'Eu 34']),
      ],
      productVariations: [
        ProductVariationModel(
          id: '1',
          stock: 34,
          price: 134,
          image: TImages.productImage71,
          description:
              'This is a product description for a Colar T-Shirt any fit',
          attributeValues: {
            'Color': 'blue',
            'Size': 'EU 34',
          },
        ),
        ProductVariationModel(
          id: '2',
          stock: 15,
          price: 330,
          image: TImages.productImage73,
          description:
              'This is a product description for a Colar T-Shirt any fit',
          attributeValues: {
            'Color': 'blue',
            'Size': 'EU 34',
          },
        ),
        ProductVariationModel(
          id: '3',
          stock: 0,
          price: 400,
          image: TImages.productImage72,
          description:
              'This is a product description for a Colar T-Shirt any fit',
          attributeValues: {
            'Color': 'blue',
            'Size': 'EU 34',
          },
        ),
        ProductVariationModel(
          id: '4',
          stock: 44,
          price: 220,
          image: TImages.productImage71,
          description:
              'This is a product description for a Colar T-Shirt any fit',
          attributeValues: {
            'Color': 'blue',
            'Size': 'EU 34',
          },
        ),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '008',
      title: 'Decor',
      thumbnail: TImages.productImage1,
      isFeatured: true,
      stock: 15,
      price: 135,
      description: 'Home Decor',
      brand: BrandModel(
          id: '1',
          image: TImages.productImage74,
          name: 'Decor',
          productCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage75,
        TImages.productImage76,
        TImages.productImage77,
      ],
      salePrice: 30,
      sku: 'HJ73y',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['Eu 30', 'EU 32', 'Eu 34']),
      ],
      productType: 'ProductType.single',
      productVariations: [],
    ),

//
    ProductModel(
      id: '009',
      title: 'Jordan',
      thumbnail: TImages.productImage8,
      isFeatured: true,
      stock: 15,
      price: 500,
      description: 'Jordan shoes',
      brand: BrandModel(
          id: '1',
          image: TImages.productImage8,
          name: 'Decor',
          productCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage9,
        TImages.productImage10,
        TImages.productImage11,
      ],
      salePrice: 30,
      sku: 'HJ73y',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['Eu 30', 'EU 32', 'Eu 34']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '3',
            stock: 34,
            price: 500,
            image: TImages.productImage8,
            description: 'Wide variety of shoes ',
            attributeValues: {'Color': 'Green', 'Size': 'Eu 30'})
      ],
      productType: 'ProductType.variable',
    )
  ];
}
