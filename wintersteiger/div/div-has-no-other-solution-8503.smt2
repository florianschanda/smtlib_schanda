(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3034811012716376321662892223685048520565032958984375p-723 {- 1366757374600935 -723 (-2.95405e-218)}
; Y = 1.6100523864558773379229705824400298297405242919921875p407 {+ 2747431700319171 407 (5.32167e+122)}
; -1.3034811012716376321662892223685048520565032958984375p-723 / 1.6100523864558773379229705824400298297405242919921875p407 == -zero
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
(assert (= x (fp #b1 #b00100101100 #b0100110110110000111011111111110011101010011011100111)))
(assert (= y (fp #b0 #b10110010110 #b1001110000101100011001001010100010101100101111000011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
