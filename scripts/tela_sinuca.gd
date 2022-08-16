extends Node2D

var pontuacao

# Called when the node enters the scene tree for the first time.
func _ready():
	pontuacao = 0
	
	get_node("bola1").resposta = false
	get_node("bola2").resposta = true
	get_node("bola3").resposta = false
	get_node("bola4").resposta = true
	get_node("bola5").resposta = false
	get_node("bola6").resposta = true
	get_node("bola7").resposta = false
	get_node("bola8").resposta = true
	get_node("bola9").resposta = false
	get_node("bola10").resposta = true
	get_node("bola11").resposta = false
	get_node("bola12").resposta = false
	get_node("bola13").resposta = true
	get_node("bola14").resposta = false
	get_node("bola15").resposta = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# contabiliza a pontuação do jogador de acordo com a bola que cai nos buracos
func contabilizar_pontos(resposta) -> void:
	if (resposta == true):
		pontuacao += 1
		atualizar_label_pontuacao(pontuacao)
	elif (resposta == false):
		if (pontuacao > 0):
			pontuacao -= 1
		else:
			pass
		atualizar_label_pontuacao(pontuacao)


# atualiza o label de pontuacao
func atualizar_label_pontuacao(pontuacao):
	get_node("pontuacao_jogador1").set_text("pontuação: " + str(pontuacao))

# apaga a bola da mesa de sinuca e ofusca a bola do painel de exibição
func apagar_bola(body):
	if (body.name == "bola_branca"):
		var bola = get_node("/root/tela_sinuca/bola_branca")
		bola.sleeping = true;
		bola.position = Vector2(388,342)
		bola.linear_velocity = Vector2(0,0)
		contabilizar_pontos(false)
	elif (body.name == "taco"):
		pass
	else:
		contabilizar_pontos(body.resposta)
		body.queue_free()
		
		var bola_exib = get_node("/root/tela_sinuca/exibicao_bolas/" + str(body.name))
		bola_exib.modulate.a = 0.3


func _on_buraco1_body_entered(body):
	apagar_bola(body)


func _on_buraco2_body_entered(body):
	apagar_bola(body)


func _on_buraco3_body_entered(body):
	apagar_bola(body)


func _on_buraco4_body_entered(body):
	apagar_bola(body)


func _on_buraco5_body_entered(body):
	apagar_bola(body)


func _on_buraco6_body_entered(body):
	apagar_bola(body)
