@import com.example.watchlist.Filme
@import java.util.List

@param List<Filme> filmes

@template.layout(content = @`
    <h3>
        <span>Para assistir (${filmes.size()})</span>
        <a href="/filmes/novo" class="btn">+ Adicionar</a>
    </h3>

    @if(filmes.isEmpty())
        <p>Nenhum título ainda. Que tal adicionar um?</p>
    @else
        <table>
            <thead>
            <tr>
                <th>Nome</th>
                <th>Tipo</th>
                <th>Gênero</th>
                <th>Plataforma</th>
                <th>Data prevista</th>
                <th>Ação</th>
            </tr>
            </thead>
            <tbody>
            @for(Filme f : filmes)
                <tr>
                    <td><strong>${f.getNome()}</strong></td>
                    <td>${f.getTipo()}</td>
                    <td>${f.getGenero()}</td>
                    <td>${f.getPlataforma()}</td>
                    <td>${f.getDataPrevista() != null ? f.getDataPrevista().toString() : "-"}</td>
                    <td>
                        <form method="post" action="/filmes/marcar-assistido" style="display:inline;">
                            <input type="hidden" name="nome" value="${f.getNome()}">
                            <button type="submit" class="btn" style="padding: 4px 10px; font-size: 0.8rem;">✔ Assisti!</button>
                        </form>
                    </td>
                </tr>
            @endfor
            </tbody>
        </table>
    @endif
`)