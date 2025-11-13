from django.shortcuts import render
from .models import OracaoPrincipal, OracaoSubordinada

def index(request):
    oracoes = OracaoPrincipal.objects.all()
    subordinadas = OracaoSubordinada.objects.select_related('fk_funcao_sintatica', 'fk_oracao_principal')
    return render(request, 'index.html', {'oracoes': oracoes, 'subordinadas': subordinadas})
