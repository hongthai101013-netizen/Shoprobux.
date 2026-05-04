<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Shop Roblox</title>
  <style>
    body { font-family: Arial; background: #111; color: #fff; text-align: center; }
    .product { border: 1px solid #444; padding: 10px; margin: 10px; display: inline-block; width: 200px; }
    button { padding: 5px 10px; cursor: pointer; }
    #admin { margin-top: 30px; border-top: 2px solid #555; padding-top: 20px; }
    input { margin: 5px; padding: 5px; }
  </style>
</head>
<body>

<h1>🛒 SHOP ROBLOX</h1>

<div id="products"></div>

<!-- ADMIN PANEL -->
<div id="admin">
  <h2>🔑 Admin Panel</h2>
  <input type="password" id="adminPass" placeholder="Nhập mật khẩu">
  <button onclick="login()">Đăng nhập</button>

  <div id="adminTools" style="display:none;">
    <h3>Thêm sản phẩm</h3>
    <input id="name" placeholder="Tên sản phẩm">
    <input id="price" placeholder="Giá">
    <button onclick="addProduct()">Thêm</button>
  </div>
</div>

<script>
let products = [
  {name: "Acc Roblox VIP", price: "50k"},
  {name: "Gamepass xịn", price: "20k"}
];

let adminPassword = "123456"; // đổi mật khẩu ở đây

function render(){
  let html = "";
  products.forEach((p, i) => {
    html += `
      <div class="product">
        <h3>${p.name}</h3>
        <p>Giá: ${p.price}</p>
        <button onclick="buy(${i})">Mua</button>
        <button onclick="deleteProduct(${i})">Xóa</button>
      </div>
    `;
  });
  document.getElementById("products").innerHTML = html;
}

function buy(i){
  alert("Liên hệ admin để mua: " + products[i].name);
}

function deleteProduct(i){
  products.splice(i,1);
  render();
}

function login(){
  let pass = document.getElementById("adminPass").value;
  if(pass === adminPassword){
    document.getElementById("adminTools").style.display = "block";
    alert("Đăng nhập thành công!");
  } else {
    alert("Sai mật khẩu!");
  }
}

function addProduct(){
  let name = document.getElementById("name").value;
  let price = document.getElementById("price").value;
  products.push({name, price});
  render();
}

render();
</script>

</body>
</html>
