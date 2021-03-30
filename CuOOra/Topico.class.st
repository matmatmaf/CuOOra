Class {
	#name : #Topico,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'descripcion',
		'preguntas'
	],
	#category : #CuOOra
}

{ #category : #initialize }
Topico class >> crear: unNombre descripcion: unaDescripcion [
	^ self new nombre: unNombre descripcion: unaDescripcion yourself
]

{ #category : #accessors }
Topico >> getPreguntas [ 
	^ preguntas
]

{ #category : #private }
Topico >> nombre: unNombre descripcion: unaDescripcion [
	nombre := unNombre.
	descripcion := unaDescripcion .
]
