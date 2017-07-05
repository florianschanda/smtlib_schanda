(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.118202117975336751243276012246496975421905517578125p282 {- 532335014468130 282 (-8.68919e+084)}
; Y = 1.378511271276451122247408420662395656108856201171875p608 {+ 1704663220276158 608 (1.46436e+183)}
; -1.118202117975336751243276012246496975421905517578125p282 > 1.378511271276451122247408420662395656108856201171875p608 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100011001 #b0001111001000010011111100111011100000101101000100010)))
(assert (= y (fp #b0 #b11001011111 #b0110000011100110000111010101101101001100101110111110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
