public class CombSort {
    public static <E extends Comparable<? super E>> void sort(E[] input){
        int tam = input.length;
        boolean vdd = true;
        while (tam > 1 || vdd){
            if(tam > 1){
                tam = (int) (tam / 1.2473309);
            }
            int i = 0;
            vdd = false;
            while(i + tam < input.length){
                if(input[i].compareTo(input[i + tam]) > 0){
                    E t = input[i];
                    input[i] = input[i+tam];
                    input[i + tam] = t;
                    vdd = true;
                }
                i++;
            }
        }
    }
    public static void main(String[] args){
        Integer[] vetor = {5,4,3,8,7,11,6,12,9,2,1};
        sort(vetor);
    }
}
