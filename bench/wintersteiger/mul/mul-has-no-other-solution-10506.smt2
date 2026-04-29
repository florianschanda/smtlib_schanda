(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1046345877500149956773611847893334925174713134765625p-897 {+ 471232290401033 -897 (1.04547e-270)}
; Y = 1.3965740519630589488997429725714027881622314453125p-391 {+ 1786010752645640 -391 (2.76908e-118)}
; 1.1046345877500149956773611847893334925174713134765625p-897 * 1.3965740519630589488997429725714027881622314453125p-391 == +zero
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
(assert (= x (fp #b0 #b00001111110 #b0001101011001001010101010001010001101010101100001001)))
(assert (= y (fp #b0 #b01001111000 #b0110010110000101111000001000011110011111101000001000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
