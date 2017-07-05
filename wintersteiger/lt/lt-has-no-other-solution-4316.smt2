(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0366758476269095634592076748958788812160491943359375p-1004 {- 165173333706047 -1004 (-6.04682e-303)}
; Y = 1.745089397824010735149613537942059338092803955078125p1022 {+ 3355584334397922 1022 (7.84284e+307)}
; -1.0366758476269095634592076748958788812160491943359375p-1004 < 1.745089397824010735149613537942059338092803955078125p1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000010011 #b0000100101100011100101101001111000011100010100111111)))
(assert (= y (fp #b0 #b11111111101 #b1011111010111110001011011100010001000000000111100010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
