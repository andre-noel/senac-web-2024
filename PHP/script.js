
// Captura os elementos do HTML
const alts = document.querySelectorAll('.alternativas .box');
const botao = document.getElementById('btnPerguntar');
const boxPergunta = document.querySelector('.enunciado');
const boxAlternativa1 = document.querySelector('.alternativa1');
const boxAlternativa2 = document.querySelector('.alternativa2');
const boxAlternativa3 = document.querySelector('.alternativa3');
const boxAlternativa4 = document.querySelector('.alternativa4');
const boxErrar = document.querySelector('.pontuacao .errar');
const boxParar = document.querySelector('.pontuacao .parar');
const boxAcertar = document.querySelector('.pontuacao .acertar');

// Define o comportamento ao clicar nas alternativas
alts.forEach((box) => {
    box.addEventListener('click', (event) => {
        document.querySelector('.selecionada')?.classList.remove('selecionada');
        event.target.classList.add('selecionada');
        botao.style.visibility = 'visible';
    });
});

botao.addEventListener('click', () => {
    // Colocar o comportamento ao responder

});
