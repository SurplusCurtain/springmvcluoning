package cap.dao;

import cap.entity.Blogs;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import cap.utils.MyDButils;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class BlogsDao extends BaseDao<Blogs> {
    @Override
    public List<Blogs> find(Map<String, Object> param) {
        if (param == null) {
            return null;
        }
        Set<String> keys = param.keySet();
        String sql = "SELECT * FROM " + Blogs.class.getName().substring(Blogs.class.getName().indexOf(".")+1).toLowerCase();
        String where = " where 1=1 and ";
        for (String key : keys) {
            where += key + "=\"" + param.get(key) + "\" and ";
        }
        sql += where + "1=1";
//        System.out.println(sql);
        QueryRunner qr = new QueryRunner();
        try {
            List<Blogs> query = qr.query(MyDButils.getConnection(), sql, new BeanListHandler<Blogs>(Blogs.class));
            return query;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


}
