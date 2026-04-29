(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6955389855457292380691569633199833333492279052734375p1008 {- 3132429116125399 1008 (-4.65097e+303)}
; Y = 1.8259553360816778155850670373183675110340118408203125p-8 {+ 3719772143802117 -8 (0.00713264)}
; -1.6955389855457292380691569633199833333492279052734375p1008 = 1.8259553360816778155850670373183675110340118408203125p-8 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111101111 #b1011001000001110110101111100110000000011000011010111)))
(assert (= y (fp #b0 #b01111110111 #b1101001101110001110011110001010001101101011100000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
