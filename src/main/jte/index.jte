@param int total

@template.layout(content = @`
    <h3>Bem-vindo(a) à sua Watchlist!</h3>
    <p>Você tem <strong>${total}</strong> títulos pendentes para assistir 🎬</p>

    <ul>
        <li><a href="/filmes">Minha Lista (${total})</a></li>
        <li><a href="/filmes/novo">Adicionar Título</a></li>
        <li><a href="/assistidos">Já Assisti</a></li>
    </ul>
`)