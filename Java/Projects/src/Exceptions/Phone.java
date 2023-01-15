package Exceptions;

public class Phone {
	private String phoneType;
	private String phoneNumber;
	
	public Phone(String type, String number) {
		if (type == null || number == null) {
			throw new IllegalArgumentException("The type and number cannot be null");
		}
		setPhoneType(type);
		setPhoneNumber(number);
	}

	public String getPhoneType() {
		return phoneType;
	}

	public void setPhoneType(String phoneType) {
		this.phoneType = phoneType;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	@Override public String toString() {
		return "Type: " + phoneType + " Number: " + phoneNumber;
	}
}
