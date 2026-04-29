(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0357723270845087260028094533481635153293609619140625p656 {- 161104238927969 656 (-3.097e+197)}
; Y = -1.720543807589116180878363593365065753459930419921875p-525 {- 3245040823362462 -525 (-1.56646e-158)}
; -1.0357723270845087260028094533481635153293609619140625p656 < -1.720543807589116180878363593365065753459930419921875p-525 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010001111 #b0000100100101000011000000000111011101110000001100001)))
(assert (= y (fp #b1 #b00111110010 #b1011100001110101100011110001100011101110001110011110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
