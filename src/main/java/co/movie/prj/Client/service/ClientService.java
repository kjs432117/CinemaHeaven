package co.movie.prj.Client.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;


public interface ClientService {

	// C.R.U.D
	List<ClientVO> clientSelectList();

	ClientVO clientSelect(ClientVO client);

	int clientInsert(ClientVO client);

	int clientUpdate(ClientVO client);

	int clientDelete(ClientVO client);

	boolean isIdCheck(String id);
	
	List<ClientVO> clientSearch(String key, String data);
	ClientVO clientOne (String id);
}
