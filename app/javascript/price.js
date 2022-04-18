window.addEventListener('keyup', function () {
  const itemPrice = document.getElementById('item-price');
  const itemPriceValue = itemPrice.value;
  const tax = Math.floor(itemPriceValue * 0.1);
  const profit = Math.floor(itemPriceValue - tax);
  document.getElementById('add-tax-price').innerHTML = tax;
  document.getElementById('profit').innerHTML = profit;
});