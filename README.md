#Sample Shoping cart api only

# API's

# TO Create User
 use it in rails console
* https://simple-shoping-cart.herokuapp.com/users
```
User.create({
  "name": "Mahesh",
  "email": "jmaheshkumar2@gmail.com",
  "phone": nil,
  "address": nil,
  "is_admin": true,
  "password": "Mahesh@123",
  "password_confirmation": "Mahesh@123"
})
```

# TO Login User(Authenticate)
** Here we get a cart id along with the auth_token, So We need to pass this Cart_id to create order and add cart items api's
request
Url: https://simple-shoping-cart.herokuapp.com/authenticate
method: POST
```
body: {
  "email":"jmaheshkumar2@gmail.com",
  "password":"Mahesh@123"
}

response: {
  "auth_token":"eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MzcwNzMxNjR9.3rPeMw8cjotpza86g9zG5oQcvSst8H5W_tZoMGQWFjg",
  "cart_id":1
}
```

* https://simple-shoping-cart.herokuapp.com/products
  Method: GET
  To list all products


# Add Product to a Cart
* https://simple-shoping-cart.herokuapp.com/cart_items
 Method: POST
 ```
  body: {
    "quantity" : 10,
    "product_id" : 1,
    "cart_id": 1
  }
```

# Place an order cart with cart items
* https://simple-shoping-cart.herokuapp.com/orders
Method: POST
```
body: {
	"cart_id": 1,
  "email": "jmaheshkumar2@gmail.com",
  "address": "Coimbatore",
  "phone": "9500526821",
  "pay_method": 0,
  "cart_id": 1
}
```