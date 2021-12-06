import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads{

    private Connection connection;
    private Config config = new Config();

    public MySQLAdsDao() throws SQLException {new Driver();
        this.connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
    }

    @Override
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        String query = "SELECT * FROM ads";
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while(rs.next()) {
                Ad ad = new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                );
                ads.add(ad);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}
