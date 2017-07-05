(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6399219750085352043100783703266642987728118896484375 342 {- 2881952368194631 342 (-1.4692e+103)}
; -1.6399219750085352043100783703266642987728118896484375 342 I == -1.6399219750085352043100783703266642987728118896484375 342
; [HW: -1.6399219750085352043100783703266642987728118896484375 342] 

; mpf : - 2881952368194631 342
; mpfd: - 2881952368194631 342 (-1.4692e+103) class: Neg. norm. non-zero
; hwf : - 2881952368194631 342 (-1.4692e+103) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101010101 #b1010001111010001111011010011001010100111010001000111)))
(assert (= r (fp #b1 #b10101010101 #b1010001111010001111011010011001010100111010001000111)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
