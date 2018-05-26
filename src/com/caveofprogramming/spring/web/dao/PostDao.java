package com.caveofprogramming.spring.web.dao;

import java.util.List;

import javax.sql.DataSource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;




import com.caveofprogramming.spring.web.models.Message;
import com.caveofprogramming.spring.web.models.Offer;
import com.caveofprogramming.spring.web.models.Post;


@Repository
@Transactional
@Component("postsDao")
public class PostDao {
	
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	
	@Autowired
	private SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	
	public void saveOrUpdate(Post post) {
		session().saveOrUpdate(post);
	}
	
	public Post getOnePost(int post_id) {
		Criteria crit = session().createCriteria(Post.class);
		crit.add(Restrictions.idEq(post_id));
		return (Post)crit.uniqueResult();
	}

	

	@SuppressWarnings("unchecked")
	public List<Post> getPosts(String username) {
		
		/*Criteria crit = session().createCriteria(Post.class);
		crit.add(Restrictions.eq("username", username));
		return crit.list();
		*/
		
		System.out.println(username);
		
		Criteria crit = session().createCriteria(Post.class);

		crit.createAlias("username", "u");
		
		crit.add(Restrictions.eq("u.username", username));

		return crit.list();
		
		/*Criteria criteria = session().createCriteria(Post.class);
		criteria.createAlias("username", "u");
		Criterion user = Restrictions.eq("u.username",username);
		Criterion architecture = Restrictions.eq("architecture",username);
		Criterion carpenter = Restrictions.eq("carpenter",username);
		Criterion contractor = Restrictions.eq("contractor",username);
		Criterion engineer = Restrictions.eq("engineer",username);
		Criterion Interior_designer = Restrictions.eq("Interior_designer",username);
		Criterion quantity_surveyor = Restrictions.eq("quantity_surveyor",username);
		LogicalExpression expression = Restrictions.or(user, architecture,architecture);
		criteria.add(expression);
		List list = criteria.list();*/
		
		
		/*return jdbc
				.query("select * from post, users where post.username=:username",
						new MapSqlParameterSource("username", username), new List<Post>);*/
		/*MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("username",username);
		return jdbc.query("select * from post where post.username=:username OR engineer=:username OR architecture=:username OR carpenter=:username OR quantity_surveyor=:username OR contractor=:username OR Interior_designer=:username ", BeanPropertyRowMapper.newInstance(Post.class));*/
	}


	@SuppressWarnings("unchecked")
	public List<Post> getAllPosts() {
		
		Criteria crit = session().createCriteria(Post.class);
		return crit.list();
		
	}
	
}
