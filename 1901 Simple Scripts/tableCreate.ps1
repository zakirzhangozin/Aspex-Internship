$ConnectionString = "Data Source=de-team.database.windows.net;Initial Catalog=DE-Team-ZakirZhangozin;user=de-team-admin;password=DEpassword0"
$SqlConnection = new-object system.data.SqlClient.SQLConnection($ConnectionString)
$query = "DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Staff;
CREATE TABLE Customers
(
    CustomerID BIGINT IDENTITY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100)
)
CREATE TABLE Staff
(
    StaffID BIGINT IDENTITY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100)
)"

             
$Sqlcommand = new-object system.data.sqlclient.sqlcommand($query,$SqlConnection)
$SqlConnection.Open()
$Sqlcommand.ExecuteNonQuery()
