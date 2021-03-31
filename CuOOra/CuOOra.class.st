Class {
	#name : #CuOOra,
	#superclass : #Object,
	#instVars : [
		'usuarios',
		'topicos'
	],
	#category : #CuOOra
}

{ #category : #'as yet unclassified' }
CuOOra >> agregarTopico: unNombre descripcion: unaDescripcion [
	topicos add: (Topico crear: unNombre descripcion: unaDescripcion) .
]

{ #category : #'as yet unclassified' }
CuOOra >> agregarUsuario: unNombre contrasenia: unaContrasenia [ 
	usuarios add: (Usuario usuario: unNombre contrasenia: unaContrasenia )
]
