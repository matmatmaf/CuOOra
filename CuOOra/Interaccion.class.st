Class {
	#name : #Interaccion,
	#superclass : #Object,
	#instVars : [
		'creacion',
		'usuario'
	],
	#category : #CuOOra
}

{ #category : #creation }
Interaccion class >> usuario: unUsuario [
	^ Usuario new usuario: unUsuario yourself
]

{ #category : #initialize }
Interaccion >> initialize [ 
	creacion := DateAndTime now.
]

{ #category : #private }
Interaccion >> usuario: unUsuario [
	usuario := unUsuario 
]
