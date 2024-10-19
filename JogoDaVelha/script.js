const celulas = document.querySelectorAll("td");

for (let index = 0; index < celulas.length; index += 1) {
    celulas[index].addEventListener("click", function (event) {
        
        // Escreva só abaixo dessa linha

        event.target.innerHTML = 'X';

        // Até essa linha
    });
}