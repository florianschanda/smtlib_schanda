(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.444385017171154306225844266009517014026641845703125p951 {+ 2001332197741042 951 (2.74922e+286)}
; Y = -1.1112844749039274550028721932903863489627838134765625p867 {- 501180719709449 867 (-1.09353e+261)}
; 1.444385017171154306225844266009517014026641845703125p951 > -1.1112844749039274550028721932903863489627838134765625p867 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110110110 #b0111000111000011001101110110101110010101000111110010)))
(assert (= y (fp #b1 #b11101100010 #b0001110001111101001000111010110001000011110100001001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
