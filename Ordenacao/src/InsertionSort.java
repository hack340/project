public class InsertionSort {
    public static void main(String[] args){
        int[] nome = {6,5,3,7,12,8,4,11,9,10,1,2};
        OrdenaInsercao(nome);
        for(int i = 0; i < nome.length; i++){
            System.out.println(nome[i]);
        }
    }
    public static void OrdenaInsercao(int nome[]) {
        int num = 0;
        for(int i=0; i < nome.length; i++) {
            num = nome[i];
            for(int j = i -1; (j >=0) && (nome[j] > num); j--) {
                nome[j+1] = nome[j];
                nome[j] = num;
            }
        }
    } 
}
