const celulas = document.querySelectorAll("td");
let jogador = 'X';

for (let index = 0; index < celulas.length; index += 1) {
    celulas[index].addEventListener("click", (event) => {
        
        // Escreva só abaixo dessa linha

        const celulaClicada = event.target;
        //celulaClicada.innerHTML = 'X';
    
        
        // 2. Marcar apenas as células que estiverem vazias
        if (celulaClicada.innerHTML === '') {
            celulaClicada.innerHTML = jogador;

            // 4. Verificar se alguém ganhou o jogo
            const combinacoes = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]];
            combinacoes.forEach((comb) => {
                if (celulas[comb[0]].innerHTML != ''
                    && celulas[comb[0]].innerHTML == celulas[comb[1]].innerHTML 
                    && celulas[comb[0]].innerHTML == celulas[comb[2]].innerHTML) {
                        celulas[comb[0]].classList.add('destaque');
                        celulas[comb[1]].classList.add('destaque');
                        celulas[comb[2]].classList.add('destaque');
    
                }
            });
            
            // 3. Mudar o jogador após marcar a célula
            //if (jogador === 'X') {
            //    jogador = 'O';
            //} else {
            //    jogador = 'X';
            //}

            jogador = (jogador === 'X' ? 'O' : 'X');
            
        }

        
        // Até essa linha
    });
}