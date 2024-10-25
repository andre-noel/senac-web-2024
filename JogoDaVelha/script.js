const celulas = document.querySelectorAll("td");

for (let index = 0; index < celulas.length; index += 1) {
    celulas[index].addEventListener("click", function (event) {
        
        // 1. Definir quem é o jogador da vez
        // 2. Marcar apenas as células que estiverem vazias
        // 3. Mudar o jogador após marcar a célula
        // 4. Verificar se alguém ganhou o jogo

        // Escreva só abaixo dessa linha
        
        event.target.innerHTML = 'X';

        // Até essa linha
    });
}