(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6627751449898457991594113991595804691314697265625p-123 {+ 2984873896006696 -123 (1.56367e-037)}
; Y = 1.082528845536355532885863794945180416107177734375p256 {+ 371676878004848 256 (1.25348e+077)}
; 1.6627751449898457991594113991595804691314697265625p-123 < 1.082528845536355532885863794945180416107177734375p256 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000100 #b1010100110101011101000011100010001010101010000101000)))
(assert (= y (fp #b0 #b10011111111 #b0001010100100000100111000100010010001110001001110000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
