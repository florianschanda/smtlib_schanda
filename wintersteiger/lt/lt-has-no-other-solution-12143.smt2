(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.593457504139725866565413525677286088466644287109375p5 {- 2672694994503894 5 (-50.9906)}
; Y = 1.76067394989069558874916765489615499973297119140625p-442 {+ 3425770917278180 -442 (1.55032e-133)}
; -1.593457504139725866565413525677286088466644287109375p5 < 1.76067394989069558874916765489615499973297119140625p-442 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000100 #b1001011111101100110101001011101111011000100011010110)))
(assert (= y (fp #b0 #b01001000101 #b1100001010111011100001110010100110110011000111100100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
