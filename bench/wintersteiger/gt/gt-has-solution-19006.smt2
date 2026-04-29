(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.822284826562489801204947070800699293613433837890625p620 {+ 3703241638499242 620 (7.92891e+186)}
; Y = -1.5111705850897101388596865945146419107913970947265625p502 {- 2302107656532777 502 (-1.97866e+151)}
; 1.822284826562489801204947070800699293613433837890625p620 > -1.5111705850897101388596865945146419107913970947265625p502 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101011 #b1101001010000001010000100010011000010101001110101010)))
(assert (= y (fp #b1 #b10111110101 #b1000001011011100000100110101000110100011001100101001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
