$ConnectionString = "Data Source=de-team.database.windows.net;Initial Catalog=DE-Team-ZakirZhangozin;user=de-team-admin;password=DEpassword0"
$SqlConnection = new-object system.data.SqlClient.SQLConnection($ConnectionString)
$query = "INSERT INTO Customers VALUES('Ben','Doever');
INSERT INTO Staff VALUES('Joe','Muhmuh');" 

             
$Sqlcommand = new-object system.data.sqlclient.sqlcommand($query,$SqlConnection)
$SqlConnection.Open()
$Sqlcommand.ExecuteNonQuery()
