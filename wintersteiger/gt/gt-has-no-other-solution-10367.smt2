(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9155483911636554950064237345941364765167236328125p988 {- 4123263393284296 988 (-5.01105e+297)}
; Y = 1.242687427932583243972430864232592284679412841796875p-379 {+ 1092967010004686 -379 (1.00924e-114)}
; -1.9155483911636554950064237345941364765167236328125p988 > 1.242687427932583243972430864232592284679412841796875p-379 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111011011 #b1110101001100001011000010001110111110100000011001000)))
(assert (= y (fp #b0 #b01010000100 #b0011111000100000110000110110011000011110111011001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
