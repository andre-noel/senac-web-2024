// Captura a div onde vou colocar os botões
const botoes = document.querySelector('.botoes');

// Cria um array com os rótulos dos botões
const rotulosBotoes = ['7', '8', '9', '/', '4', '5', '6', '*', '1', '2', '3', '-', 'CE', '0', '=', '+'];

// Faz um looping para criar os botões
// O looping vai de 0 até o último elemento do array
for (let index = 0; index < rotulosBotoes.length; index += 1) {
    // Cria um elemento button e salva na variável botaoNovo
    const botaoNovo = document.createElement('button');

    // Escreve o rótulo dentro do botão
    botaoNovo.innerHTML = rotulosBotoes[index];

    // Adiciona o botão na div botoes
    botoes.appendChild(botaoNovo);
}