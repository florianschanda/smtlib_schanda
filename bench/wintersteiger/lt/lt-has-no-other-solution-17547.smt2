(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.00441743101031466522954360698349773883819580078125p-863 {+ 19894340651988 -863 (1.63316e-260)}
; Y = -1.50049785576389549390796673833392560482025146484375p-655 {- 2254041956718012 -655 (-1.00366e-197)}
; 1.00441743101031466522954360698349773883819580078125p-863 < -1.50049785576389549390796673833392560482025146484375p-655 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010100000 #b0000000100100001100000000011000110111000101111010100)))
(assert (= y (fp #b1 #b00101110000 #b1000000000100000101000001010001000111001010110111100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
