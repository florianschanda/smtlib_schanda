(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.589571846967162027652875622152350842952728271484375p-669 {+ 2655195550309446 -669 (6.48953e-202)}
; Y = -1.0531595892477445541857150601572357118129730224609375p-102 {- 239409506327311 -102 (-2.07699e-031)}
; 1.589571846967162027652875622152350842952728271484375p-669 < -1.0531595892477445541857150601572357118129730224609375p-102 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101100010 #b1001011011101110001011100011100101011101110001000110)))
(assert (= y (fp #b1 #b01110011001 #b0000110110011011110111011110100101001001101100001111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
