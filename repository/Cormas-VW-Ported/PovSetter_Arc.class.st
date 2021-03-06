Class {
	#name : #'PovSetter_Arc',
	#superclass : #PovSetter,
	#instVars : [
		'startAnnotation',
		'widthChoices',
		'stopAnnotation',
		'lineWidth',
		'stopPosition',
		'startPosition'
	],
	#category : 'Cormas-VW-Ported'
}

{ #category : #'interface specs' }
PovSetter_Arc class >> windowSpec [
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"
	
	<resource: #canvas>
	^#(FullSpec 
		#window: #(WindowSpec 
			#label: #(UserMessage 
				#key: #observationOfEntity 
				#defaultString: 'Observation of ArcEntity') 
			#min: #(Point 672 423) 
			#max: #(Point 414 423) 
			#bounds: #(Rectangle 720 450 1357 856) 
			#colors: #(LookPreferences 
				#setBackgroundColor: #(ColorValue 8191 5119 2048)) 
			#isEventDriven: true) 
		#component: #(SpecCollection 
			#collection: #(#(RegionSpec 
				#layout: #(Rectangle 375 285 458 368) 
				#name: #Region1 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #white) 
					#setBackgroundColor: #(ColorValue #white)) 
				#lineWidth: 1) #(ArbitraryComponentSpec 
				#layout: #(LayoutSizedOrigin 373 0 283 0 87 87) 
				#name: #imageOS 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #white) 
					#setBackgroundColor: #(ColorValue #white)) 
				#component: #imageOS) #(RegionSpec 
				#layout: #(Rectangle 5 175 274 370) 
				#name: #Region3 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #white) 
					#setBackgroundColor: #(ColorValue #white)) 
				#lineWidth: 1) #(RegionSpec 
				#layout: #(Rectangle 7 176 275 371) 
				#name: #Region4 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #white) 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#lineWidth: 1) #(RegionSpec 
				#layout: #(Rectangle 424 11 631 161) 
				#name: #Region6 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #white) 
					#setBackgroundColor: #(ColorValue 7700 7700 7700)) 
				#lineWidth: 1) #(RegionSpec 
				#layout: #(Rectangle 7 12 383 161) 
				#name: #Region2 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 7700 7700 7700)) 
				#lineWidth: 1) #(GroupBoxSpec 
				#layout: #(Rectangle 5 3 385 163) 
				#name: #GroupBox3 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue 7700 7700 7700) 
					#setBackgroundColor: #(ColorValue 6054 3027 0)) 
				#label: #(UserMessage 
					#key: #povDefinition 
					#defaultString: ' PoV definition ')) #(LabelSpec 
				#layout: #(Point 247 17) 
				#label: #(UserMessage 
					#key: #associatedSymbols 
					#defaultString: 'Associated Symbols') 
				#style: #pixelDefault) #(SequenceViewSpec 
				#layout: #(Rectangle 221 36 378 155) 
				#name: #pov 
				#model: #listSymbols 
				#menu: #menuSymbolePDV 
				#multipleSelections: false) #(ActionButtonSpec 
				#layout: #(Rectangle 117 376 222 403) 
				#name: #boutonAppliquer 
				#flags: 40 
				#model: #validate 
				#label: #(UserMessage 
					#key: #apply 
					#defaultString: 'Apply') 
				#isDefault: false 
				#defaultable: true) #(SequenceViewSpec 
				#layout: #(Rectangle 10 36 205 154) 
				#name: #listMethods 
				#model: #listMethods 
				#callbacksSpec: #(UIEventCallbackSubSpec 
					#doubleClickSelector: #modifyPov) 
				#menu: #menuPDV 
				#multipleSelections: false) #(LabelSpec 
				#layout: #(Point 11 17) 
				#label: #(UserMessage 
					#key: #methodesreturningPoV 
					#defaultString: 'Methodes returning a Color or a Symbol') 
				#style: #pixelDefault) #(SequenceViewSpec 
				#layout: #(Rectangle 431 36 625 152) 
				#name: #List1 
				#model: #listInfo 
				#callbacksSpec: #(UIEventCallbackSubSpec 
					#doubleClickSelector: #modifyInfo) 
				#menu: #menuInfo 
				#useModifierKeys: true 
				#selectionType: #highlight) #(GroupBoxSpec 
				#layout: #(Rectangle 423 3 633 162) 
				#name: #GroupBox2 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #white) 
					#setBackgroundColor: #(ColorValue 6054 3027 0)) 
				#label: #(UserMessage 
					#key: #informationToBeDisplay 
					#defaultString: ' Information to be displayed ')) #(LabelSpec 
				#layout: #(Point 449 17) 
				#name: #Label1 
				#label: #(UserMessage 
					#key: #methodesreturningString 
					#defaultString: 'Methodes returning a String') 
				#style: #pixelDefault) #(CheckBoxSpec 
				#layout: #(Point 488 324) 
				#name: #startAnnotation 
				#model: #startAnnotation 
				#label: 'start annotation') #(CheckBoxSpec 
				#layout: #(Point 488 349) 
				#name: #stopAnnotation 
				#model: #stopAnnotation 
				#label: 'stop annotation') #(LabelSpec 
				#layout: #(Point 488 291) 
				#name: #Label2 
				#label: 'Line width:') #(ComboBoxSpec 
				#layout: #(Rectangle 552 291 595 312) 
				#name: #ComboBox1 
				#model: #lineWidth 
				#type: #number 
				#formatString: '0' 
				#comboList: #widthChoices) #(LabelSpec 
				#layout: #(Point 601 291) 
				#name: #Label3 
				#label: 'pixels') #(LabelSpec 
				#layout: #(Point 13 255) 
				#name: #Label4 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #red) 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#label: #(UserMessage 
					#key: #red 
					#defaultString: 'Red')) #(LabelSpec 
				#layout: #(Point 13 282) 
				#name: #Label5 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#label: #(UserMessage 
					#key: #green 
					#defaultString: 'Green')) #(LabelSpec 
				#layout: #(Point 13 308) 
				#name: #Label6 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#label: #(UserMessage 
					#key: #blue 
					#defaultString: 'Blue')) #(GroupBoxSpec 
				#layout: #(Rectangle 6 167 277 373) 
				#name: #GroupBox1 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #white) 
					#setBackgroundColor: #(ColorValue 6054 3027 0)) 
				#label: #(UserMessage 
					#key: #color 
					#defaultString: ' Set the Color ')) #(SubCanvasSpec 
				#layout: #(Rectangle 9 188 272 238) 
				#name: #Subcanvas1 
				#flags: 0 
				#majorKey: PovSetter 
				#minorKey: #palette) #(InputFieldSpec 
				#layout: #(Rectangle 179 254 219 273) 
				#name: #InputField1 
				#flags: 0 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#model: #redSlider 
				#tabable: true 
				#style: #pixelDefault 
				#type: #number 
				#formatString: '0.00') #(InputFieldSpec 
				#layout: #(Rectangle 179.0 281 217.0 301) 
				#name: #InputField2 
				#flags: 0 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#model: #greenSlider 
				#style: #pixelDefault 
				#type: #number 
				#formatString: '0.00') #(InputFieldSpec 
				#layout: #(Rectangle 179 307 215 329) 
				#name: #InputField3 
				#flags: 0 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#model: #blueSlider 
				#style: #pixelDefault 
				#type: #number 
				#formatString: '0.00') #(InputFieldSpec 
				#layout: #(Rectangle 179 339 214 360) 
				#name: #InputField4 
				#flags: 0 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#model: #brightnessSlider 
				#style: #pixelDefault 
				#type: #number 
				#formatString: '0.00') #(LabelSpec 
				#layout: #(Point 13 340) 
				#name: #Label7 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#label: #(UserMessage 
					#key: #brightness 
					#defaultString: 'Brightness')) #(SliderSpec 
				#layout: #(Rectangle 77 342 177 358) 
				#name: #Slider4 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#model: #brightnessSlider 
				#orientation: #horizontal 
				#start: 0 
				#stop: 1 
				#step: 0.01) #(SliderSpec 
				#layout: #(Rectangle 77 310 177 328) 
				#name: #Slider3 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#model: #blueSlider 
				#orientation: #horizontal 
				#start: 0 
				#stop: 1 
				#step: 0.01) #(SliderSpec 
				#layout: #(Rectangle 77 283 177 301) 
				#name: #Slider1 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#model: #greenSlider 
				#orientation: #horizontal 
				#start: 0 
				#stop: 1 
				#step: 0.01) #(SliderSpec 
				#layout: #(Rectangle 77 255 177 273) 
				#name: #Slider2 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 5734 5734 5734)) 
				#model: #redSlider 
				#orientation: #horizontal 
				#start: 0 
				#stop: 1 
				#step: 0.01) #(RadioButtonSpec 
				#layout: #(Point 301 183) 
				#name: #RadioButton1 
				#model: #startPosition 
				#helpText: 'Put the entity image randomly on its cell' 
				#label: #(UserMessage 
					#key: #randomly 
					#defaultString: 'randomly') 
				#select: #random) #(GroupBoxSpec 
				#layout: #(Rectangle 282 167 411 278) 
				#name: #GroupBox5 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #white) 
					#setBackgroundColor: #(ColorValue 3072 3072 8191)) 
				#label: #(UserMessage 
					#key: #createimage 
					#defaultString: 'Start position on the cell ')) #(RadioButtonSpec 
				#layout: #(Point 328 213) 
				#name: #RadioButton6 
				#model: #startPosition 
				#select: #topLeft) #(RadioButtonSpec 
				#layout: #(Point 328 229) 
				#name: #RadioButton2 
				#model: #startPosition 
				#select: #leftCenter) #(RadioButtonSpec 
				#layout: #(Point 328 245) 
				#name: #RadioButton7 
				#model: #startPosition 
				#select: #bottomLeft) #(RadioButtonSpec 
				#layout: #(Point 343 245) 
				#name: #RadioButton4 
				#model: #startPosition 
				#select: #bottomCenter) #(RadioButtonSpec 
				#layout: #(Point 343 229) 
				#name: #RadioButton8 
				#model: #startPosition 
				#select: #center) #(RadioButtonSpec 
				#layout: #(Point 343 213) 
				#name: #RadioButton19 
				#model: #startPosition 
				#select: #topCenter) #(RadioButtonSpec 
				#layout: #(Point 358 213) 
				#name: #RadioButton10 
				#model: #startPosition 
				#select: #topRight) #(RadioButtonSpec 
				#layout: #(Point 358 229) 
				#name: #RadioButton5 
				#model: #startPosition 
				#select: #rightCenter) #(RadioButtonSpec 
				#layout: #(Point 358 245) 
				#name: #RadioButton9 
				#model: #startPosition 
				#select: #bottomRight) #(RadioButtonSpec 
				#layout: #(Point 314 200) 
				#name: #RadioButton3 
				#model: #startPosition 
				#select: #border_topLeft) #(RadioButtonSpec 
				#layout: #(Point 314 229) 
				#name: #RadioButton11 
				#model: #startPosition 
				#select: #border_leftCenter) #(RadioButtonSpec 
				#layout: #(Point 314 258) 
				#name: #RadioButton12 
				#model: #startPosition 
				#select: #border_bottomLeft) #(RadioButtonSpec 
				#layout: #(Point 372 258) 
				#name: #RadioButton13 
				#model: #startPosition 
				#select: #border_bottomRight) #(RadioButtonSpec 
				#layout: #(Point 372 229) 
				#name: #RadioButton14 
				#model: #startPosition 
				#select: #border_rightCenter) #(RadioButtonSpec 
				#layout: #(Point 372 200) 
				#name: #RadioButton15 
				#model: #startPosition 
				#select: #border_topRight) #(RadioButtonSpec 
				#layout: #(Point 343 200) 
				#name: #RadioButton16 
				#model: #startPosition 
				#select: #border_topCenter) #(RadioButtonSpec 
				#layout: #(Point 343 258) 
				#name: #RadioButton17 
				#model: #startPosition 
				#select: #border_bottomCenter) #(RegionSpec 
				#layout: #(Rectangle 320 208 378 267) 
				#name: #Region5 
				#lineWidth: 1) #(RadioButtonSpec 
				#layout: #(Point 438 183) 
				#name: #RadioButton18 
				#model: #stopPosition 
				#helpText: 'Put the entity image randomly on its cell' 
				#label: #(UserMessage 
					#key: #randomly 
					#defaultString: 'randomly') 
				#select: #random) #(RadioButtonSpec 
				#layout: #(Point 465 213) 
				#name: #RadioButton20 
				#model: #stopPosition 
				#select: #topLeft) #(RadioButtonSpec 
				#layout: #(Point 465 229) 
				#name: #RadioButton21 
				#model: #stopPosition 
				#select: #leftCenter) #(RadioButtonSpec 
				#layout: #(Point 465 245) 
				#name: #RadioButton22 
				#model: #stopPosition 
				#select: #bottomLeft) #(RadioButtonSpec 
				#layout: #(Point 480 245) 
				#name: #RadioButton23 
				#model: #stopPosition 
				#select: #bottomCenter) #(RadioButtonSpec 
				#layout: #(Point 480 229) 
				#name: #RadioButton24 
				#model: #stopPosition 
				#select: #center) #(RadioButtonSpec 
				#layout: #(Point 480 213) 
				#name: #RadioButton25 
				#model: #stopPosition 
				#select: #topCenter) #(RadioButtonSpec 
				#layout: #(Point 495 213) 
				#name: #RadioButton26 
				#model: #stopPosition 
				#select: #topRight) #(RadioButtonSpec 
				#layout: #(Point 495 229) 
				#name: #RadioButton27 
				#model: #stopPosition 
				#select: #rightCenter) #(RadioButtonSpec 
				#layout: #(Point 495 245) 
				#name: #RadioButton28 
				#model: #stopPosition 
				#select: #bottomRight) #(RadioButtonSpec 
				#layout: #(Point 451 200) 
				#name: #RadioButton29 
				#model: #stopPosition 
				#select: #border_topLeft) #(RadioButtonSpec 
				#layout: #(Point 451 229) 
				#name: #RadioButton30 
				#model: #stopPosition 
				#select: #border_leftCenter) #(RadioButtonSpec 
				#layout: #(Point 451 258) 
				#name: #RadioButton31 
				#model: #stopPosition 
				#select: #border_bottomLeft) #(RadioButtonSpec 
				#layout: #(Point 509 258) 
				#name: #RadioButton32 
				#model: #stopPosition 
				#select: #border_bottomRight) #(RadioButtonSpec 
				#layout: #(Point 509 229) 
				#name: #RadioButton33 
				#model: #stopPosition 
				#select: #border_rightCenter) #(RadioButtonSpec 
				#layout: #(Point 509 200) 
				#name: #RadioButton34 
				#model: #stopPosition 
				#select: #border_topRight) #(RadioButtonSpec 
				#layout: #(Point 480 200) 
				#name: #RadioButton35 
				#model: #stopPosition 
				#select: #border_topCenter) #(RadioButtonSpec 
				#layout: #(Point 480 258) 
				#name: #RadioButton36 
				#model: #stopPosition 
				#select: #border_bottomCenter) #(RegionSpec 
				#layout: #(Rectangle 457 208 515 267) 
				#name: #Region7 
				#lineWidth: 1) #(GroupBoxSpec 
				#layout: #(Rectangle 419 167 548 278) 
				#name: #GroupBox6 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #white) 
					#setBackgroundColor: #(ColorValue 3072 3072 8191)) 
				#label: #(UserMessage 
					#key: #createimage 
					#defaultString: 'Stop position on the cell ')))))
]

{ #category : #changed }
PovSetter_Arc >> colorChanged [
	
	| color |
	color := super colorChanged.
	self imageOS model lineColor: color.
	imageOS figure lineColor: color.
	imageOS invalidate
]

{ #category : #'initialize-release' }
PovSetter_Arc >> initialize [
	
	super initialize.
	self lineWidth onChangeSend: #setLineWidth to: self.
	self startAnnotation onChangeSend: #setStartAnnotation to: self.
	self stopAnnotation onChangeSend: #setStopAnnotation to: self.
	self startPosition onChangeSend: #startPositionChanged to: self.
	self stopPosition onChangeSend: #stopPositionChanged to: self
]

{ #category : #aspects }
PovSetter_Arc >> lineWidth [
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^lineWidth isNil
		ifTrue: [lineWidth := 1 asValue]
		ifFalse: [lineWidth]
]

{ #category : #changed }
PovSetter_Arc >> listSymbolsChanged [
	
	| anImage |
	self listSymbols selection ifNil: [^nil].
	anImage := selectedClass imageAtPov: listSymbols selection asSymbol.
	imageOS model: anImage copy.
	imageOS figure: imageOS model asFigure.
	couleur := super listSymbolsChanged.
	imageOS model color: couleur.
	self startAnnotation value: anImage startAnnotation.
	self stopAnnotation value: anImage stopAnnotation.
	self lineWidth value: anImage lineWidth.
	imageOS invalidate
]

{ #category : #'saving&removing pov symbols' }
PovSetter_Arc >> removeClassMethodForSymbol: aSymbol [
	
	selectedClass class removeSelector: ('ArcPOV_' , aSymbol) asSymbol
]

{ #category : #'saving&removing pov symbols' }
PovSetter_Arc >> saveArcPOV: aPOV intoClass: aClass symbol: aSymbol [
	
	| selector |
	selector := 'ArcPOV_' , aSymbol.
	aClass class
		compile:
			(selector ,
					'\"Returns an array containing the settings of a Arc entity pov symbol in the following order:\(lineColor red) (lineColor green) (lineColor blue) lineWidth startAnnotation stopAnnotation startPosition stopPosition"\^#('
				, aPOV lineColor red printString , ' '
				, aPOV lineColor green printString , ' '
				, aPOV lineColor blue printString , ' ' , aPOV lineWidth printString ,
					' ' , aPOV startAnnotation printString , ' '
				, aPOV stopAnnotation printString , aPOV startPosition printString ,
					' ' , aPOV stopPosition printString , ' ' , ')') withCRs
		classified: 'pov symbols'
		notifying: nil
]

{ #category : #'saving&removing pov symbols' }
PovSetter_Arc >> savePOVsymbol: aSymbol [
	
	self
		saveArcPOV: imageOS model copy
		intoClass: selectedClass
		symbol: aSymbol
]

{ #category : #changed }
PovSetter_Arc >> setLineWidth [
	
	self imageOS model lineWidth: self lineWidth value.
	imageOS figure lineWidth: self lineWidth value.
	imageOS invalidate.
	(self builder componentAt: #boutonAppliquer) enable
]

{ #category : #changed }
PovSetter_Arc >> setStartAnnotation [
	
	self startAnnotation value
		ifTrue: [imageOS figure addCircleStart]
		ifFalse: [imageOS figure removeCircle].
	imageOS invalidate.
	self imageOS model startAnnotation: self startAnnotation value.
	(self builder componentAt: #boutonAppliquer) enable
]

{ #category : #changed }
PovSetter_Arc >> setStopAnnotation [
	
	self stopAnnotation value
		ifTrue: [imageOS figure addStopArrow]
		ifFalse: [imageOS figure removeArrow].
	imageOS invalidate.
	self imageOS model stopAnnotation: self stopAnnotation value.
	(self builder componentAt: #boutonAppliquer) enable
]

{ #category : #aspects }
PovSetter_Arc >> startAnnotation [
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^startAnnotation isNil
		ifTrue: [startAnnotation := false asValue]
		ifFalse: [startAnnotation]
]

{ #category : #aspects }
PovSetter_Arc >> startPosition [
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^startPosition isNil
		ifTrue: [startPosition := #center asValue]
		ifFalse: [startPosition]
]

{ #category : #changed }
PovSetter_Arc >> startPositionChanged [
	"Display the figure at the right position on the virtualCell"
	
	imageOS model startPosition: startPosition value	"	self builder ifNil: [^self].
	(self builder componentAt: #virtualCell) bounds.
	(self builder componentAt: #boutonAppliquer) enable."	"figurePosition := imageOS figure calculateNewPositionOnPatchBounds: ((self builder componentAt: #virtualCell) bounds moveTo: -17 @ -19)."	"startPosition value = #topLeft ifTrue: [figurePosition := -17 @ -17].
	startPosition value = #leftCenter ifTrue: [figurePosition := -17 @ 0].
	startPosition value = #bottomLeft ifTrue: [figurePosition := -17 @ 17].
	startPosition value = #topRight ifTrue: [figurePosition := 17 @ -17].
	startPosition value = #rightCenter ifTrue: [figurePosition := 17 @ 0].
	startPosition value = #bottomRight ifTrue: [figurePosition := 17 @ 17].
	startPosition value = #topCenter ifTrue: [figurePosition := 0 @ -17].
	startPosition value = #center ifTrue: [figurePosition := 0 @ 0].
	startPosition value = #bottomCenter ifTrue: [figurePosition := 0 @ 17].
	startPosition value = #random ifTrue: [figurePosition := 4 @ 6].

	startPosition value = #border_topLeft ifTrue: [figurePosition := -25 @ -25].
	startPosition value = #border_leftCenter ifTrue: [figurePosition := -25 @ 0].
	startPosition value = #border_bottomLeft ifTrue: [figurePosition := -25 @ 25].
	startPosition value = #border_topRight ifTrue: [figurePosition := 25 @ -25].
	startPosition value = #border_rightCenter ifTrue: [figurePosition := 25 @ 0].
	startPosition value = #border_bottomRight ifTrue: [figurePosition := 25 @ 25].
	startPosition value = #border_topCenter ifTrue: [figurePosition := 0 @ -25].
	startPosition value = #border_bottomCenter ifTrue: [figurePosition := 0 @ 25].

	imageOS figure translateTo: figurePosition - (imageOS figure bounds extent / 2).
	imageOS invalidate"
]

{ #category : #aspects }
PovSetter_Arc >> stopAnnotation [
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^stopAnnotation isNil
		ifTrue: [stopAnnotation := true asValue]
		ifFalse: [stopAnnotation]
]

{ #category : #aspects }
PovSetter_Arc >> stopPosition [
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^stopPosition isNil
		ifTrue: [stopPosition := #center asValue]
		ifFalse: [stopPosition]
]

{ #category : #changed }
PovSetter_Arc >> stopPositionChanged [
	"Display the figure at the right position on the virtualCell"
	
	imageOS model stopPosition: stopPosition value	"	self builder ifNil: [^self].
	(self builder componentAt: #virtualCell) bounds.
	(self builder componentAt: #boutonAppliquer) enable."	"figurePosition := imageOS figure calculateNewPositionOnPatchBounds: ((self builder componentAt: #virtualCell) bounds moveTo: -17 @ -19)."	"startPosition value = #topLeft ifTrue: [figurePosition := -17 @ -17].
	startPosition value = #leftCenter ifTrue: [figurePosition := -17 @ 0].
	startPosition value = #bottomLeft ifTrue: [figurePosition := -17 @ 17].
	startPosition value = #topRight ifTrue: [figurePosition := 17 @ -17].
	startPosition value = #rightCenter ifTrue: [figurePosition := 17 @ 0].
	startPosition value = #bottomRight ifTrue: [figurePosition := 17 @ 17].
	startPosition value = #topCenter ifTrue: [figurePosition := 0 @ -17].
	startPosition value = #center ifTrue: [figurePosition := 0 @ 0].
	startPosition value = #bottomCenter ifTrue: [figurePosition := 0 @ 17].
	startPosition value = #random ifTrue: [figurePosition := 4 @ 6].

	startPosition value = #border_topLeft ifTrue: [figurePosition := -25 @ -25].
	startPosition value = #border_leftCenter ifTrue: [figurePosition := -25 @ 0].
	startPosition value = #border_bottomLeft ifTrue: [figurePosition := -25 @ 25].
	startPosition value = #border_topRight ifTrue: [figurePosition := 25 @ -25].
	startPosition value = #border_rightCenter ifTrue: [figurePosition := 25 @ 0].
	startPosition value = #border_bottomRight ifTrue: [figurePosition := 25 @ 25].
	startPosition value = #border_topCenter ifTrue: [figurePosition := 0 @ -25].
	startPosition value = #border_bottomCenter ifTrue: [figurePosition := 0 @ 25].

	imageOS figure translateTo: figurePosition - (imageOS figure bounds extent / 2).
	imageOS invalidate"
]

{ #category : #action }
PovSetter_Arc >> validate [
	
	| selectedSymbol aPOV |
	listSymbols selection
		ifNil:
			[^Dialog
				warn:
					(UserMessage defaultString: 'Select a pov symbol' key: #selectPovMethod)
						asString]
		ifNotNil: [:aSelec | selectedSymbol := aSelec asSymbol].
	aPOV := imageOS model copy.
	selectedClass povDict at: selectedSymbol put: aPOV.	"on met √† jour le dico povDict"
	self savePOVsymbol: selectedSymbol.	"on sauvegarde au niveau de la classe de l''entit√©"	""	"on fait oublier aux agents leur visualState pour ce pov"
	self cormas currentSimulation
		ifNotNil:
			[:sim | 
			(sim allTheEntities: selectedClass)
				do:
					[:entity | 
					sim
						registerEntityChange: #povSymbolChanged
						with: selectedSymbol
						from: (EntityReference on: entity)]	"entity replacePovAtSymbol: selectedSymbol]"]
]

{ #category : #aspects }
PovSetter_Arc >> widthChoices [
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^widthChoices isNil
		ifTrue: [widthChoices := (List withAll: #(1 2 3 4 5)) asValue]
		ifFalse: [widthChoices]
]
