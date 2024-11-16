<?php
// recebe os valores enviados
// é importante "sanitizar" os valores
$id = filter_input(INPUT_POST, "id_pergunta", FILTER_SANITIZE_STRING);
$selecionada = filter_input(INPUT_POST, "selecionada", FILTER_SANITIZE_STRING);

// conecta no banco
$pdo = new PDO("mysql:dbname=trivia;host=localhost", "root", "");

// cria a sql para conferir
$sql = "select count(*) as certa_resposta from pergunta where id = :id and correta = :selecionada";

// executa sql
$query = $pdo->prepare($sql);
$query->execute(["id" => $id, "selecionada" => $selecionada]);

$resultado = $query->fetch(PDO::FETCH_ASSOC);

if ($resultado['certa_resposta']) {
    echo "Certa resposta!";
} else {
    echo "A resposta está errada!";
}