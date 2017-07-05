(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.59522549753624076629421324469149112701416015625p-828 {+ 2680657328905632 -828 (8.91222e-250)}
; Y = -0.8377389965963961682149374610162340104579925537109375p-1022 {- 3772841032905263 -1023 (-1.86403e-308)}
; 1.59522549753624076629421324469149112701416015625p-828 * -0.8377389965963961682149374610162340104579925537109375p-1022 == -zero
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
(assert (= x (fp #b0 #b00011000011 #b1001100001100000101100101011110110101001110110100000)))
(assert (= y (fp #b1 #b00000000000 #b1101011001110110000100000001100011110111001000101111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
