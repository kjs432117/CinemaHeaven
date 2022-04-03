package co.movie.prj.reserve.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CHReserveMapper {
	public CHReserveVO getReserveCount();
	
	public boolean Reserve(CHReserveVO reserve);

	public List<CHReserveVO> getReserve(CHReserveVO reserve);

	public List<CHReserveVO> getJoinTable(CHReserveVO reserve);

	public List<CHReserveVO> getReserveList(CHReserveVO reserve);

	public List<CHReserveVO> getReserveSeat(String seat);

	int reserveInsert(CHReserveVO reserve);

	public List<CHReserveVO> reserveSelectList();

	public List<CHReserveVO> reserveSelectListTitle();

	public List<CHReserveVO> reserveSelectDate(@Param("movie_reserve_title") String movie_reserve_title,
			@Param("movie_reserve_date") String movie_reserve_date);
}
