package 제어문.반복문;

public class ForReview1 {

	public static void main(String[] args) {
		
		int sum1 =0;
		for(int i = 33; i<223; i++) {
			sum1 = sum1+i;
		}
		System.out.println(sum1);
		
		int sum2 = 0;
		for(int i = 55; i<4501; i=i+2) {
			sum2 = sum2 + i;
		}
		System.out.println(sum2);
		
		int sum3 = 0;
		for(int i=0; i<6001; i=i+5) {
			sum3 = sum3 + i;
		}
		System.out.println(sum3);
		
	}

}
