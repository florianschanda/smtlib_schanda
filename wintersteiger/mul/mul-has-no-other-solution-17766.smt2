(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -0.6186305325993368686710027759545482695102691650390625p-1022 {- 2786064236094385 -1023 (-1.3765e-308)}
; Y = 1.2075817055144089096074822009541094303131103515625p-351 {+ 934864891603624 -351 (2.63262e-106)}
; -0.6186305325993368686710027759545482695102691650390625p-1022 * 1.2075817055144089096074822009541094303131103515625p-351 == -zero
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
(assert (= x (fp #b1 #b00000000000 #b1001111001011110100100100001000111010010001110110001)))
(assert (= y (fp #b0 #b01010100000 #b0011010100100100000100110001110001101110101010101000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
