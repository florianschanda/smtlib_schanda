(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.85804473512102230614573272760026156902313232421875p379 {- 3864289949358252 379 (-2.28783e+114)}
; Y = -1.63119751918333033557928501977585256099700927734375p-106 {- 2842660912191228 -106 (-2.01061e-032)}
; -1.85804473512102230614573272760026156902313232421875p379 > -1.63119751918333033557928501977585256099700927734375p-106 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111010 #b1101101110101000110100011101101111011001100010101100)))
(assert (= y (fp #b1 #b01110010101 #b1010000110010110001010010001111000110101011011111100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
