Product.create!([
  {name: "Wildgrowth Walker", price: 2, description: "This is a Magic card.", in_stock: true, supplier_id: 1},
  {name: "Blacker Lotus", price: 5, description: "This a Magic card.", in_stock: true, supplier_id: 2},
  {name: "Resplendant Angel", price: 20, description: "This is a Magic card.", in_stock: true, supplier_id: 3},
  {name: "Omniscience", price: 6, description: "This is a magic card", in_stock: true, supplier_id: 2},
  {name: "Mox Opal", price: 90, description: "This is a Magic card.", in_stock: true, supplier_id: 1},
  {name: "Haphazard Bombardment ", price: 2, description: "This is a Magic Card. ", in_stock: true, supplier_id: 3},
  {name: "Assassin's Trophy", price: 10, description: "This is a Magic Card. ", in_stock: nil, supplier_id: 2},
  {name: "Shock", price: 1, description: "This is a Magic Card. ", in_stock: nil, supplier_id: 1}
])
Supplier.create!([
  {name: "Good Games Chicago", email: "ggchicago@gmail.com", phone_number: "555-555-5555"},
  {name: "Other Supplier inc.", email: "othersupplier@gmail.com", phone_number: "123-456-7890"},
  {name: "Last supplier LLC", email: "lastsupplier@hotmail.com", phone_number: "785-294-9468"}
])
Image.create!([
  {url: "https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/144979_200w.jpg", product_id: 1},
  {url: "https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/830_200w.jpg", product_id: 2},
  {url: "https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/168773_200w.jpg", product_id: 3},
  {url: "https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/169083_200w.jpg", product_id: 4},
  {url: "https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/36238_200w.jpg", product_id: 5},
  {url: "https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/162168_200w.jpg", product_id: 6},
  {url: "https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/175575_200w.jpg", product_id: 7},
  {url: "https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/126437_200w.jpg", product_id: 8}
])
