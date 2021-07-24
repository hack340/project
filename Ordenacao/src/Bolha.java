public class Bolha {

    public static void main(String[] args) {
        
        int vetor[] = {7, 3, 9, 1, 10};
        int aux;
        int cont = 1;
        do {
            for (int i = 0; i < vetor.length - 1; i++) {
                if (vetor[i] > vetor[i + 1]) {
                    aux = vetor[i];
                    vetor[i] = vetor[i + 1];
                    vetor[i + 1] = aux;
                }
            }
            cont++;
        } while (cont < vetor.length);

        for (int i : vetor) {
            System.out.println(i);
        }
    }
}
