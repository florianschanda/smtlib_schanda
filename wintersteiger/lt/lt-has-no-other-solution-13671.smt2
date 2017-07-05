(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0977498061217738634098850525333546102046966552734375p620 {+ 440225990425559 620 (4.7764e+186)}
; Y = -1.5421357756761484569807407751795835793018341064453125p-245 {- 2441562477319317 -245 (-2.72756e-074)}
; 1.0977498061217738634098850525333546102046966552734375p620 < -1.5421357756761484569807407751795835793018341064453125p-245 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101011 #b0001100100000110001000011001110001111011101111010111)))
(assert (= y (fp #b1 #b01100001010 #b1000101011001001011010010000001010000101010010010101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
