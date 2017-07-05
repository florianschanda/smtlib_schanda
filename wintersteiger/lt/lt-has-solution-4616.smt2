(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.05216250928965138200510409660637378692626953125p292 {+ 234919057399584 292 (8.37224e+087)}
; Y = 1.7763328068117953950633136628312058746814727783203125p-569 {+ 3496292139473093 -569 (9.19299e-172)}
; 1.05216250928965138200510409660637378692626953125p292 < 1.7763328068117953950633136628312058746814727783203125p-569 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100100011 #b0000110101011010100001011010111101111001111100100000)))
(assert (= y (fp #b0 #b00111000110 #b1100011010111101101111110011000000010001100011000101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
