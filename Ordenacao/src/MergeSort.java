public class MergeSort {

    public static void main(String args[]) {
        int[] x = {4, 3, 8, 1, 9, 2, 7, 6};
        int[] xTemp = new int[8];
        int esq = 0;
        int dir = x.length - 1;
        mergeSort(x, xTemp, esq, dir);        
        for(int i : x){
            System.out.println(i);
        }        
    }

    public static void mergeSort(int[] x, int[] xTemp, int esq, int dir) {
        if (esq < dir) {
            int medio = (esq + dir) / 2;
            mergeSort(x, xTemp, esq, medio);
            mergeSort(x, xTemp, medio + 1, dir);
            mezclar(x, xTemp, esq, medio + 1, dir);
        }
    }

    public static void mezclar(int[] x, int[] xAux, int posEsq, int posDir, int posFin) {
        int finIzq = posDir - 1;
        int posAux = posEsq;
        int numElementos = posFin - posEsq + 1;
        // Busca principal  
        while (posEsq <= finIzq && posDir <= posFin) {
            if (x[posEsq] < x[posDir]) {
                xAux[posAux++] = x[posEsq++];
            } else {
                xAux[posAux++] = x[posDir++];
            }
        }
        // Copia primeira metade  
        while (posEsq <= finIzq) {
            xAux[posAux++] = x[posEsq++];
        }
        // Copia segunda metade  
        while (posDir <= posFin) {
            xAux[posAux++] = x[posDir++];
        }
        // Copia vetor temporário no principal  
        for (int i = 0; i < numElementos; i++, posFin--) {
            x[posFin] = xAux[posFin];
        }

    }
    
    
}
    
    

