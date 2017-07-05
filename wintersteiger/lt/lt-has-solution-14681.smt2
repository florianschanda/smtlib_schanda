(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7374789609622036667957445388310588896274566650390625p-886 {+ 3321309973782961 -886 (3.36778e-267)}
; Y = 1.870150813079517693182651782990433275699615478515625p-595 {+ 3918810877541050 -595 (1.44221e-179)}
; 1.7374789609622036667957445388310588896274566650390625p-886 < 1.870150813079517693182651782990433275699615478515625p-595 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010001001 #b1011110011001011011010111101001011010010000110110001)))
(assert (= y (fp #b0 #b00110101100 #b1101111011000010001101000010010011000011101010111010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
