(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.909688595501674246435186432790942490100860595703125p-806 {+ 4096873219724530 -806 (4.47493e-243)}
; Y = 1.776370654072021437741568661294877529144287109375p-148 {+ 3496462588380144 -148 (4.97845e-045)}
; 1.909688595501674246435186432790942490100860595703125p-806 = 1.776370654072021437741568661294877529144287109375p-148 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011001 #b1110100011100001010110100000111100111001010011110010)))
(assert (= y (fp #b0 #b01101101011 #b1100011011000000001110100010100011010000001111110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
