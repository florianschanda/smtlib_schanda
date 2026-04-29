(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.53519630948949359350308441207744181156158447265625p553 {+ 2410309899986948 553 (4.52639e+166)}
; Y = -1.235306344910057863017982526798732578754425048828125p-528 {- 1059725567254850 -528 (-1.40584e-159)}
; 1.53519630948949359350308441207744181156158447265625p553 < -1.235306344910057863017982526798732578754425048828125p-528 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101000 #b1000100100000010101000000001011000110010100000000100)))
(assert (= y (fp #b1 #b00111101111 #b0011110000111101000010010101111111101110000101000010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
