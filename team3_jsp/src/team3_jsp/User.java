package team3_jsp;

public class User {
		private int id;
        private String userPassword;
        private String userName;
        private String userGender;
        private String userID;
        
        public String getUserPassword() {
            return userPassword;
        }
        public void setUserPassword(String userPassword) {
            this.userPassword = userPassword;
        }
        public String getUserName() {
            return userName;
        }
        public void setUserName(String userName) {
            this.userName = userName;
        }
        public String getUserGender() {
            return userGender;
        }
        public void setUserGender(String userGender) {
            this.userGender = userGender; 
        }
		public String getUserID() {
			return userID;
		}
		public void setUserID(String userID) {
			this.userID = userID;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}



        
}