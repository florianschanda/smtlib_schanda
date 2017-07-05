(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1346577346051269774562797465478070080280303955078125p720 {+ 606444523390205 720 (6.25838e+216)}
; Y = -1.7787747291399169657921675025136210024356842041015625p-81 {- 3507289579960089 -81 (-7.35684e-025)}
; 1.1346577346051269774562797465478070080280303955078125p720 < -1.7787747291399169657921675025136210024356842041015625p-81 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011001111 #b0010001001111000111011011110011001001000010011111101)))
(assert (= y (fp #b1 #b01110101110 #b1100011101011101110001111101100010011011011100011001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
