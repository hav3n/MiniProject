using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiniProject.Models
{
    public class User
    {
        int UserID { get; set; }
        string Email { get; set; }
        string Password { get; set; }
        DateTime RegDate { get; set; }
    }
}