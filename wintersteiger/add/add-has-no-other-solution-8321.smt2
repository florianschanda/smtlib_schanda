(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.960869623234908321052216706448234617710113525390625p-147 {+ 4327372077152362 -147 (1.09911e-044)}
; Y = +zero {+ 0 -1023 (0)}
; 1.960869623234908321052216706448234617710113525390625p-147 + +zero == 1.960869623234908321052216706448234617710113525390625p-147
; [HW: 1.960869623234908321052216706448234617710113525390625p-147] 

; mpf : + 4327372077152362 -147
; mpfd: + 4327372077152362 -147 (1.09911e-044) class: Pos. norm. non-zero
; hwf : + 4327372077152362 -147 (1.09911e-044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101101100 #b1111010111111011100011010011011110000011100001101010)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b01101101100 #b1111010111111011100011010011011110000011100001101010)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
