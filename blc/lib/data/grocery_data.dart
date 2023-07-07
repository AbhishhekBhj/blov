class GroceriesList {
  static List<Map<String, dynamic>> groceryProducts = [
    {
      'name': 'Apples',
      'category': 'Fruits',
      'brand': 'Organic Farms',
      'price': 1.99,
      'quantity': 10,
      'imageUrl':
          'https://domf5oio6qrcr.cloudfront.net/medialibrary/11525/0a5ae820-7051-4495-bcca-61bf02897472.jpg',
      'description': 'Fresh and organic apples.',
    },
    {
      'name': 'Bananas',
      'category': 'Fruits',
      'brand': 'Chiquita',
      'price': 0.79,
      'quantity': '1 bunch',
      'imageUrl':
          'https://th-thumbnailer.cdn-si-edu.com/xK6NAJHiv_51fzn5sDiQt0eD5Is=/fit-in/1600x0/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/d5/24/d5243019-e0fc-4b3c-8cdb-48e22f38bff2/istock-183380744.jpg',
      'description': 'Ripe and delicious bananas.',
    },
    {
      'name': 'Milk',
      'category': 'Dairy',
      'brand': 'Meadow Fresh',
      'price': 2.49,
      'quantity': '1 gallon',
      'imageUrl':
          'https://static.toiimg.com/thumb/msid-70139351,width-1280,resizemode-4/70139351.jpg',
      'description': 'Fresh and creamy milk.',
    },
    {
      'name': 'Bread',
      'category': 'Bakery',
      'brand': 'Wonder Bread',
      'price': 2.99,
      'quantity': '1 loaf',
      'imageUrl':
          'data:image/jpeg;base64,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',
      'description': 'Soft and freshly baked bread.',
    },
    {
      'name': 'Eggs',
      'category': 'Dairy',
      'brand': 'Happy Hen',
      'price': 1.89,
      'quantity': '1 dozen',
      'imageUrl':
          'https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg',
      'description': 'Farm-fresh eggs.',
    },
    {
      'name': 'Mango',
      'category': 'Fruits',
      'brand': 'Tropical Delights',
      'price': 2.99,
      'quantity': '1 piece',
      'imageUrl':
          'https://seller.shoponn.co.in/Item/Devgad%20Alphonso%20Hapus%20Mango%2015%20pcA.jpg',
      'description': 'Juicy and tropical mango.',
    },
  ];
}
