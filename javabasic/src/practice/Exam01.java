package practice;

import javax.swing.JOptionPane;

public class Exam01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String width = JOptionPane.showInputDialog("가로 길이를 입력해주세요");
		String height = JOptionPane.showInputDialog("세로 길이를 입력해주세요");

		int wid = Integer.parseInt(width);
		int hgt = Integer.parseInt(height);

		int area = wid * hgt;

		JOptionPane.showMessageDialog(null, "사각형의 면적은 " + area + "입니다");

	}

}
