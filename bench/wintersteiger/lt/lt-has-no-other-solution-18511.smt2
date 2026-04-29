(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4450167727789213767408682542736642062664031982421875p524 {+ 2004177372060771 524 (7.9358e+157)}
; Y = -1.063293406795609019610537870903499424457550048828125p-699 {- 285048163259714 -699 (-4.04284e-211)}
; 1.4450167727789213767408682542736642062664031982421875p524 < -1.063293406795609019610537870903499424457550048828125p-699 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000001011 #b0111000111101100100111101000010101000001110001100011)))
(assert (= y (fp #b1 #b00101000100 #b0001000000110011111111110010100000111101010101000010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
