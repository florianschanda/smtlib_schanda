(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.47719282510431693111740969470702111721038818359375p508 {+ 2149085429323676 508 (1.23787e+153)}
; Y = -1.07347375249886578529867620090954005718231201171875p343 {- 330896364375404 343 (-1.92345e+103)}
; 1.47719282510431693111740969470702111721038818359375p508 > -1.07347375249886578529867620090954005718231201171875p343 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111111011 #b0111101000101001010011110001100110110101011110011100)))
(assert (= y (fp #b1 #b10101010110 #b0001001011001111001011010000010000011000110101101100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
