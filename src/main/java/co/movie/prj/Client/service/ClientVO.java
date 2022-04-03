package co.movie.prj.Client.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ClientVO {

	private String id;
	private String pw;
	private String name;
	private String tell;
	private String author;
	private Date clientDate;
	private String genre;
	//private String picture;
	//private String pfile;
	
}
