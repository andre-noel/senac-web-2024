<?php
// Copia o conteúdo do arquivo para a variável
$arquivo = file_get_contents('./perguntas.json');

// Transforma o json em objeto PHP
$json = json_decode($arquivo);

// Recupera o array com as perguntas
// que é um array de objetos
$array_perguntas = $json->results;

// conectando no banco do xampp
// usuário root, senha vazia
// o dbname é o nome do banco que você criou no phpmyadmin
$pdo = new PDO("mysql:dbname=trivia;host=localhost", "root", "");

// Faz um looping nas perguntas
// Em PHP, o count($array_perguntas) é como o
// array_perguntas.length em JavaScript
for ($index = 0; $index < count($array_perguntas); $index++) {
    // cria a SQL de inserção
    $sql = 'insert into pergunta values (
        null,
        :categoria,
        :dificuldade,
        :enunciado,
        :alternativa1,
        :alternativa2,
        :alternativa3,
        :alternativa4,
        :correta
    )';
    
    // Cria a prepared statement
    $query = $pdo->prepare($sql);

    // Executa, passando os valores num array
    $query->execute([
        'categoria' => $array_perguntas[$index]->category,
        'dificuldade' => $array_perguntas[$index]->difficulty,
        'enunciado' => $array_perguntas[$index]->question,
        'alternativa1' => $array_perguntas[$index]->correct_answer,
        'alternativa2' => $array_perguntas[$index]->incorrect_answers[0],
        'alternativa3' => $array_perguntas[$index]->incorrect_answers[1],
        'alternativa4' => $array_perguntas[$index]->incorrect_answers[2],
        'correta' => $array_perguntas[$index]->correct_answer,
    ]);
}

// Encerra o PDO
$pdo = null;