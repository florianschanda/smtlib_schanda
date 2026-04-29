(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.96994593534631778908305932418443262577056884765625p944 {- 4368248152995204 944 (-2.92934e+284)}
; Y = 1.2356612702889500088332397353951819241046905517578125p342 {+ 1061324009058973 342 (1.10703e+103)}
; -1.96994593534631778908305932418443262577056884765625p944 = 1.2356612702889500088332397353951819241046905517578125p342 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110101111 #b1111100001001110011000000111011100110011010110000100)))
(assert (= y (fp #b0 #b10101010101 #b0011110001010100010011000000100011010011001010011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
