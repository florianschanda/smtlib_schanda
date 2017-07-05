(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3282202949127095426007372225285507738590240478515625p561 {+ 1478172797864313 561 (1.00253e+169)}
; Y = -1.2510964057569022855886942124925553798675537109375p-435 {- 1130837679400856 -435 (-1.41008e-131)}
; 1.3282202949127095426007372225285507738590240478515625p561 = -1.2510964057569022855886942124925553798675537109375p-435 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000110000 #b0101010000000110001111101100100010001000100101111001)))
(assert (= y (fp #b1 #b01001001100 #b0100000001000111110110101010001011011110011110011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
