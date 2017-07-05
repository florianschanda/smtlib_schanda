(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0427164692430224146590944656054489314556121826171875p109 {- 192377874965459 109 (-6.76762e+032)}
; Y = 1.35706750414170240759403895935975015163421630859375p325 {+ 1608089078598684 325 (9.27577e+097)}
; -1.0427164692430224146590944656054489314556121826171875p109 < 1.35706750414170240759403895935975015163421630859375p325 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001101100 #b0000101011101111011101110110111001100110001111010011)))
(assert (= y (fp #b0 #b10101000100 #b0101101101101000110001101010010011000000110000011100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
