(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.888219868845223192721505256486125290393829345703125p-13 {- 4000186670354418 -13 (-0.000230496)}
; Y = -1.811652024433958896310059571987949311733245849609375p-534 {- 3655355754795286 -534 (-3.22149e-161)}
; -1.888219868845223192721505256486125290393829345703125p-13 > -1.811652024433958896310059571987949311733245849609375p-534 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111110010 #b1110001101100010011000001001100001011000111111110010)))
(assert (= y (fp #b1 #b00111101001 #b1100111111001000011011010101010010101101000100010110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
