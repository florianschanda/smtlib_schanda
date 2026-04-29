(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.445148285036518931434557089232839643955230712890625p215 {+ 2004769650615082 215 (7.60959e+064)}
; Y = 1.647493882944676357737989746965467929840087890625p550 {+ 2916053209954320 550 (6.07186e+165)}
; 1.445148285036518931434557089232839643955230712890625p215 > 1.647493882944676357737989746965467929840087890625p550 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011010110 #b0111000111110101001111001110111000011010001100101010)))
(assert (= y (fp #b0 #b11000100101 #b1010010111000010001010001011101110011011100000010000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
