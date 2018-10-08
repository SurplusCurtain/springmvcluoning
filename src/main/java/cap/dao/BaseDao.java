package cap.dao;

import java.util.List;
import java.util.Map;


public abstract class BaseDao<T>{

    //新增一个对象
    public void insert(T t){};
    //新增一批对象
    public void insert(List<T> list){};

    //查询
    public List<T> find(Map<String,Object> param){
        return null;
    };
    //查询第一条
    public T findFirst(Map<String,Object> param){
        return null;
    };

    //删除一条记录
    public void delete(T t){};
    //删除一批记录
    public void delete(List<T> list){};

    //更新一条数据
    public void update(T t){};
    //更新一批数据
    public void update(List<T> list){};
}
