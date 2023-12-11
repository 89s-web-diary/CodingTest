package 프로그래머스기초4일차;

import java.util.ArrayList;
import java.util.Arrays;

public class 배열만들기5 {

	public static void main(String[] args) {
		String[] intStrs = {"0123456789","9876543210","9999999999999"};
		int k = 50000;
		int s = 5;
		int l = 5;
		Solution6 sol = new Solution6();
		System.out.println(Arrays.toString(sol.solution(intStrs, k, s, l)));
		
	}

}

// 문자열 배열 intStrs와 정수 k, s, l가 주어집니다. intStrs의 원소는 숫자로 이루어져 있습니다.
// 배열 intStrs의 각 원소마다 s번 인덱스에서 시작하는 길이 l짜리 부분 문자열을 잘라내 정수로 변환합니다.
// 이때 변환한 정수값이 k보다 큰 값들을 담은 배열을 return 하는 solution 함수를 완성해 주세요.


class Solution6 {
    public int[] solution(String[] intStrs, int k, int s, int l) {
    	ArrayList<Integer> list = new ArrayList<Integer>();
    	for (String string : intStrs) {
    		int num = Integer.parseInt(string.substring(s, l+s));
			if(num > k){
				list.add(num);
			}
		}
    	int[] answer = new int[list.size()];
    	for (int i = 0; i < answer.length; i++) {
			answer[i] = list.get(i);
		}
        return answer;
    }
}