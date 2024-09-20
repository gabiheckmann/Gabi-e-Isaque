using CLSP_Asp.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace CLSP_Asp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {

            var cidades = new List<Cidade>
            {
            new Cidade { Name = "Ubatuba", ImagePath = "/images/ubatuba.jpg", NivelDeRisco = "Alto" },
            new Cidade { Name = "São Sebastião", ImagePath = "/images/sao-sebastiao.jpg", NivelDeRisco = "Alto" },
            new Cidade { Name = "Ilha Comprida", ImagePath = "/images/ilha-comprida.jpg", NivelDeRisco = "Alto" }
            };
            Informacao informacao = new Informacao();
            ViewBag.EROSAO = informacao.Texto = "A erosão costeira é um processo natural que ocorre nas áreas costeiras devido à ação das ondas, correntes e ventos. É um fenômeno que resulta na perda gradual de terra e sedimentos das praias, falésias e dunas, levando à diminuição do tamanho das praias e à destruição de estruturas na costa, incluindo casas, estradas, comércios, hotéis etc.";


            return View(cidades);
        }

        public IActionResult Erosion()
        {
            var contato = new List<Contato>
            {
              new Contato {
                  telefone = "(11) 5898-5600",
                  email = "cpambp5@policiamilitar.sp.gov.br"
              },

            };
            ViewBag.telefone = contato[0].telefone;
            ViewBag.email = contato[0].email;

            Informacao informacao = new Informacao();
            ViewBag.INF1 = informacao.Texto = "A faixa de areia da praiafica cada vez mais estreita, com o mar avançando em direção à terra firme.";
            ViewBag.INF2 = informacao.Texto = "A erosão pode tornar áreas próximas à costa instáveis e inseguras para construção.";
            ViewBag.INF3 = informacao.Texto = "Existem diversas inicithan the size ativas de proteção da costa que você pode participar, como o plantio de árvores, a limpeza de praias e a participação em campanhas de conscientização.";
            ViewBag.INF4 = informacao.Texto = "Sempre se atentar e observar os sinais que a natureza pode dar, principalmente uma alta intensidade em um curto período.";
            ViewBag.INF5 = informacao.Texto = "Se os sinais forem observados, deixar o local o mais rápido. Manter distância de no mínimo 350 metros da costa.";
            ViewBag.INF6 = informacao.Texto = " Se segure em um objeto firme no chão e evite locais arriscados ou ficar abaixo de estruturas perigosas com risco de desabamento.";
            ViewBag.INF7 = informacao.Texto = "Informe a prefeitura, o estado ou o orgao ambiental responsavel pela gestão da orla maritima sobre os sinais de erosão que você observou.";
            ViewBag.INF8 = informacao.Texto = "A erosão pode tornar áreas próximas à costa instáveis e inseguras para construção.";
            ViewBag.INF9 = informacao.Texto = "Existem diversas iniciativas de proteção da costa que você pode participar, como o plantio de árvores, a limpeza de praias e a participação em campanhas de conscientização.";
            ViewBag.INF10 = informacao.Texto = "Economizar energia elétrica em casa, evitar consumo de produtos industrializados, reciclar, evitar desperdício e usar energia limpa.";
            ViewBag.INF11 = informacao.Texto = "Evitar destruição de dunas, ocupação da pós-praia,  subsidência do solo, diminuição da largura da praia e construções na costas.";
            ViewBag.INF12 = informacao.Texto = "Não retirar a areia para atividades antrópicas, seja para mineração, limpeza pública etc.";
            return View();
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }



    }
}
