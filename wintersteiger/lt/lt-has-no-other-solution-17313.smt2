(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.773593930884622249521953563089482486248016357421875p-467 {- 3483957338868062 -467 (-4.65421e-141)}
; Y = -1.2033976822644720794386330453562550246715545654296875p-833 {- 916021726054299 -833 (-2.10098e-251)}
; -1.773593930884622249521953563089482486248016357421875p-467 < -1.2033976822644720794386330453562550246715545654296875p-833 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101100 #b1100011000001010010000000111100110001000100101011110)))
(assert (= y (fp #b1 #b00010111110 #b0011010000010001110111101101100101101000011110011011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
