(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.164275960331895287680481487768702208995819091796875p380 {+ 739833153736654 380 (2.86718e+114)}
; Y = -1.903495184428587894132078872644342482089996337890625p425 {- 4068980575923626 425 (-1.6493e+128)}
; 1.164275960331895287680481487768702208995819091796875p380 = -1.903495184428587894132078872644342482089996337890625p425 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101111011 #b0010101000001101111111010100010100100100111111001110)))
(assert (= y (fp #b1 #b10110101000 #b1110011101001011011101011101110100110110110110101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
