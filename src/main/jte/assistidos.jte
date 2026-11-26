@import com.example.watchlist.Filme
@import java.util.List

@param List<Filme> assistidos

@template.layout(content = @`
    <h3>Já assisti (${assistidos.size()})</h3>

    @if(assistidos.isEmpty())
        <p>Você ainda não marcou nenhum título como assistido.</p>
    @else
        <table>
            <thead>
            <tr>
                <th>Nome</th>
                <th>Tipo</th>
                <th>Nota</th>
                <th>Assistido em</th>
            </tr>
            </thead>
            <tbody>
            @for(Filme f : assistidos)
                <tr>
                    <td><strong>${f.getNome()}</strong></td>
                    <td>${f.getTipo()}</td>
                    <td style="color: var(--caramelo);">
                        @if(f.getNota() != null)
                            ${"★".repeat(f.getNota())}${"☆".repeat(5 - f.getNota())}
                        @else
                            -
                        @endif
                    </td>
                    <td>${f.getDataAssistido() != null ? f.getDataAssistido().toString() : "-"}</td>
                </tr>
            @endfor
            </tbody>
        </table>
    @endif
`)