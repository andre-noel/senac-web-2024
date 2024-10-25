const botao1 = document.getElementById('btn1');
const botao2 = document.getElementById('btn2');
const botao3 = document.getElementById('btn3');
const botao4 = document.getElementById('btn4');
const resposta = document.getElementById('resposta');

botao1.addEventListener("click", function () {
    resposta.innerHTML = "Andre";
});

botao2.addEventListener("click", function () {
    for (let index = 0; index < 30; index++) {
        resposta.innerHTML = resposta.innerHTML + " Olá, mundo!";
    }
});

botao3.addEventListener("click", function () {
    if (resposta.style.backgroundColor === "pink") {
        resposta.style.backgroundColor = "aquamarine";
    } else {
        resposta.style.backgroundColor = "pink";
    }
});

botao4.addEventListener("click", function () {
    resposta.classList.toggle("destaque");
});