// Captura o painel
const painel = document.querySelector(".painel");

// Captura o botão
const botao4 = document.getElementById("btn4");
const botao5 = document.getElementById("btn5");

// Ao clicar no botão executa uma função
// botao5.addEventListener(evento, função);
botao5.addEventListener("click", function () {
    painel.innerHTML = "5";
});

botao4.addEventListener("click", function () {
    painel.innerHTML = "4";
});