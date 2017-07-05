(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.333916897900792708497874627937562763690948486328125p-252 {- 1503828016958722 -252 (-1.84319e-076)}
; Y = 1.4342153686425123115810720264562405645847320556640625p-199 {+ 1955532172416961 -199 (1.78503e-060)}
; -1.333916897900792708497874627937562763690948486328125p-252 < 1.4342153686425123115810720264562405645847320556640625p-199 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100000011 #b0101010101111011100100111110110000010000110100000010)))
(assert (= y (fp #b0 #b01100111000 #b0110111100101000101111010000011110111101011111000001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
