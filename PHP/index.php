<?php
// conecta no banco de dados
$pdo = new PDO("mysql:dbname=trivia;host=localhost", "root", "");

// cria a sql para recuperar uma pergunta, sem trazer a resposta correta
$sql = "select id, enunciado, alternativa1, alternativa2, alternativa3, alternativa4 from pergunta order by rand() limit 1";

// Executa a consulta
$resultado = $pdo->query($sql);

// Criando variáveis para facilitar
$linha = $resultado->fetch(PDO::FETCH_ASSOC);
$enunciado = $linha['enunciado'];
$alternativas[] = $linha['alternativa1'];
$alternativas[] = $linha['alternativa2'];
$alternativas[] = $linha['alternativa3'];
$alternativas[] = $linha['alternativa4'];
$id = $linha['id'];

// Embaralha alternativas
shuffle($alternativas);

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
        <div class="box enunciado"><?php echo $enunciado; ?></div>
        <ul class="alternativas">
            <?php
            for ($i = 0; $i < 4; $i++) {
                echo "<li class=\"box alternativa" . ($i + 1) . "\">";
                echo $alternativas[$i];
                echo "</li>";
            }
            ?>
        </ul>
        <form method="post" action="./confere.php">
            <input type="hidden" name="id_pergunta" value="<?php echo $id; ?>" />
            <input type="hidden" id="selecionada" name="selecionada" value="" />
            <button class="box" type="submit" id="btnPerguntar">Pode perguntar?</button>
        </form>
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