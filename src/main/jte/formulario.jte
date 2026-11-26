@template.layout(content = @`
    <h3>Novo título</h3>

    <form method="post" action="/filmes">
        <div style="margin-bottom: 15px;">
            <label>Nome *</label>
            <input type="text" name="nome" required placeholder="Ex: Stranger Things">
        </div>

        <div style="margin-bottom: 15px;">
            <label>Tipo:</label>
            <label style="display:inline; font-weight:normal; margin-right: 15px;">
                <input type="radio" name="tipo" value="Filme" checked> Filme
            </label>
            <label style="display:inline; font-weight:normal;">
                <input type="radio" name="tipo" value="Série"> Série
            </label>
        </div>

        <div style="margin-bottom: 15px;">
            <label>Gênero:</label>
            <select name="genero">
                <option value="Ação">Ação</option>
                <option value="Comédia">Comédia</option>
                <option value="Terror">Terror</option>
                <option value="Animação">Animação</option>
                <option value="Ficção">Ficção</option>
            </select>
        </div>

        <div style="margin-bottom: 15px;">
            <label>Plataforma:</label>
            <select name="plataforma">
                <option value="Netflix">Netflix</option>
                <option value="Disney+">Disney+</option>
                <option value="Max">Max</option>
                <option value="Prime">Prime</option>
                <option value="Outro">Outro</option>
            </select>
        </div>

        <div style="margin-bottom: 20px;">
            <label>Quando vou assistir:</label>
            <input type="date" name="dataPrevista">
        </div>

        <div>
            <button type="submit" class="btn">Salvar</button>
            <a href="/filmes" class="btn-secundario">Cancelar</a>
        </div>
    </form>
`)