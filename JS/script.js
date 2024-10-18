const num1 = document.querySelector("#num1");
const num2 = document.querySelector("#num2");
const resultado = document.querySelector("#resultado");
const botaoSoma = document.querySelector("#botaoSoma");

botaoSoma.addEventListener("click", function () {
    resultado.innerHTML = parseInt(num1.value) + parseInt(num2.value);
});

