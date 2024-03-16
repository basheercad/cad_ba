using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using mvc1.Models;
using Microsoft.Data.SqlClient;
namespace mvc1.Controllers;

public class HomeController : Controller
{
    SqlConnection con=new SqlConnection();
     SqlCommand com=new SqlCommand();

     SqlDataReader? dr;
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }
    
    [HttpGet]
  public IActionResult Login()
    {
        return View();
    }

    void ConnectionString(){

      con.ConnectionString="data source=192.168.1.240\\SQLEXPRESS; database=cad_musify ;user ID=CADBATCH01;  password:CAD@123pass; TrustServerCertificate=True;";  
    }

    [HttpPost]
    public IActionResult VerifyLogin(LoginModel lmodel){
        ConnectionString();
        con.Open();
        com.Connection=con;
        com.CommandText="SELECT * FROM dbo.login where username='"+lmodel.username+"'and password='"+lmodel.password+"'";
        dr=com.ExecuteReader();

        if (dr.Read()){
            con.Close();
            return View("Create");
        }
        else{
              con.Close();
             return View("Error");
        }
    }
    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
