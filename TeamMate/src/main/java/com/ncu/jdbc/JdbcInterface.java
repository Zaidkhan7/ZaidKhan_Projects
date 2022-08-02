package com.ncu.jdbc;

import java.util.List;



import com.ncu.model.CreateTeamModel;
import com.ncu.model.TeamModel;
import com.ncu.model.UserModel;


public interface JdbcInterface {

	public void Adduser(UserModel usermodel , String password);
	public void RemoveVacancy(String position , String teamname , int num);
	public void Updateuser(UserModel usermodel);
	public void AddCreateTeam(CreateTeamModel createteammodel,UserModel usermodel ,String position , int num);
	public CreateTeamModel Search(String user_position);
	public List<CreateTeamModel> showall(String requiredpos);
	public void AddinteamCreator(UserModel usermodel, CreateTeamModel createteammode );
	public UserModel GetUserFromEmail(String email);
	public void AddInTeamApplier(UserModel usermodel , String team_name);
	public CreateTeamModel Vacancy(String position,String teamname);
	public List<TeamModel> showteam(String teamname);
	public void SetPreference(String njp , UserModel um);
	public TeamModel GetTeamnameFromEmail(String email);
}
