(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3209446233590258490409041769453324377536773681640625p207 {+ 1445406086166273 207 (2.71703e+062)}
; Y = -1.8875464158044170659422889002598822116851806640625p222 {- 3997153707490792 222 (-1.2722e+067)}
; 1.3209446233590258490409041769453324377536773681640625p207 > -1.8875464158044170659422889002598822116851806640625p222 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011001110 #b0101001000101001011011010100010100100111011100000001)))
(assert (= y (fp #b1 #b10011011101 #b1110001100110110001111011110110110001111110111101000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
