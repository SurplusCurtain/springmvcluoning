package cap.utils;

import cap.entity.User;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.sql.DataSource;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.*;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;

/**
 * Created by Administrator on 15-8-19.
 */
public class MyDButils {
    public static Connection conn = null;
    private static  String URL="jdbc:mysql://localhost:3306/jfinal_demo?useUnicode=true&characterEncoding=utf-8";
    private static  String USERNAME="root";
    private static  String PASSWORD="root";
    static {
        //加载资源文件
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        if (conn != null) {
            return conn;
        }
        try {
            conn = DriverManager.getConnection(URL, USERNAME,
                    PASSWORD);//获取Connection,不使用数据源
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(Object obj) {
        if (obj instanceof ResultSet) {
            try {
                ((ResultSet) obj).close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (obj instanceof Connection) {
            try {
                ((Connection) obj).close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (obj instanceof PreparedStatement) {
            try {
                ((PreparedStatement) obj).close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (obj instanceof Statement) {
            try {
                ((Statement) obj).close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

//    public static void main(String[] args) {
//        QueryRunner qr = new QueryRunner();
//        String sql = "SELECT * FROM user";
//        try {
//            List<User> query = qr.query(getConnection(), sql, new BeanListHandler<User>(User.class));
//            for (User u : query) {
//                System.out.println(u);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
}
