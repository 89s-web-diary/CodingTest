package 정리문제;

import javax.swing.JOptionPane;

public class Exam3 {

	public static void main(String[] args) {

		String inp1 = JOptionPane.showInputDialog("첫번째 수를 입력");
		String inp2 = JOptionPane.showInputDialog("두번째 수를 입력");

		int n1 = Integer.parseInt(inp1);
		int n2 = Integer.parseInt(inp2);

		int res = n1 + n2;

		JOptionPane.showMessageDialog(null, res);

	}

}
