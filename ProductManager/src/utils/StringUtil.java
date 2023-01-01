package utils;

import java.util.Scanner;

import exception.RangeException;

public class StringUtil {
	
	private static Scanner scanner = new Scanner(System.in);
	
	public static String nextLine(String input) {
		return nextLine(input, false);
	}
	
	public static String nextLine(String input, boolean korean) {
		System.out.print(input);
		String str = scanner.nextLine();
		if (korean) {
			for (int i = 0 ; i < str.length() ; i++) {
				if (str.charAt(i) < '가' || str.charAt(i) > '힣') {
					throw new RuntimeException("한글로 입력해주세요.");
				}
			}
		}
		return str;
	}
	
	public static int nextInt(String input) {
		return nextInt(input, 0, 100);
	}
	
	public static int nextInt(String input, int start, int end) {
		int result = Integer.parseInt(nextLine(input));
		if (start > result || end < result)
			throw new RangeException(start, end);
		return result;
	}
	
	public static String convert(String word, int size) {
		String formatter = String.format("%%%ds", size -getKorCnt(word));
		return String.format(formatter, word);
	}
	
	private static int getKorCnt(String kor) {
		int cnt = 0;
		for (int i = 0 ; i < kor.length() ; i++) {
			if (kor.charAt(i) >= '가' && kor.charAt(i) <= '힣') {
				cnt++;
			}
		} return cnt;
	}
}
