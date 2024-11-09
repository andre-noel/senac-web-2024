<?php
$perguntas = [
    [
        "pergunta" => "Quem descobriu o Brasil?",
        "alternativas" => [
            "Pedro",
            "João",
            "Emengardo",
            "Apolo"
        ],
        "correta" => "Pedro"
    ],
    [
        "pergunta" => "Quem descobriu a América?",
        "alternativas" => [
            "Pedro",
            "João",
            "Emengardo",
            "Colombo"
        ],
        "correta" => "Colombo"
    ],
];

$numPergunta = rand(0, count($perguntas) - 1);
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show do Milhão</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=B612+Mono:ital,wght@0,400;0,700;1,400;1,700&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">
    <script src="script.js" defer></script>
</head>

<body>
    <section class="pergunta">
        <div class="box enunciado"><?php echo $perguntas[$numPergunta]["pergunta"]; ?></div>
        <ul class="alternativas">
            <?php
            for ($i = 0; $i < 4; $i++) {
                echo "<li class=\"box alternativa" . ($i + 1) . "\">";
                echo $perguntas[$numPergunta]["alternativas"][$i];
                echo "</li>";
            }
            ?>
        </ul>
        <button class="box" id="btnPerguntar">Pode perguntar?</button>
        <div class="pontuacao">
            <div class="box errar"></div>
            <div class="box parar"></div>
            <div class="box acertar"></div>
        </div>
        <div class="pontuacaoLabel">
            <div>ERRAR</div>
            <div>PARAR</div>
            <div>ACERTAR</div>
        </div>
    </section>
</body>

</html>