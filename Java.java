package pkg;

public class Java {
	
	public static String[] printArray(String array[]) {
		for (int i =0 ;i<array.length;i++) {
			System.out.println(array);
		}
		return array;
	}

	public static void main (String[] args) {
		
		StringBuilder sb =new StringBuilder();
		String[] cat = new String[4];
		cat[0] = "avila";
		cat[1] = "Randy";
		cat[2] = "Sam";
		cat[3] = "Ben";
		String filter = "";
		
		for(int i=0; i<cat.length;i++ ) {
		sb.append("'"+cat[i]+"',");
		}
		
		filter = sb.toString();
		filter = filter.substring(0, filter.length()-1);
		
		System.out.println(filter);
		
		String name = "Sam";
		
		String sql =  "where dept_name in("+filter+")"; 

	}
}
