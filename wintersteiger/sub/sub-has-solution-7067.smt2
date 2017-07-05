(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.197533237591524635234918605419807136058807373046875p700 {+ 889610615210478 700 (6.29919e+210)}
; -zero - 1.197533237591524635234918605419807136058807373046875p700 == -1.197533237591524635234918605419807136058807373046875p700
; [HW: -1.197533237591524635234918605419807136058807373046875p700] 

; mpf : - 889610615210478 700
; mpfd: - 889610615210478 700 (-6.29919e+210) class: Neg. norm. non-zero
; hwf : - 889610615210478 700 (-6.29919e+210) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b11010111011 #b0011001010010001100010011100101101010100000111101110)))
(assert (= r (fp #b1 #b11010111011 #b0011001010010001100010011100101101010100000111101110)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
