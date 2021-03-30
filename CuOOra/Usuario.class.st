Class {
	#name : #Usuario,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'contrasenia',
		'fechaCreacion',
		'respuestas',
		'interacciones',
		'topicosDeInteres',
		'preguntas',
		'usuariosSeguidos'
	],
	#category : #CuOOra
}

{ #category : #initialize }
Usuario class >> usuario: unNombre contrasenia: unaContrasenia [
	^ self new
		usuario: unNombre
		contrasenia: unaContrasenia
		yourself
]
