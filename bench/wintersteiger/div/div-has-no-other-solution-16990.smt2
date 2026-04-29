(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.509125347733168975850048809661529958248138427734375p-601 {+ 2292896726335974 -601 (1.81844e-181)}
; Y = -1.5170844307478095203123302781023085117340087890625p673 {- 2328741249634920 673 (-5.94562e+202)}
; 1.509125347733168975850048809661529958248138427734375p-601 / -1.5170844307478095203123302781023085117340087890625p673 == -zero
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
(assert (= x (fp #b0 #b00110100110 #b1000001001010110000010011110111000010100000111100110)))
(assert (= y (fp #b1 #b11010100000 #b1000010001011111101001010010111101010101001001101000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
