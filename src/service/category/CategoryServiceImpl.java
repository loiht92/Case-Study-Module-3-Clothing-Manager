package service.category;

import model.Category;
import service.DatabaseInit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryServiceImpl extends DatabaseInit implements ICategoryService {


    @Override
    public List<Category> findAll() {
        List<Category> categories = new ArrayList<>();
        String selectAllCategory = "SELECT * FROM clothing_manager.category ";

        try (
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(selectAllCategory)
        ) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("category_id");
                String name = resultSet.getString("category_name");
                String status = resultSet.getString("status");

                categories.add(new Category(id, name, status));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }

    @Override
    public void insert(Category category) throws SQLException {
        String insertCategory= "insert into clothing_manager.category (category_name, status) value (?,?)";

        try(
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(insertCategory)
        ) {
            statement.setString(1, category.getName());
            statement.setString(2, category.getStatus());
            System.out.println(statement);
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public boolean update(Category category) throws SQLException {
        boolean rowUpdated;
        String updateCategory = "update clothing_manager.category set category_name = ?, status = ? where category_id = ?";

        try(
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(updateCategory)
        ) {
            statement.setString(1, category.getName());
            statement.setString(2,category.getStatus());
            statement.setInt(3,category.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public boolean remove(int id) throws SQLException {
        boolean rowDeleted;
        String deleteCategory = "delete from clothing_manager.category where category_id = ?";

        try(
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(deleteCategory)
        ) {
            statement.setInt(1,id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public List<Category> findByStatus(String status) throws SQLException {
        List<Category> categories = new ArrayList<>();
        String query = "select * from category where status like ?";
        try(Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, "%" +status +"%");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String category_name = resultSet.getString(2);
                Category category = new Category(id, category_name, status);
                categories.add(category);
            }
        }
        return categories;
    }
}
