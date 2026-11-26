@param gg.jte.Content content
@param String title = "Minha Watchlist"

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
    <style>
        :root {
            --azul-petroleo: #1A3644;
            --caramelo: #C87D55;
            --caramelo-hover: #B06741;
            --off-white: #F8F9FA;
            --cinza-suave: #EAEFEF;
            --texto-dark: #2B3A42;
            --texto-light: #F8F9FA;
            --sombra: 0 4px 12px rgba(26, 54, 68, 0.08);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
            background-color: var(--off-white);
            color: var(--texto-dark);
            line-height: 1.6;
            padding: 20px;
        }

        .wrapper {
            max-width: 900px;
            margin: 0 auto;
            background-color: #FFFFFF;
            border-radius: 12px;
            box-shadow: var(--sombra);
            overflow: hidden;
            border: 1px solid var(--cinza-suave);
        }

        header {
            background-color: var(--azul-petroleo);
            color: var(--texto-light);
            padding: 24px 30px;
        }

        header h2 {
            font-size: 1.8rem;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
            letter-spacing: 0.5px;
        }

        nav {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        nav a {
            color: var(--texto-light);
            text-decoration: none;
            font-weight: 500;
            font-size: 0.95rem;
            padding: 8px 16px;
            border-radius: 6px;
            background-color: rgba(255, 255, 255, 0.1);
            transition: all 0.2s ease-in-out;
        }

        nav a:hover {
            background-color: var(--caramelo);
            color: #FFFFFF;
        }

        main {
            padding: 30px;
        }

        h3 {
            color: var(--azul-petroleo);
            font-size: 1.4rem;
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        p {
            margin-bottom: 15px;
        }

        ul {
            list-style: none;
            margin-top: 15px;
        }

        ul li {
            margin-bottom: 10px;
        }

        ul li a {
            color: var(--azul-petroleo);
            font-weight: 600;
            text-decoration: none;
        }

        ul li a:hover {
            color: var(--caramelo);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
        }

        th, td {
            padding: 12px 16px;
            text-align: left;
        }

        th {
            background-color: var(--azul-petroleo);
            color: var(--texto-light);
            font-weight: 600;
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        tr {
            border-bottom: 1px solid var(--cinza-suave);
        }

        tr:nth-child(even) {
            background-color: rgba(234, 239, 239, 0.3);
        }

        tr:hover {
            background-color: rgba(200, 125, 85, 0.05);
        }

        form label {
            font-weight: 600;
            color: var(--azul-petroleo);
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #CBD5E1;
            border-radius: 6px;
            font-size: 0.95rem;
            color: var(--texto-dark);
            outline: none;
            transition: border-color 0.2s;
        }

        input[type="text"]:focus,
        input[type="date"]:focus,
        select:focus {
            border-color: var(--caramelo);
        }

        .btn, button {
            display: inline-block;
            background-color: var(--caramelo);
            color: #FFFFFF;
            padding: 9px 18px;
            border: none;
            border-radius: 6px;
            font-weight: 600;
            cursor: pointer;
            text-decoration: none;
            font-size: 0.9rem;
            transition: background-color 0.2s ease-in-out, transform 0.1s;
        }

        .btn:hover, button:hover {
            background-color: var(--caramelo-hover);
        }

        .btn:active, button:active {
            transform: scale(0.98);
        }

        a.btn-secundario {
            color: var(--azul-petroleo);
            text-decoration: none;
            margin-left: 12px;
            font-weight: 500;
        }

        a.btn-secundario:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <header>
        <h2>Minha Watchlist</h2>
        <nav>
            <a href="/">Início</a>
            <a href="/filmes">Minha Lista</a>
            <a href="/filmes/novo">Adicionar Título</a>
            <a href="/assistidos">Já Assisti</a>
        </nav>
    </header>

    <main>
        ${content}
    </main>
</div>
</body>
</html>