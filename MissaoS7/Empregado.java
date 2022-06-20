package MissaoS7;

public class Empregado {

    private String nome, sobrenome;
    private float salario;
    public float salarioAnual;

    // Método Construtor com variáveis iniciadas
    public Empregado(String nome, String sobrenome, float salario) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.salario = salario;
    }

    public float CalcularSalarioAnual() {
        salarioAnual = salario * 12;
        return salarioAnual;
    }

    public float CalcularSalarioAumento() {

        float salarioAumento = (float) (salarioAnual + salarioAnual * 0.10);
        return salarioAumento;

    }

    // Métodos Acessores
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public float getSalario() {
        return salario;
    }

    public void setSalario(float salario) {

        if (salario <= 0) {
            this.salario = 0.0f;
        } else {
            this.salario = salario;
        }
    }
}
