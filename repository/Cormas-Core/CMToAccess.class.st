Class {
	#name : #CMToAccess,
	#superclass : #UIApplicationModel,
	#instVars : [
		'cormasModel',
		'connection',
		'dataBase',
		'username',
		'pwd',
		'accept'
	],
	#category : 'Cormas-Core-Connect'
}

{ #category : #new }
CMToAccess class >> createODBCConnection: username password: password base: aDataBase [
	
	| db |
	db := self new.
	db username: username.
	db pwd: password.
	db dataBase: aDataBase.
	^db createODBCConnection
]

{ #category : #'interface specs' }
CMToAccess class >> loginSpec [
	"UIPainter new openOnClass: self andSelector: #loginSpec"
	
	<resource: #canvas>
	^#(FullSpec 
		#window: #(WindowSpec 
			#label: ' ' 
			#min: #(Point 337 153) 
			#max: #(Point 640 153) 
			#bounds: #(Rectangle 512 384 849 537)) 
		#component: #(SpecCollection 
			#collection: #(#(LabelSpec 
				#layout: #(AlignmentOrigin 10 0 66 0 0 1) 
				#label: #(UserMessage 
					#key: #UserName 
					#defaultString: 'User Name:' 
					#catalogID: #lens)) #(LabelSpec 
				#layout: #(AlignmentOrigin 10 0 96 0 0 1) 
				#label: #(UserMessage 
					#key: #Password 
					#defaultString: 'Password:' 
					#catalogID: #lens)) #(LabelSpec 
				#layout: #(Point 10 12) 
				#label: #(UserMessage 
					#key: #LOGINToDatabase 
					#defaultString: 'LOGIN to Database' 
					#catalogID: #lens)) #(ActionButtonSpec 
				#layout: #(LayoutFrame 16 0.5 -35 1 82 0.5 -5 1) 
				#model: #cancel 
				#label: #(UserMessage 
					#key: #Cancel 
					#defaultString: 'Cancel' 
					#catalogID: #lens) 
				#defaultable: true) #(ActionButtonSpec 
				#layout: #(LayoutFrame -82 0.5 -35 1 -16 0.5 -5 1) 
				#model: #accept 
				#label: #(UserMessage 
					#key: #OK 
					#defaultString: 'OK' 
					#catalogID: #lens) 
				#isDefault: true) #(InputFieldSpec 
				#layout: #(LayoutFrame 118 0 10 0 -10 1 35 0) 
				#name: #InputField1 
				#model: #dataBase 
				#tabable: true) #(InputFieldSpec 
				#layout: #(LayoutFrame 118 0 40 0 -10 1 65 0) 
				#name: #InputField2 
				#model: #username) #(InputFieldSpec 
				#layout: #(LayoutFrame 118 0 70 0 -10 1 95 0) 
				#name: #InputField3 
				#model: #pwd))))
]

{ #category : #actions }
CMToAccess >> accept [
	
	accept := true.
	self closeRequest.
	^self
]

{ #category : #accessing }
CMToAccess >> accept: anObject [
	
	accept := anObject
]

{ #category : #actions }
CMToAccess >> cancel [
	
	accept := false.
	self closeRequest.
	^self
]

{ #category : #accessing }
CMToAccess >> connection [
	
	^connection
]

{ #category : #accessing }
CMToAccess >> connection: anObject [
	
	connection := anObject
]

{ #category : #accessing }
CMToAccess >> cormasModel [
	
	^cormasModel
]

{ #category : #accessing }
CMToAccess >> cormasModel: anObject [
	
	cormasModel := anObject
]

{ #category : #ODBC }
CMToAccess >> createODBCConnection [
	"Create an ODBC Connection by asking if necessary for 'username' 'password' and 'aDataBase' "
	
	(self username isNil
		or:
			[self dataBase isNil
				or: [self username isEmpty or: [self dataBase isEmpty]]])
		ifTrue:
			[self openLoginWindow.
			(self accept
				and: [dataBase value isEmpty not and: [username value isEmpty not]])
				ifTrue:
					[dataBase := dataBase value.
					username := username value.
					pwd := pwd value]
				ifFalse: [^nil]].
	^self createODBCConnection: username password: pwd base: dataBase
]

{ #category : #'ODBC-private' }
CMToAccess >> createODBCConnection: anUsername password: aPassword base: aDataBase [
	"Create a ODBC connection on base aDataBase (<String>) with username (<String>) and password (<String>)"
	
	self connection: ODBCConnection new.
	(self connection)
		username: anUsername;
		password: aPassword;
		environment: aDataBase.
	self connection connect.
	^self
]

{ #category : #ODBC }
CMToAccess >> createTableFromSQLcommand: anSQLcommand [
	"Create the table from an SQL command.
Ex:   
self createTableFromSQLcommand:
			'CREATE TABLE GlobalProbes (num COUNTER PRIMARY KEY, simulationName VARCHAR(50), step INTEGER, probeName VARCHAR(50), probeValue Single, CONSTRAINT [FK_2] FOREIGN KEY ([simulationName]) REFERENCES SimName ([simulationName]))'"
	
	| result |
	result := self trySQL_command: anSQLcommand.
	result == false ifTrue: [^false].
	^true
]

{ #category : #aspects }
CMToAccess >> dataBase [
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^dataBase isNil
		ifTrue: [dataBase := String new asValue]
		ifFalse: [dataBase]
]

{ #category : #accessing }
CMToAccess >> dataBase: anObject [
	
	^dataBase := anObject
]

{ #category : #ODBC }
CMToAccess >> disconnectODBCConnection [
	
	self connection disconnect
]

{ #category : #ODBC }
CMToAccess >> openLoginWindow [
	"Open a GUI asking for 'username' 'password' and 'aDataBase' "
	
	self allButOpenInterface: #loginSpec
]

{ #category : #aspects }
CMToAccess >> pwd [
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^pwd isNil
		ifTrue: [pwd := String new asValue]
		ifFalse: [pwd]
]

{ #category : #accessing }
CMToAccess >> pwd: anObject [
	
	^pwd := anObject
]

{ #category : #'ODBC-private' }
CMToAccess >> sql_command: aCommand [
	"aCommand <String> = SQL command  ex: 'select * from toto'   "
	
	| session result ans |
	result := OrderedCollection new.
	self connection isConnected ifFalse: [self createODBCConnection].
	session := self connection getSession.
	session prepare: aCommand.
	session execute.
	ans := session answer.
	(ans == #noMoreAnswers or: [ans == #noAnswerStream])
		ifFalse:
			[[ans atEnd] whileFalse: [result add: ans next].
			ans := session answer].
	^result
]

{ #category : #ODBC }
CMToAccess >> trySQL_command: sqlCommand [
	"sqlCommand <String> 
ex: 'select * from toto'      or							
sqlCommand := 'INSERT INTO LocalProbes (simulationName, step, className, id, probeName, probeValue) VALUES (''' , self currentSimulationName , ''', ' , self currentTime printString , ', ''' , selectedClass name , ''', ' , inst id printString , ', ''' , probeName , ''', ' , aValue printString , ')'.
result := self trySQL_command: sqlCommand   "
	
	^ [ self sql_command: sqlCommand ]
		on: Exception
		do: [ : ex | ex return: false ]

]

{ #category : #aspects }
CMToAccess >> username [
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^username isNil
		ifTrue: [username := String new asValue]
		ifFalse: [username]
]

{ #category : #accessing }
CMToAccess >> username: anObject [
	
	^username := anObject
]
