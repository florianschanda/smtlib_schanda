(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5726365861609188367964407007093541324138641357421875p-898 {+ 2578925916053027 -898 (7.44204e-271)}
; Y = -1.2286541758944331537151128941331990063190460205078125p859 {- 1029766861354877 859 (-4.72276e+258)}
; 1.5726365861609188367964407007093541324138641357421875p-898 > -1.2286541758944331537151128941331990063190460205078125p859 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001111101 #b1001001010011000010011111011001000001101111000100011)))
(assert (= y (fp #b1 #b11101011010 #b0011101010001001000101000111111110001111011101111101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
