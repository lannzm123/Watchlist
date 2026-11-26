package com.example.watchlist;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
public class WatchlistController {

    private final List<Filme> paraAssistir = new ArrayList<>();
    private final List<Filme> assistidos = new ArrayList<>();

    public WatchlistController() {
        // Listas iniciam vazias
    }

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("total", paraAssistir.size());
        return "index";
    }

    @GetMapping("/filmes")
    public String lista(Model model) {
        model.addAttribute("filmes", paraAssistir);
        return "lista";
    }

    @GetMapping("/filmes/novo")
    public String novoFormulario() {
        return "formulario";
    }

    @PostMapping("/filmes")
    public String salvarFilme(Filme filme) {
        paraAssistir.add(filme);
        return "redirect:/filmes";
    }

    @PostMapping("/filmes/marcar-assistido")
    public String marcarComoAssistido(@RequestParam String nome) {
        Filme encontrado = paraAssistir.stream()
                .filter(f -> f.getNome().equalsIgnoreCase(nome))
                .findFirst()
                .orElse(null);

        if (encontrado != null) {
            paraAssistir.remove(encontrado);
            encontrado.setNota(5);
            encontrado.setDataAssistido(LocalDate.now());
            assistidos.add(encontrado);
        }
        return "redirect:/filmes";
    }

    @GetMapping("/assistidos")
    public String assistidos(Model model) {
        model.addAttribute("assistidos", assistidos);
        return "assistidos";
    }
}