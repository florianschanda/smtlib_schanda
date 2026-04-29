(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 0.9343845873068425955665361470892094075679779052734375p-1022 {+ 4208094079215831 -1023 (2.07907e-308)}
; Y = -1.7881590535151070664454664438380859792232513427734375p638 {- 3549552819719319 638 (-2.03959e+192)}
; 0.9343845873068425955665361470892094075679779052734375p-1022 < -1.7881590535151070664454664438380859792232513427734375p638 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b1110111100110011110101000000110001011110100011010111)))
(assert (= y (fp #b1 #b11001111101 #b1100100111000100110010101010111011100100110010010111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
