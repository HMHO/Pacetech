package MissaoS7;

import java.util.Scanner;

public class MissaoS7 {
    
    public static void main(String[] args) {
        
    Empregado objEmpregado1 = new Empregado("nome","sobrenome",0.00f); 
    Empregado objEmpregado2 = new Empregado("nome","sobrenome",0.00f);
    
    Scanner leitor = new Scanner(System.in);
    
    //Leitura e Saida de Dados para o Empregado 1
    
    //Entrada
    System.out.print("Digite o nome do Empregado 1: ");
    objEmpregado1.setNome(leitor.next());
  
    System.out.print("Digite o sobrenome do Empregado 1: ");
    objEmpregado1.setSobrenome(leitor.next());
    
    System.out.print("Digite o salario do Empregado 1: ");
    objEmpregado1.setSalario(leitor.nextFloat());
    System.out.println(" ");
    
    //Saída
    System.out.println("Para: " + objEmpregado1.getNome() + " " +
            objEmpregado1.getSobrenome() );
    System.out.println("Seu Salario Anual e: R$" + objEmpregado1.CalcularSalarioAnual());
    System.out.println("E Seu Salario Anual com aumento de 10% e: R$" + 
            objEmpregado1.CalcularSalarioAumento());

    System.out.println(" ");
    
    //Leitura e Saida de Dados para o Empregado 2
    
    //Entrada
    System.out.print("Digite o nome do Empregado 2: ");
    objEmpregado2.setNome(leitor.next());
   
    System.out.print("Digite o sobrenome do Empregado 2: ");
    objEmpregado2.setSobrenome(leitor.next());
    
    System.out.print("Digite o salario do Empregado 2: ");
    objEmpregado2.setSalario(leitor.nextFloat());
    System.out.println(" ");
    
    //Saída
    System.out.println("Para: " + objEmpregado2.getNome() + " " +
            objEmpregado2.getSobrenome() );
    System.out.println("Seu Salario Anual e: R$" + objEmpregado2.CalcularSalarioAnual());
    System.out.println("E Seu Salario Anual com aumento de 10% e: R$" + 
            objEmpregado2.CalcularSalarioAumento());
    }   
}
