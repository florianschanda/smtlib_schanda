(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.049561540778411572460981915355660021305084228515625p-794 {+ 223205336581562 -794 (1.00738e-239)}
; Y = 1.443955339632545520345274780993349850177764892578125p433 {+ 1999397102138274 433 (3.20289e+130)}
; 1.049561540778411572460981915355660021305084228515625p-794 / 1.443955339632545520345274780993349850177764892578125p433 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011100101 #b0000110010110000000100001010110011001000010110111010)))
(assert (= y (fp #b0 #b10110110000 #b0111000110100111000011101010000010011011001110100010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
