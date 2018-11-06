package jp.co.rakus.form;

import javax.validation.constraints.NotBlank;

public class AdministratorForm {
	
	@NotBlank(message = "名前は必須です。")
	public String name;
	@NotBlank(message= "メールアドレスを入力してください。")
	private String mailAddress;
	@NotBlank(message= "パスワードを入力してください。")
	private String password;

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMailAddress() {
		return mailAddress;
	}

	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
