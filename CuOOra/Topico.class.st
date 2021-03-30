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

{ #category : #accessors }
Topico >> getPreguntas [ 
	^ preguntas
]

{ #category : #private }
Topico >> nombre: unNombre descripcion: unaDescripcion [
	nombre := unNombre.
	descripcion := unaDescripcion .
]
