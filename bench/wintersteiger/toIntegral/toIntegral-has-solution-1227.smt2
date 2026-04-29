(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0664921269639975331955383808235637843608856201171875 617 {+ 299453918218131 617 (5.80049e+185)}
; 1.0664921269639975331955383808235637843608856201171875 617 I == 1.0664921269639975331955383808235637843608856201171875 617
; [HW: 1.0664921269639975331955383808235637843608856201171875 617] 

; mpf : + 299453918218131 617
; mpfd: + 299453918218131 617 (5.80049e+185) class: Pos. norm. non-zero
; hwf : + 299453918218131 617 (5.80049e+185) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001101000 #b0001000100000101101000001100011011000000011110010011)))
(assert (= r (fp #b0 #b11001101000 #b0001000100000101101000001100011011000000011110010011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
