from django.db import models

class FuncaoSintatica(models.Model):
    nome = models.CharField(max_length=80)
    descricao = models.CharField(max_length=200)

    def __str__(self):
        return self.nome

class OracaoPrincipal(models.Model):
    oracao = models.TextField()

    def __str__(self):
        return self.oracao[:50]

class OracaoSubordinada(models.Model):
    nome_tipo = models.CharField(max_length=80)
    oracao = models.TextField()
    fk_funcao_sintatica = models.ForeignKey(FuncaoSintatica, on_delete=models.CASCADE)
    fk_oracao_principal = models.ForeignKey(OracaoPrincipal, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.nome_tipo} → {self.oracao[:50]}"
