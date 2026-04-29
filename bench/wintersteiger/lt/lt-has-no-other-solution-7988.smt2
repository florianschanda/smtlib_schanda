(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.254981845005314955443509461474604904651641845703125p-657 {+ 1148336142152178 -657 (2.0986e-198)}
; Y = 1.076726387954993757745114635326899588108062744140625p1015 {+ 345544932203594 1015 (3.78051e+305)}
; 1.254981845005314955443509461474604904651641845703125p-657 < 1.076726387954993757745114635326899588108062744140625p1015 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101110 #b0100000101000110011111010111110101011111000111110010)))
(assert (= y (fp #b0 #b11111110110 #b0001001110100100010101110010111100000001110001001010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
