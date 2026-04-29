(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.303774191068108212476772678201086819171905517578125p-569 {+ 1368077333699106 -569 (6.74737e-172)}
; Y = -1.553476053218868724314916107687167823314666748046875p653 {- 2492634547034990 653 (-5.8062e+196)}
; 1.303774191068108212476772678201086819171905517578125p-569 / -1.553476053218868724314916107687167823314666748046875p653 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000110 #b0100110111000100001001010011100000000001101000100010)))
(assert (= y (fp #b1 #b11010001100 #b1000110110110000100110110100101110110001101101101110)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
