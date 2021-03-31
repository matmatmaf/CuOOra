Class {
	#name : #Pregunta,
	#superclass : #Object,
	#instVars : [
		'titulo',
		'descripcion',
		'creacion',
		'topicos',
		'respuestas',
		'likes',
		'dislikes'
	],
	#category : #CuOOra
}

{ #category : #initialize }
Pregunta class >> crear: unTitulo descripcion: unaDescripcion topicos: unaListaDeTopicos [
	^ self new
		titulo: unTitulo
		descripcion: unaDescripcion
		topicos: unaListaDeTopicos 
		yourself
]

{ #category : #accessors }
Pregunta >> agregarRespuesta: unaRespuesta [
	respuestas add: unaRespuesta
]

{ #category : #accessors }
Pregunta >> eliminar [
	topicos do: [ :t | t quitarPregunta: self ]
]

{ #category : #private }
Pregunta >> getCantDislikes [
	^ dislikes size
]

{ #category : #private }
Pregunta >> getCantLikes [
	^ likes size
]

{ #category : #accessors }
Pregunta >> getPuntaje [
	^  (self getCantLikes - self getCantDislikes)
]

{ #category : #initialize }
Pregunta >> initialize [
	respuestas := Set new.
	topicos := Set new.
	creacion := DateAndTime now.
]

{ #category : #accessors }
Pregunta >> quitarRespuestas [
	respuestas := Set new.
]

{ #category : #private }
Pregunta >> titulo: unTitulo descripcion: unaDescripcion topicos: unaListaDeTopicos [
	titulo := unTitulo.
	descripcion := unaDescripcion.
	topicos := unaListaDeTopicos.
]
