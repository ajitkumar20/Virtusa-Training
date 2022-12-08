class Product {
    constructor(productId, productName, productPrice) {
      this.productId = productId;
      this.productName = productName;
      this.productPrice = productPrice;
    }
  }
  const p1 = new Product(1, 'Laptop', 1000);
  const p2 = new Product(2, 'Phone', 500);
  const p3 = new Product(3, 'Tablet', 700);
  const productsJson = JSON.stringify([p1, p2, p3]);

  const products = JSON.parse(productsJson);

  new Promise((resolve, reject) => {
    if (products) {
      resolve(products);
    } else {
      reject('Could not parse JSON data');
    }
  }).then(products => {
    console.log(products); // [{ productId: 1, productName: 'Laptop', productPrice: 1000 }, ...]
  });
      