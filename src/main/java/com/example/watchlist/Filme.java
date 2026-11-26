package com.example.watchlist;

import java.time.LocalDate;

public class Filme {
    private String nome;
    private String tipo;
    private String genero;
    private String plataforma;
    private LocalDate dataPrevista;
    private LocalDate dataAssistido;
    private Integer nota;

    public Filme() {}

    public Filme(String nome, String tipo, String genero, String plataforma, LocalDate dataPrevista) {
        this.nome = nome;
        this.tipo = tipo;
        this.genero = genero;
        this.plataforma = plataforma;
        this.dataPrevista = dataPrevista;
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public String getTipo() { return tipo; }
    public void setTipo(String tipo) { this.tipo = tipo; }

    public String getGenero() { return genero; }
    public void setGenero(String genero) { this.genero = genero; }

    public String getPlataforma() { return plataforma; }
    public void setPlataforma(String plataforma) { this.plataforma = plataforma; }

    public LocalDate getDataPrevista() { return dataPrevista; }
    public void setDataPrevista(LocalDate dataPrevista) { this.dataPrevista = dataPrevista; }

    public LocalDate getDataAssistido() { return dataAssistido; }
    public void setDataAssistido(LocalDate dataAssistido) { this.dataAssistido = dataAssistido; }

    public Integer getNota() { return nota; }
    public void setNota(Integer nota) { this.nota = nota; }
}