class ProductModel {
  final String image, title;
  final double rate, price;
  final bool isFav;

  ProductModel({
    required this.image,
    required this.title,
    required this.rate,
    required this.price,
    required this.isFav,
  });
}


final fakeProducts=[
  ProductModel(image: "https://cdn.suitsupply.com/image/upload/ar_10:21,b_rgb:efefef,bo_200px_solid_rgb:efefef,c_pad,g_north,w_2600/b_rgb:efefef,c_lfill,g_north,dpr_1,w_768,h_922,f_auto,q_auto,fl_progressive/products/Suits/default/Summer/P8738_1.jpg", title: "title", rate: 4.9, price: 100, isFav: true),
  ProductModel(image: "https://suitshop.com/_next/image/?url=https%3A%2F%2Fcdn.shopify.com%2Fs%2Ffiles%2F1%2F1025%2F3059%2Fproducts%2FNAVY_BLUE_SUIT__075_0ba78598-6c22-4024-820e-019a5fdb109a_1440x2000_crop_center.jpg%3Fv%3D1746640310&w=3400&q=75", title: "title", rate: 4.9, price: 100, isFav: true),
  ProductModel(image: "https://bensoliman.com/cdn/shop/files/Slim_Fit_Black_Wedding_Suit-Turkish_Made.jpg?v=1738597935&width=1080", title: "title", rate: 4.9, price: 100, isFav: true),
  ProductModel(image: "https://m.media-amazon.com/images/I/61PHsYNwdUL._AC_SL1500_.jpg", title: "title", rate: 4.9, price: 100, isFav: true),
  ProductModel(image: "https://m.media-amazon.com/images/I/31iCPJS+llL._SY1000_.jpg", title: "title", rate: 4.9, price: 100, isFav: true),
  ProductModel(image: "https://xcdn.next.co.uk/Common/Items/Default/Default/ItemImages/3_4Ratio/SearchINT/Lge/811264.jpg?im=Resize,width=450", title: "title", rate: 4.9, price: 100, isFav: true),
];
