package java_study;

public class StringEx {
	public static void main(String[] args) {
		String str = "가";
		String str2 = str + "나";
		String str3 = "가나";
		System.out.println(str2 == str3);
		System.out.println(str2.equals(str3));
		System.out.println(str + "나" == str + "나");
		System.out.println((str+"나").equals(str2));
		
		String str4 = new String("가");
		String str5 = new String("가");
		System.out.println(str4 == str5);
		System.out.println(str4.equals(str5));
		
		Integer i = 1;
		Integer i2 = new Integer(1);
		
		long l = 1;
		Long l2 = new Long(1L);
		
		System.out.println(l == l2);
		
	}
}
