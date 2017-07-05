(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2749129449113798528969709877856075763702392578125p-598 {+ 1238097836262216 -598 (1.22898e-180)}
; Y = 1.1288011783407652099953111246577464044094085693359375p-218 {+ 580068938780351 -218 (2.67965e-066)}
; 1.2749129449113798528969709877856075763702392578125p-598 = 1.1288011783407652099953111246577464044094085693359375p-218 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110101001 #b0100011001100000101100011101101110100100001101001000)))
(assert (= y (fp #b0 #b01100100101 #b0010000011111001000111010011000010101000111010111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
