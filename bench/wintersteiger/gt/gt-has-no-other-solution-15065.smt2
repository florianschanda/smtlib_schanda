(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.05853867723559691427226425730623304843902587890625p-829 {+ 263634764984996 -829 (2.95693e-250)}
; Y = -1.5480711055178499879758646784466691315174102783203125p-56 {- 2468292826582725 -56 (-2.14838e-017)}
; 1.05853867723559691427226425730623304843902587890625p-829 > -1.5480711055178499879758646784466691315174102783203125p-56 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011000010 #b0000111011111100011001000000100001000111001010100100)))
(assert (= y (fp #b1 #b01111000111 #b1000110001001110011000110101001000010100111011000101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
