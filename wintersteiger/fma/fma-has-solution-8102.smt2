(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7188886688081324027876917170942761003971099853515625p-297 {- 3237586740965177 -297 (-6.75055e-090)}
; Y = -1.181674345444835960705631805467419326305389404296875p-249 {- 818188514448142 -249 (-1.30626e-075)}
; Z = -1.9315331705468798961788934320793487131595611572265625p364 {- 4195252439758185 364 (-7.25806e+109)}
; -1.7188886688081324027876917170942761003971099853515625p-297 x -1.181674345444835960705631805467419326305389404296875p-249 -1.9315331705468798961788934320793487131595611572265625p364 == -1.9315331705468796741342885070480406284332275390625p364
; [HW: -1.9315331705468796741342885070480406284332275390625p364] 

; mpf : - 4195252439758184 364
; mpfd: - 4195252439758184 364 (-7.25806e+109) class: Neg. norm. non-zero
; hwf : - 4195252439758184 364 (-7.25806e+109) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011010110 #b1011100000001001000101100111100111111110111100111001)))
(assert (= y (fp #b1 #b01100000110 #b0010111010000010001101011011110000110101001100001110)))
(assert (= z (fp #b1 #b10101101011 #b1110111001111000111101010011011010100011010101101001)))
(assert (= r (fp #b1 #b10101101011 #b1110111001111000111101010011011010100011010101101000)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
