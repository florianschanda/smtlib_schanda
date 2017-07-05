(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4403110491719217645112394166062586009502410888671875p-219 {+ 1982984676977779 -219 (1.70957e-066)}
; Y = 1.246091429084362101065153183299116790294647216796875p-16 {+ 1108297268323406 -16 (1.90138e-005)}
; 1.4403110491719217645112394166062586009502410888671875p-219 < 1.246091429084362101065153183299116790294647216796875p-16 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100100100 #b0111000010111000001110011001010001000010110001110011)))
(assert (= y (fp #b0 #b01111101111 #b0011111011111111110110010000111110111110010001001110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
