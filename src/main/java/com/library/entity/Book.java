package com.library.entity;

public class Book {
	// 分页
	private int begin;

	private int end;

	// 实体
	private String id;

	private String title;

	private String subtitle;

	private String author;

	private String publisher;

	private String pages;

	private String image;

	private String binding;

	private String translator;

	private String isbn13;

	private String isbn10;

	private String price;

	private String pubdate;

	private String numraters;

	private String average;

	private Integer count;

	private String authorIntro;

	private String summary;

	private String catalog;
	
	private String category;
	
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category == null ? null : category.trim();
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public String getAuthorIntro() {
		return authorIntro;
	}

	public void setAuthorIntro(String authorIntro) {
		this.authorIntro = authorIntro == null ? null : authorIntro.trim();
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary == null ? null : summary.trim();
	}

	public String getCatalog() {
		return catalog;
	}

	public void setCatalog(String catalog) {
		this.catalog = catalog == null ? null : catalog.trim();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title == null ? null : title.trim();
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle == null ? null : subtitle.trim();
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author == null ? null : author.trim();
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher == null ? null : publisher.trim();
	}

	public String getPages() {
		return pages;
	}

	public void setPages(String pages) {
		this.pages = pages == null ? null : pages.trim();
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image == null ? null : image.trim();
	}

	public String getBinding() {
		return binding;
	}

	public void setBinding(String binding) {
		this.binding = binding == null ? null : binding.trim();
	}

	public String getTranslator() {
		return translator;
	}

	public void setTranslator(String translator) {
		this.translator = translator == null ? null : translator.trim();
	}

	public String getIsbn13() {
		return isbn13;
	}

	public void setIsbn13(String isbn13) {
		this.isbn13 = isbn13 == null ? null : isbn13.trim();
	}

	public String getIsbn10() {
		return isbn10;
	}

	public void setIsbn10(String isbn10) {
		this.isbn10 = isbn10 == null ? null : isbn10.trim();
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price == null ? null : price.trim();
	}

	public String getPubdate() {
		return pubdate;
	}

	public void setPubdate(String pubdate) {
		this.pubdate = pubdate == null ? null : pubdate.trim();
	}

	public String getNumraters() {
		return numraters;
	}

	public void setNumraters(String numraters) {
		this.numraters = numraters == null ? null : numraters.trim();
	}

	public String getAverage() {
		return average;
	}

	public void setAverage(String average) {
		this.average = average == null ? null : average.trim();
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Book(String title, String author) {
		super();
		this.title = title;
		this.author = author;
	}

	public Book(int begin, int end, Book book) {
		super();
		this.begin = begin;
		this.end = end;
		this.title = book.title;
		this.author = book.author;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Book [begin=" + begin + ", end=" + end + ", id=" + id
				+ ", title=" + title + ", subtitle=" + subtitle + ", author="
				+ author + ", publisher=" + publisher + ", pages=" + pages
				+ ", image=" + image + ", binding=" + binding + ", translator="
				+ translator + ", isbn13=" + isbn13 + ", isbn10=" + isbn10
				+ ", price=" + price + ", pubdate=" + pubdate + ", numraters="
				+ numraters + ", average=" + average + ", count=" + count
				+ ", authorIntro=" + authorIntro + ", summary=" + summary
				+ ", catalog=" + catalog + "]";
	}
	

}