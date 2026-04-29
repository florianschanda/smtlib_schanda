(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.433999385334963516669404270942322909832000732421875p275 {+ 1954559470073566 275 (8.70558e+082)}
; Y = 1.8440071237510264889891686834744177758693695068359375p-651 {+ 3801070168023167 -651 (1.97349e-196)}
; 1.433999385334963516669404270942322909832000732421875p275 < 1.8440071237510264889891686834744177758693695068359375p-651 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010010 #b0110111100011010100101010110111001111111011011011110)))
(assert (= y (fp #b0 #b00101110100 #b1101100000010000110110011101001000011010000001111111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
