package 정리문제;

public class Exam6 {

	public static void main(String[] args) {

		int prW = 1000;
		int nW = 2;
		int prM = 2000;
		int nM = 3;

		int totW = prW * nW;
		int totM = prM * nM;

		int tot = totW + totM;

		System.out.println("생수값 금액은 " + totW);
		System.out.println("마스크값 금액은 " + totM);
		System.out.println("총 지불금액은 " + tot);

	}

}
