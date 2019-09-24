package member.model.vo;

import java.sql.Date;

public class Member {
	private int memCode;
	private String memId;
	private String memPwd;
	private String memName;
	private String phone;
	private String phoneValidate;
	private Date enrollDate;
	private String memAutho;
	private int reportedCount;
	private Date expiredInfo;
	private String blackMem;
	
	public Member() {
		super();
	}
	
	public Member(int memCode, String memId, String memPwd, String memName, String phone, String phoneValidate,
			Date enrollDate, String memAutho, int reportedCount, Date expiredInfo, String blackMem) {
		super();
		this.memCode = memCode;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.phone = phone;
		this.phoneValidate = phoneValidate;
		this.enrollDate = enrollDate;
		this.memAutho = memAutho;
		this.reportedCount = reportedCount;
		this.expiredInfo = expiredInfo;
		this.blackMem = blackMem;
	}
	
	public int getMemCode() {
		return memCode;
	}
	public String getMemId() {
		return memId;
	}
	public String getMemPwd() {
		return memPwd;
	}
	public String getMemName() {
		return memName;
	}
	public String getPhone() {
		return phone;
	}
	public String getPhoneValidate() {
		return phoneValidate;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public String getMemAutho() {
		return memAutho;
	}
	public int getReportedCount() {
		return reportedCount;
	}
	public Date getExpiredInfo() {
		return expiredInfo;
	}
	public String getBlackMem() {
		return blackMem;
	}
	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setPhoneValidate(String phoneValidate) {
		this.phoneValidate = phoneValidate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public void setMemAutho(String memAutho) {
		this.memAutho = memAutho;
	}
	public void setReportedCount(int reportedCount) {
		this.reportedCount = reportedCount;
	}
	public void setExpiredInfo(Date expiredInfo) {
		this.expiredInfo = expiredInfo;
	}
	public void setBlackMem(String blackMem) {
		this.blackMem = blackMem;
	}
	
	@Override
	public String toString() {
		return "Member [memCode=" + memCode + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", phone=" + phone + ", phoneValidate=" + phoneValidate + ", enrollDate=" + enrollDate + ", memAutho="
				+ memAutho + ", reportedCount=" + reportedCount + ", expiredInfo=" + expiredInfo + ", blackMem="
				+ blackMem + "]";
	}
}
