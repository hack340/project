 

import java.util.Date;
public class User {
    private Integer id;
    private String nome;
    private String observacao;

    public User() {
    }

    public User(Integer id, String nome, String observacao) {
        this.id = id;
        this.nome = nome;
        this.observacao = observacao;
    }
    //Gere os métodos getters e setters
    //Subscreva o método toString()   
    public Integer getId(){ 
        return this.id; 
    }
    public String getNome(){ return this.nome; }
    public String getObservacao(){ return this.observacao; }

    public void setId(Integer id){
        this.id = id;
    }
    public void setNome(String nm){this.nome = nm;}
    public void setObservacao(String obs){this.observacao = obs;}
    
    public void Mostra(){
        System.out.println("Id   = " + this.id + "\n" +
                         "Nome = " + this.nome + "\n" +
                         "Obs. = " + this.observacao + "\n");
        
    }
}
