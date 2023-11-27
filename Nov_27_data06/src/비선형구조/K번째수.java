package 비선형구조;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

import 배열기본.Print;

public class K번째수 {

	public static void main(String[] args) {
		Solution3 s = new Solution3();
		int[] array = {1, 5, 2, 6, 3, 7, 4};
		int[][] commands = {{2, 5, 3}, {4, 4, 1}, {1, 7, 3}};
		Print.arr(s.solution(array, commands));
	}
}

// 배열 array의 i번째 숫자부터 j번째 숫자까지 자르고 정렬했을 때, k번째에 있는 수를 구하려 합니다.
// 예를 들어 array가 [1, 5, 2, 6, 3, 7, 4], i = 2, j = 5, k = 3이라면
// array의 2번째부터 5번째까지 자르면 [5, 2, 6, 3]입니다.
// 1에서 나온 배열을 정렬하면 [2, 3, 5, 6]입니다.
// 2에서 나온 배열의 3번째 숫자는 5입니다.
// 배열 array, [i, j, k]를 원소로 가진 2차원 배열 commands가 매개변수로 주어질 때,
// commands의 모든 원소에 대해 앞서 설명한 연산을 적용했을 때 나온 결과를 배열에 담아 return 하도록 solution 함수를 작성해주세요.

class Solution3 {
    public int[] solution(int[] array, int[][] commands) {
        ArrayList<Integer> list = new ArrayList<>();
        ArrayList<Integer> list2 = new ArrayList<>();
    	ArrayList<Integer> ans = new ArrayList<Integer>();
        for (Integer i : array) {
			list.add(i);
		}
    	for (int i = 0; i < commands.length; i++) {
    		list2.addAll(list.subList(commands[i][0]-1, commands[i][1]));
    		Collections.sort(list2);
    		ans.add(list2.get(commands[i][2]-1));
    		list2.clear();
    	}
    	int[] answer = new int[ans.size()];
    	for (int i = 0; i < answer.length; i++) {
			answer[i] = ans.get(i);
		}
        return answer;
    }
}

class Solution4 {
    public int[] solution(int[] array, int[][] commands) {
    	int[] answer = new int[commands.length];
    	
    	for (int i = 0; i < commands.length; i++) {
    		int[] ans = Arrays.copyOfRange(array, commands[i][0]-1, commands[i][1]);
    		Arrays.sort(ans);
    		answer[i] = ans[commands[i][2]-1];
    	}
    	
        return answer;
    }
}