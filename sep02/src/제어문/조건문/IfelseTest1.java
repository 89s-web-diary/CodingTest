package 제어문.조건문;

import java.util.Scanner;

public class IfelseTest1 {

	public static void main(String[] args) {
		
		System.out.print("어떤 언어를 사용하시나요? >>> ");
		Scanner sc = new Scanner(System.in);
		String name = sc.next();
		
		if (name.equals("자바")) {
			System.out.println("1101호로 go!");
		} else if(name.equals("파이썬")){
			System.out.println("1102호로 go!");
		} else if(name.equals("리눅스")){
			System.out.println("1103호로 go!");
		} else {
			System.out.println("카운터로 go!");
		}
	}

}
