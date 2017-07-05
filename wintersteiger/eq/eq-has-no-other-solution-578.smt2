(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.21739984527966083049932421999983489513397216796875p769 {+ 979081862191884 769 (3.78007e+231)}
; Y = -1.5003334786340365436529964426881633698940277099609375p513 {- 2253301667937231 513 (-4.02324e+154)}
; 1.21739984527966083049932421999983489513397216796875p769 = -1.5003334786340365436529964426881633698940277099609375p513 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000000 #b0011011110100111100001000010100110100001101100001100)))
(assert (= y (fp #b1 #b11000000000 #b1000000000010101110110101101011111010011101111001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
