package team3_jsp;

public class Calculator {

		public int Cube(int n) {
			return n*n*n;
		}
		
		// 프로퍼티
		private String id;
		private String passwd;
		private String name;
		private int age;

		//getter / setter 메서드
		public String getId() {
			return id;
		}

		public String getPasswd() {
			return passwd;
		}

		public String getName() {
			return name;
		}

		public int getAge() {
			return age;
		}

		public void setId(String id) {
			this.id = id;
		}

		public void setPasswd(String passwd) {
			this.passwd = passwd;
		}

		public void setName(String name) {
			this.name = name;
		}

		public void setAge(int age) {
			this.age = age;
		}
}
