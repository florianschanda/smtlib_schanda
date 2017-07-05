(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9334085229509321290919388047768734395503997802734375p-780 {+ 4203698276146263 -780 (3.04037e-235)}
; Y = NaN {- 3525925608725999 1024 (-1.#QNAN)}
; 1.9334085229509321290919388047768734395503997802734375p-780 < NaN == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011110011 #b1110111011110011110111000110011111100001110001010111)))
(assert (= y (_ NaN 11 53)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
