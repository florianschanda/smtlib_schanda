(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6995474921527138345567209398723207414150238037109375p-153 {- 3150481824986927 -153 (-1.48848e-046)}
; Y = 1.8116302422500323299203728311113081872463226318359375p925 {+ 3655257656559871 925 (5.13825e+278)}
; -1.6995474921527138345567209398723207414150238037109375p-153 > 1.8116302422500323299203728311113081872463226318359375p925 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101100110 #b1011001100010101100010110110000011001011011100101111)))
(assert (= y (fp #b0 #b11110011100 #b1100111111000110111111111110001011101000100011111111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
