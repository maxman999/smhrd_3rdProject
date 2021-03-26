package smhrd.sbs.model;

public class MemberVO {
   private String id;
   private String password;
   private String nickname;
   private String email;
   private String phone;
   private String premium;

   public MemberVO() {
   }
   

   public MemberVO(String id, String password, String nickname, String email, String phone, String premium) {
	this.id = id;
	this.password = password;
	this.nickname = nickname;
	this.email = email;
	this.phone = phone;
	this.premium = premium;
}



public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public String getNickname() {
      return nickname;
   }

   public void setNickname(String nickname) {
      this.nickname = nickname;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getPhone() {
      return phone;
   }

   public void setPhone(String phone) {
      this.phone = phone;
   }

   public String getPremium() {
      return premium;
   }

   public void setPremium(String premium) {
      this.premium = premium;
   }

   @Override
   public String toString() {
      return "MemberVO [id=" + id + ", password=" + password + ", nickname=" + nickname + ", email=" + email
            + ", phone=" + phone + ", premium=" + premium + "]";
   }

}