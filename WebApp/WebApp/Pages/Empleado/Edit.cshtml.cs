using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Entity;
using WBL;

namespace WebApp.Pages.Empleado
{
    public class EditModel : PageModel
    {
        private readonly IEmpleadoService empleadoService;

        public EditModel(IEmpleadoService empleadoService)
        {
            this.empleadoService = empleadoService;
        }

        [BindProperty]

        public EmpleadoEntity Entity { get; set; } = new EmpleadoEntity();


        [BindProperty (SupportsGet = true)]

        public int? id { get; set; }

        public async Task<IActionResult> OnGet()
        { 
            try
            {
                if (id.HasValue)
                {
                    Entity = await empleadoService.GetById(entity: new() { IdEmpleado = id });

                }

                return Page();
            }
              catch (Exception ex)
                 {
                return Content(content: ex.Message);


                 }
            }


    }

    }
           

            

            

      