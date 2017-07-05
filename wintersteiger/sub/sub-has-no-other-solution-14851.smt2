(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3980500549629961692943425077828578650951385498046875p399 {- 1792658079206155 399 (-1.80506e+120)}
; Y = -1.28804103793493229801470079110004007816314697265625p-985 {- 1297221511111172 -985 (-3.93898e-297)}
; -1.3980500549629961692943425077828578650951385498046875p399 - -1.28804103793493229801470079110004007816314697265625p-985 == -1.3980500549629961692943425077828578650951385498046875p399
; [HW: -1.3980500549629961692943425077828578650951385498046875p399] 

; mpf : - 1792658079206155 399
; mpfd: - 1792658079206155 399 (-1.80506e+120) class: Neg. norm. non-zero
; hwf : - 1792658079206155 399 (-1.80506e+120) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110001110 #b0110010111100110100110111100000000111100101100001011)))
(assert (= y (fp #b1 #b00000100110 #b0100100110111101000011101011010111010110001000000100)))
(assert (= r (fp #b1 #b10110001110 #b0110010111100110100110111100000000111100101100001011)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
