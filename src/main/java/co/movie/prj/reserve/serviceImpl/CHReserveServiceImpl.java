package co.movie.prj.reserve.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.movie.prj.reserve.service.CHReserveMapper;
import co.movie.prj.reserve.service.CHReserveService;
import co.movie.prj.reserve.service.CHReserveVO;

@Repository("reserveDao")
public class CHReserveServiceImpl implements CHReserveService {
	@Autowired
	private CHReserveMapper map;

	@Override
	public boolean Reserve(CHReserveVO reserve) {
		return map.Reserve(reserve);
	}

	@Override
	public List<CHReserveVO> getReserve(CHReserveVO reserve) {

		return map.getReserve(reserve);
	}

	@Override
	public List<CHReserveVO> getJoinTable(CHReserveVO reserve) {

		return map.getJoinTable(reserve);
	}

	@Override
	public List<CHReserveVO> getReserveList(CHReserveVO reserve) {
		return map.getReserveList(reserve);
	}

	@Override
	public int reserveInsert(CHReserveVO reserve) {

		return map.reserveInsert(reserve);
	}

	@Override
	public List<CHReserveVO> reserveSelectList() {
		return map.reserveSelectList();
	}

	@Override
	public List<CHReserveVO> reserveSelectDate(String movie_reserve_title, String movie_reserve_date) {
		return map.reserveSelectDate(movie_reserve_title, movie_reserve_date);
	}

	@Override
	public List<CHReserveVO> reserveSelectListTitle() {
		return map.reserveSelectListTitle();
	}

	@Override
	public List<CHReserveVO> getReserveSeat(String seat) {
		return map.getReserveSeat(seat);
	}

	@Override
	public CHReserveVO getReserveCount() {
		return map.getReserveCount();
	}

}
