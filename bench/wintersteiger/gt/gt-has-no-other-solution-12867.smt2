(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4537309366675665867063571567996405065059661865234375p-905 {- 2043422477302519 -905 (-5.3745e-273)}
; Y = 1.7805113475013687462933376082219183444976806640625p-80 {+ 3515110613765608 -80 (1.4728e-024)}
; -1.4537309366675665867063571567996405065059661865234375p-905 > 1.7805113475013687462933376082219183444976806640625p-80 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110110 #b0111010000100111101101011110111000101011101011110111)))
(assert (= y (fp #b0 #b01110101111 #b1100011111001111100101110111011110101100110111101000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
