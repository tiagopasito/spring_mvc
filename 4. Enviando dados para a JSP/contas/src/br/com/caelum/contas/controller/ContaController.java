package br.com.caelum.contas.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

import br.com.caelum.contas.dao.ContaDAO;
import br.com.caelum.contas.modelo.Conta;

@Controller
public class ContaController {
	
	@RequestMapping("/form")
	public String formulario(){

		return "conta/formulario";
	}
	
	@RequestMapping("/adicionaConta")
	public String adiciona(Conta conta){
		
		System.out.println("A Conta adicionada é: " + conta.getDescricao());
		ContaDAO dao = new ContaDAO(); 
		dao.adiciona(conta);
		
		return "conta/conta-adicionada";	
	}
	
	@RequestMapping("listaContas")
	public ModelAndView lista(){
		
		ContaDAO dao = new ContaDAO(); 
		List<Conta> contas = dao.lista();
		
		ModelAndView mv = new ModelAndView("conta/lista");
		mv.addObject("todasContas", contas);		
		
		return mv;
	}		

		


}	
