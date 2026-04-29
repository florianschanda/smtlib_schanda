(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.603654697549302898806899975170381367206573486328125p904 {- 2718619070943490 904 (-2.16884e+272)}
; Y = -1.993286826637180819687955590779893100261688232421875p-937 {- 4473366182315230 -937 (-1.71579e-282)}
; -1.603654697549302898806899975170381367206573486328125p904 < -1.993286826637180819687955590779893100261688232421875p-937 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110000111 #b1001101010001001000111010100000000001101000100000010)))
(assert (= y (fp #b1 #b00001010110 #b1111111001001000000010111010001111110100010011011110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
