 

import java.util.*;
import java.io.*;
import java.util.ArrayList;

public class FileTestUser2 {
    public static void main(String[] args) {
        //Criamos 6 users
        User[] usuários = new User[6];
        User[] usuáriosLidos = new User[6];
        
        usuários[0] = new User(1, "Ronaldinho Gaúcho", "Jogador de Futebol");
        usuários[1] = new User(2, "Nelson Piquet", "Piloto de Fómula 1");
        usuários[2] = new User(3, "Monteiro Lobato", "Escritor");
        usuários[3] = new User(4, "Luana Piovani", "Atriz");
        usuários[4] = new User(5, "Ana Maria Braga", "Apresentadora de Televisão");
        usuários[5] = new User(6, "João Carlos", "Programador JEE");

        //passamos os parâmetro
        Escreve(usuários);

        usuáriosLidos = LeUsuarios();
        for(int i=0; i<usuáriosLidos.length;i++){
            usuáriosLidos[i].Mostra();
        }
    }

    private static void Escreve(User[] usr) {
        //File dir = new File("C:\\TutorialArquivos");
        //Cria um novo arquivo
        //File arq = new File(dir, "User2.txt");
        File arq = new File("C:\\Users\\MASCARENHAS\\Documents\\DadosUser2.txt");
        try {
            arq.createNewFile();
            FileWriter fileWriter = new FileWriter(arq, true);
            PrintWriter printWriter = new PrintWriter(fileWriter);
            //Utilizamos o método print() para escrever na
            // mesma linha e um ponto e vírgula no final.
            //O println forçará a troca de linha
            // para o próximo user.
            System.out.println("N. de fichas : " +usr.length);
            for(int i=0; i<usr.length;i++){
                printWriter.print(usr[i].getId() + ";");
                printWriter.print(usr[i].getNome() + ";");
                printWriter.println(usr[i].getObservacao());
            }
            printWriter.flush();
            printWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static User[] LeUsuarios() {
        User[] usr = new User[6];
        File arq = new File("C:\\Users\\MASCARENHAS\\Documents\\DadosUser2.txt");
        try {
            FileReader fileReader = new FileReader(arq);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            String linha = "";

            // Lista que irá guardar o resultado, ou seja,
            // cada linha do arquivo que corresponde a um User
            
            int i=0;
            while ((linha = bufferedReader.readLine()) != null) {
                //
                if (linha != null && !linha.isEmpty() && i<usr.length) {
                    String[] str = linha.split(";");
                    usr[i] = new User(Integer.valueOf(str[0]),str[1],str[2]);
                    i++;
                }
            }
            fileReader.close();
            bufferedReader.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return(usr);
    }
}