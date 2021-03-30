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

{ #category : #accessing }
Usuario >> agregarPregunta: unaPregunta [
	preguntas add: unaPregunta
]

{ #category : #accessing }
Usuario >> agregarRespuesta: unaRespuesta [
	respuestas add: unaRespuesta 
]

{ #category : #accessing }
Usuario >> agregarUnTopico: unTopico [
	topicosDeInteres add: unTopico 
]

{ #category : #private }
Usuario >> contrasenia: unaContrasenia [
	contrasenia := unaContrasenia
]

{ #category : #accessing }
Usuario >> dejarDeSeguirA: unUsuario [
	usuariosSeguidos remove: unUsuario
]

{ #category : #protected }
Usuario >> getCantPreguntas [
	^ preguntas size
]

{ #category : #accessing }
Usuario >> getPreguntas [
	^ preguntas 
]

{ #category : #accessing }
Usuario >> getPreguntasDeQuienSigo [
	|preguntasRelevantes|
	
	preguntasRelevantes := Set new.
	usuariosSeguidos do: [ :each | preguntasRelevantes := preguntasRelevantes union: each getPreguntas ].
	^ preguntasRelevantes.
]

{ #category : #accessing }
Usuario >> getRespuestas [
	^ respuestas
]

{ #category : #initialize }
Usuario >> initialize [
	fechaCreacion := DateAndTime now.
	preguntas := Set new.
	respuestas := Set new.
	topicosDeInteres := Set new.
	interacciones := Set new.
	usuariosSeguidos := Set new.
	
]

{ #category : #accessing }
Usuario >> quitarPregunta: unaPregunta [
	preguntas remove: unaPregunta
]

{ #category : #accessing }
Usuario >> quitarUnTopico: unTopico [
	topicosDeInteres remove: unTopico
]

{ #category : #accessing }
Usuario >> seguirA: unUsuario [
	usuariosSeguidos add: unUsuario.
]

{ #category : #private }
Usuario >> usuario: unNombre [
	nombre := unNombre
]
