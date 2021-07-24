public class Selecao {

    public static void main(String args[]) {

        int vetor[] = {7, 3, 9, 1, 10};
        int menor, indice;

        for (int i = 0; i < vetor.length - 1; i++) {
            menor = vetor[i];
            indice = i;
            for (int j = i + 1; j < vetor.length; j++) {
                if (vetor[j] < menor) {
                    menor = vetor[j];
                    indice = j;
                }
            }
            vetor[indice] = vetor[i];
            vetor [i] = menor;
        }
        for (int i : vetor) {
            System.out.println(i);
        }
    }
}
