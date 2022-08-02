package com.ncu.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ncu.model.CreateTeamModel;
import com.ncu.model.TeamModel;
import com.ncu.model.UserModel;

@Repository
public class JdbcClass implements JdbcInterface{

	@Autowired
	private JdbcTemplate jdbc;

	 public void setJdbcTemplate(JdbcTemplate jdbc)
	    {
	        this.jdbc = jdbc;
	    }
	
	public JdbcClass(DataSource ds)
	{
		jdbc = new JdbcTemplate(ds);
	}
	@Override
	public void Adduser(UserModel usermodel,String password) {
		// TODO Auto-generated method stub
		String insertquery = "insert into user_information values(?,?,?,?,?,?)";
		jdbc.update(insertquery,new Object[]{usermodel.getFname(),usermodel.getLname(),usermodel.getAge(),usermodel.getEmail(),password,usermodel.getUser_position()});
	}

	@Override
	public void RemoveVacancy(String position , String teamname,int num) {
		// TODO Auto-generated method stub
		String sql = "Update create_team_details set number=? where required_position=? and project_team_name=?";
		jdbc.update(sql,new Object[] {(num-1) , position , teamname });
		
	}

	@Override
	public void Updateuser(UserModel usermodel) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void AddCreateTeam(CreateTeamModel createteammodel , UserModel usermodel , String pos , int num) {
		// TODO Auto-generated method stub
		String insertquery = "insert into create_team_details values(?,?,?,?,?)";
		
		jdbc.update(insertquery,new Object[] {usermodel.getFname(),usermodel.getLname(),createteammodel.getProject_team_name(),pos,num});
		}
	@Override
	public CreateTeamModel Search(String user_position) {
		// TODO Auto-generated method stub
		String insertquery = "select * from create_team_details where required_position=?";
		
		CreateTeamModel create = (CreateTeamModel) jdbc.queryForObject(insertquery,new Object[] {user_position}, new Create_Team_Row_Mapper());	
		return create;
	}
	@Override
	public List<CreateTeamModel> showall(String requiredpos) {
		// TODO Auto-generated method stub
		
		String insertquery = "select * from create_team_details where required_position=?";
		
		
		
		ArrayList<CreateTeamModel> rsl = jdbc.query(insertquery,new Object[] {requiredpos} ,new ResultSetExtractor<ArrayList<CreateTeamModel>>() {
			//
						@Override
						public ArrayList<CreateTeamModel> extractData(ResultSet rs) throws SQLException, DataAccessException {
							// TODO Auto-generated method stub
							ArrayList<CreateTeamModel> list = new ArrayList<>();
							while(rs.next())
							{
								CreateTeamModel ctm = new CreateTeamModel();
								ctm.setProject_manager_fname(rs.getString(1));
								ctm.setProject_manager_lname(rs.getString(2));
								ctm.setProject_team_name(rs.getString(3));
								ctm.setRequired_position(rs.getString(4));
								
								list.add(ctm);
							}
							return list;
						}});
					return rsl;
	}
	
	@Override
	public UserModel GetUserFromEmail(String email) {
		// TODO Auto-generated method stub
		 
		String sql = "select * from user_information where email=?";
		UserModel user = (UserModel) jdbc.queryForObject(sql,new Object[] {email}, new User_Row_Mapper());
	
		return user;
		
	}
	
	public TeamModel GetTeamnameFromEmail(String email)
	{
		String sql = "select * from team where email=?";
		TeamModel tm = (TeamModel) jdbc.queryForObject(sql, new Object[] {email} , new Team_Row_mapper());
		return tm;
		
	}
	@Override
	public void AddinteamCreator(UserModel usermodel, CreateTeamModel createteammodel ) {
		// TODO Auto-generated method stub
		String sql = "insert into team values(?,?,?,?)";
		
		jdbc.update(sql,new Object[] {usermodel.getFname() , createteammodel.getProject_team_name(),usermodel.getEmail(),"Project Manager"});
		
	}
	@Override
	public void AddInTeamApplier(UserModel usermodel, String team_name) {
		// TODO Auto-generated method stub
		String sql = "insert into team values(?,?,?,?)";
		
		jdbc.update(sql,new Object[] {usermodel.getFname() , team_name,usermodel.getEmail(),usermodel.getUser_position()});
		
	}

	@Override
	public CreateTeamModel Vacancy(String position, String teamname) {
		// TODO Auto-generated method stub
		
		String sql = "select * from create_team_details where required_position=? and project_team_name=?";
		CreateTeamModel ctm = (CreateTeamModel) jdbc.queryForObject(sql,new Object[] {position,teamname}, new Create_Team_Row_Mapper());
		return ctm;
		
	}

	@Override
	public List<TeamModel> showteam(String teamname) {
		// TODO Auto-generated method stub
		String sql = "select * from team where team_name=?";
		ArrayList<TeamModel> rsl = jdbc.query(sql,new Object[] {teamname} ,new ResultSetExtractor<ArrayList<TeamModel>>() {
			//
						@Override
						public ArrayList<TeamModel> extractData(ResultSet rs) throws SQLException, DataAccessException {
							// TODO Auto-generated method stub
							ArrayList<TeamModel> list = new ArrayList<>();
							while(rs.next())
							{
								TeamModel ctm = new TeamModel();
								ctm.setTeam_member(rs.getString(1));
								ctm.setTeam_name(rs.getString(2));
								ctm.setEmail(rs.getString(3));
								ctm.setRole(rs.getString(4));
								
								list.add(ctm);
							}
							return list;
						}});
					return rsl;
		
	}

	@Override
	public void SetPreference(String njp, UserModel um) {
		// TODO Auto-generated method stub
		String sql = "Update user_information set user_position=? where email=?";
		jdbc.update(sql,new Object[] {njp , um.getEmail()});
	}
	

	
}
class Create_Team_Row_Mapper implements RowMapper<CreateTeamModel>{

	@Override
	public CreateTeamModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		CreateTeamModel ctm = new CreateTeamModel();
		ctm.setProject_manager_fname(rs.getString(1));
		ctm.setProject_manager_lname(rs.getString(2));
		ctm.setProject_team_name(rs.getString(3));
		ctm.setRequired_position(rs.getString(4));
		ctm.setNumber(rs.getInt(5));
		
		return ctm;
	}
}

	class User_Row_Mapper implements RowMapper<UserModel>{

		@Override
		public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			// TODO Auto-generated method stub
			UserModel um = new UserModel();
			um.setFname(rs.getString(1));
			um.setLname(rs.getString(2));
			um.setAge(rs.getString(3));
			um.setEmail(rs.getString(4));
			um.setPassword(rs.getString(5));
			um.setUser_position(rs.getString(6));
			
			return um;
		}
	
}
class Team_Row_mapper implements RowMapper<TeamModel>{

	@Override
	public TeamModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		TeamModel tm = new TeamModel();
		tm.setTeam_member(rs.getString(1));
		tm.setTeam_name(rs.getString(2));
		tm.setEmail(rs.getString(3));
		tm.setRole(rs.getString(4));
		
		return tm;
	}
	}

	

	
