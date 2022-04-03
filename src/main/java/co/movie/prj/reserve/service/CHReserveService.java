package co.movie.prj.reserve.service;

import java.util.List;

public interface CHReserveService {
	public CHReserveVO getReserveCount();
	
	public boolean Reserve(CHReserveVO reserve);

	public List<CHReserveVO> getReserve(CHReserveVO reserve);

	public List<CHReserveVO> getJoinTable(CHReserveVO reserve);

	public List<CHReserveVO> getReserveList(CHReserveVO reserve);

	public List<CHReserveVO> getReserveSeat(String seat);

	public int reserveInsert(CHReserveVO reserve);

	public List<CHReserveVO> reserveSelectList();

	public List<CHReserveVO> reserveSelectListTitle();

	public List<CHReserveVO> reserveSelectDate(String movie_reserve_title, String movie_reserve_date);

}
