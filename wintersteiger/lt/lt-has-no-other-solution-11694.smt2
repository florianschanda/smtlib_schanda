(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.08643463464633693860150742693804204463958740234375p-284 {- 389266988385148 -284 (-3.4953e-086)}
; Y = 1.0117303856432318109881407508510164916515350341796875p117 {+ 52828960411771 117 (1.68103e+035)}
; -1.08643463464633693860150742693804204463958740234375p-284 < 1.0117303856432318109881407508510164916515350341796875p117 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011100011 #b0001011000100000100101001000100100001100001101111100)))
(assert (= y (fp #b0 #b10001110100 #b0000001100000000110000110011011010110101000001111011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
