(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8408627753518296277235322122578509151935577392578125p410 {+ 3786909281744221 410 (4.86765e+123)}
; Y = -1.825754228158729119968484155833721160888671875p-331 {- 3718866434235264 -331 (-4.17363e-100)}
; 1.8408627753518296277235322122578509151935577392578125p410 = -1.825754228158729119968484155833721160888671875p-331 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110011001 #b1101011101000010110010000110100010001111010101011101)))
(assert (= y (fp #b1 #b01010110100 #b1101001101100100101000010000110001111001101110000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
