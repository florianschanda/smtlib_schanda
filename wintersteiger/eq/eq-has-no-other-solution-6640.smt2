(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.638289738926562488785521054523997008800506591796875p292 {+ 2874601430384078 292 (1.30362e+088)}
; Y = 1.1391737986658883041712897465913556516170501708984375p656 {+ 626783067811431 656 (3.40618e+197)}
; 1.638289738926562488785521054523997008800506591796875p292 = 1.1391737986658883041712897465913556516170501708984375p656 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100100011 #b1010001101100110111101001101001000001111110111001110)))
(assert (= y (fp #b0 #b11010001111 #b0010001110100000111001001110000110111010111001100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
