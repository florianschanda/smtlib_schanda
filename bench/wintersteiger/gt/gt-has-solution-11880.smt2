(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1765126954092830491305221585207618772983551025390625p-912 {- 794942509271409 -912 (-3.39813e-275)}
; Y = -1.340756025210451785056875451118685305118560791015625p-607 {- 1534628708162042 -607 (-2.52431e-183)}
; -1.1765126954092830491305221585207618772983551025390625p-912 > -1.340756025210451785056875451118685305118560791015625p-607 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101111 #b0010110100101111111011111001111000011100100101110001)))
(assert (= y (fp #b1 #b00110100000 #b0101011100111011110010010111000000110001100111111010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
