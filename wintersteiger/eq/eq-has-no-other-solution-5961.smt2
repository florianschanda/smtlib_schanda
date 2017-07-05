(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5244225578320198533077700631110928952693939208984375p556 {+ 2361789236036967 556 (3.5957e+167)}
; Y = 1.2894655085256709892149729057564400136470794677734375p90 {+ 1303636756332823 90 (1.59628e+027)}
; 1.5244225578320198533077700631110928952693939208984375p556 = 1.2894655085256709892149729057564400136470794677734375p90 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101011 #b1000011001000000100011101000011100101100010101100111)))
(assert (= y (fp #b0 #b10001011001 #b0100101000011010011010010101110001110000000100010111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
