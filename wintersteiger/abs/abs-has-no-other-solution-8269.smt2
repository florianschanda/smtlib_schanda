(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9667807658023555017479111484135501086711883544921875p-517 {- 4353993496616451 -517 (-4.58404e-156)}
; -1.9667807658023555017479111484135501086711883544921875p-517 | == 1.9667807658023555017479111484135501086711883544921875p-517
; [HW: 1.9667807658023555017479111484135501086711883544921875p-517] 

; mpf : + 4353993496616451 -517
; mpfd: + 4353993496616451 -517 (4.58404e-156) class: Pos. norm. non-zero
; hwf : + 4353993496616451 -517 (4.58404e-156) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111010 #b1111011101111110111100011011101110000101111000000011)))
(assert (= r (fp #b0 #b00111111010 #b1111011101111110111100011011101110000101111000000011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
