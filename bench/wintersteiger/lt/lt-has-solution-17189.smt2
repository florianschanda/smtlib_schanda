(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9555803920061161083054912523948587477207183837890625p-236 {+ 4303551497361297 -236 (1.77091e-071)}
; Y = -1.878247564167784044997233650065027177333831787109375p418 {- 3955275402725078 418 (-1.27143e+126)}
; 1.9555803920061161083054912523948587477207183837890625p-236 < -1.878247564167784044997233650065027177333831787109375p418 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100010011 #b1111010010100000111010101010010001011101011110010001)))
(assert (= y (fp #b1 #b10110100001 #b1110000011010100110101010001010111100100011011010110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
