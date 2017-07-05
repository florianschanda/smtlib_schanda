(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.632394100105129641775647542090155184268951416015625p-864 {+ 2848049833584762 -864 (1.32712e-260)}
; Y = -1.711307912698330380152356156031601130962371826171875p572 {- 3203446050573886 572 (-2.64537e+172)}
; 1.632394100105129641775647542090155184268951416015625p-864 < -1.711307912698330380152356156031601130962371826171875p572 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010011111 #b1010000111100100100101000110101000100010100001111010)))
(assert (= y (fp #b1 #b11000111011 #b1011011000011000010001100111111001101100111000111110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
