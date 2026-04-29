(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.803671673986073198392432459513656795024871826171875p70 {+ 3619415451491902 70 (2.1294e+021)}
; Y = -1.626510934853471201932961776037700474262237548828125p-150 {- 2821554412749634 -150 (-1.13961e-045)}
; 1.803671673986073198392432459513656795024871826171875p70 > -1.626510934853471201932961776037700474262237548828125p-150 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001000101 #b1100110110111101011011010100010001111101111000111110)))
(assert (= y (fp #b1 #b01101101001 #b1010000001100011000001010100011111001000001101000010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
