(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.1152079996952950491362344109802506864070892333984375p-1022 {- 518850704497831 -1023 (-2.56346e-309)}
; Y = 1.7421786871779068039955973290489055216312408447265625p-454 {+ 3342475659016745 -454 (3.7452e-137)}
; -0.1152079996952950491362344109802506864070892333984375p-1022 * 1.7421786871779068039955973290489055216312408447265625p-454 == -zero
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
(assert (= x (fp #b1 #b00000000000 #b0001110101111110010001010111111011101101110010100111)))
(assert (= y (fp #b0 #b01000111001 #b1011110111111111011011000010010100110111101000101001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
