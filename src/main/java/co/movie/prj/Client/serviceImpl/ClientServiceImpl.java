package co.movie.prj.Client.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.movie.prj.Client.service.ClientMapper;
import co.movie.prj.Client.service.ClientService;
import co.movie.prj.Client.service.ClientVO;


@Repository("clientDao")
public class ClientServiceImpl implements ClientService {

	@Autowired
	private ClientMapper map;
	
	@Override
	public List<ClientVO> clientSelectList() {
		return map.clientSelectList();
	}

	@Override
	public ClientVO clientSelect(ClientVO client) {
		return map.clientSelect(client);
	}

	@Override
	public int clientInsert(ClientVO client) {
		return map.clientInsert(client);
	}

	@Override
	public int clientUpdate(ClientVO client) {
		return map.clientUpdate(client);
	}

	@Override
	public int clientDelete(ClientVO client) {
		return map.clientDelete(client);
	}

	@Override
	public boolean isIdCheck(String id) {
		return map.isIdCheck(id);
	}

	@Override
	public List<ClientVO> clientSearch(String key, String data) {
		return map.clientSearch(key, data);
	}
	
	@Override
	public ClientVO clientOne(String id) {
		return map.clientOne(id);
	}
	
	
}
