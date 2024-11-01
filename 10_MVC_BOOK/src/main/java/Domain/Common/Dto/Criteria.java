package Domain.Common.Dto;

public class Criteria {
	//현재 페이지
	private int pageno;
	private int amount;
	private String type;
	private String keyword;
	public int getPageno() {
		return pageno;
	}
	public void setPageno(int pageno) {
		this.pageno = pageno;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public Criteria(String pageno, int amount, String type, String keyword) {
		super();
		this.pageno = Integer.parseInt(pageno);
		this.amount = amount;
		this.type = type;
		this.keyword = keyword;
	}
	public Criteria() {
		//처음 들어왔을 때 값
		this.pageno = 1;
		this.amount = 10;
	}
	public Criteria(String pageno, int amount) {
		this.pageno = Integer.parseInt(pageno);
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "Criteria [pageno=" + pageno + ", amount=" + amount + ", type=" + type + ", keyword=" + keyword + "]";
	}
	
	
	
	//페이지 당 보여줄 게시물 건수
	//타입
	//키워드
}
