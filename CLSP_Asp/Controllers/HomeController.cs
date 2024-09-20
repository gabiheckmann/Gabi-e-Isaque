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
            new Cidade { Name = "S�o Sebasti�o", ImagePath = "/images/sao-sebastiao.jpg", NivelDeRisco = "Alto" },
            new Cidade { Name = "Ilha Comprida", ImagePath = "/images/ilha-comprida.jpg", NivelDeRisco = "Alto" }
            };
            Informacao informacao = new Informacao();
            ViewBag.EROSAO = informacao.Texto = "A eros�o costeira � um processo natural que ocorre nas �reas costeiras devido � a��o das ondas, correntes e ventos. � um fen�meno que resulta na perda gradual de terra e sedimentos das praias, fal�sias e dunas, levando � diminui��o do tamanho das praias e � destrui��o de estruturas na costa, incluindo casas, estradas, com�rcios, hot�is etc.";


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
            ViewBag.INF1 = informacao.Texto = "A faixa de areia da praiafica cada vez mais estreita, com o mar avan�ando em dire��o � terra firme.";
            ViewBag.INF2 = informacao.Texto = "A eros�o pode tornar �reas pr�ximas � costa inst�veis e inseguras para constru��o.";
            ViewBag.INF3 = informacao.Texto = "Existem diversas inicithan the size ativas de prote��o da costa que voc� pode participar, como o plantio de �rvores, a limpeza de praias e a participa��o em campanhas de conscientiza��o.";
            ViewBag.INF4 = informacao.Texto = "Sempre se atentar e observar os sinais que a natureza pode dar, principalmente uma alta intensidade em um curto per�odo.";
            ViewBag.INF5 = informacao.Texto = "Se os sinais forem observados, deixar o local o mais r�pido. Manter dist�ncia de no m�nimo 350 metros da costa.";
            ViewBag.INF6 = informacao.Texto = " Se segure em um objeto firme no ch�o e evite locais arriscados ou ficar abaixo de estruturas perigosas com risco de desabamento.";
            ViewBag.INF7 = informacao.Texto = "Informe a prefeitura, o estado ou o orgao ambiental responsavel pela gest�o da orla maritima sobre os sinais de eros�o que voc� observou.";
            ViewBag.INF8 = informacao.Texto = "A eros�o pode tornar �reas pr�ximas � costa inst�veis e inseguras para constru��o.";
            ViewBag.INF9 = informacao.Texto = "Existem diversas iniciativas de prote��o da costa que voc� pode participar, como o plantio de �rvores, a limpeza de praias e a participa��o em campanhas de conscientiza��o.";
            ViewBag.INF10 = informacao.Texto = "Economizar energia el�trica em casa, evitar consumo de produtos industrializados, reciclar, evitar desperd�cio e usar energia limpa.";
            ViewBag.INF11 = informacao.Texto = "Evitar destrui��o de dunas, ocupa��o da p�s-praia,  subsid�ncia do solo, diminui��o da largura da praia e constru��es na costas.";
            ViewBag.INF12 = informacao.Texto = "N�o retirar a areia para atividades antr�picas, seja para minera��o, limpeza p�blica etc.";
            return View();
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }



    }
}
