(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.13363547576381140657986179576255381107330322265625p855 {- 601840678853380 855 (-2.72345e+257)}
; Y = 1.383350405050484344116057400242425501346588134765625p998 {+ 1726456741337690 998 (3.70568e+300)}
; -1.13363547576381140657986179576255381107330322265625p855 < 1.383350405050484344116057400242425501346588134765625p998 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101010110 #b0010001000110101111011110011110111111101101100000100)))
(assert (= y (fp #b0 #b11111100101 #b0110001000100011010000001000110010011001101001011010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
