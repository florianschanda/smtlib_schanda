(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8783981692520097528387168495100922882556915283203125p-461 {+ 3955953667726277 -461 (3.15471e-139)}
; Y = -1.8799381820862011149841919177561067044734954833984375p301 {- 3962889268952487 301 (-7.659e+090)}
; 1.8783981692520097528387168495100922882556915283203125p-461 < -1.8799381820862011149841919177561067044734954833984375p301 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000110010 #b1110000011011110101100111101000111001101101111000101)))
(assert (= y (fp #b1 #b10100101100 #b1110000101000011101000001111001010001111110110100111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
