(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.889052877365415827881633958895690739154815673828125p-638 {+ 4003938207215554 -638 (1.65618e-192)}
; Y = -1.27576190499868147298911935649812221527099609375p-520 {- 1241921212595040 -520 (-3.71682e-157)}
; 1.889052877365415827881633958895690739154815673828125p-638 > -1.27576190499868147298911935649812221527099609375p-520 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110000001 #b1110001110011000111110000010100010110010111111000010)))
(assert (= y (fp #b1 #b00111110111 #b0100011010011000010101010000101101110011101101100000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
