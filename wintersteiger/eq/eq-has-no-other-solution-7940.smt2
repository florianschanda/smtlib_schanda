(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.91078565949390810629893167060799896717071533203125p-282 {+ 4101813956711156 -282 (2.45897e-085)}
; Y = 1.0135540746253732802273361812694929540157318115234375p-507 {+ 61042125432183 -507 (2.41902e-153)}
; 1.91078565949390810629893167060799896717071533203125p-282 = 1.0135540746253732802273361812694929540157318115234375p-507 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011100101 #b1110100100101001001111111011110100110001001011110100)))
(assert (= y (fp #b0 #b01000000100 #b0000001101111000010001111010001100111110010101110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
