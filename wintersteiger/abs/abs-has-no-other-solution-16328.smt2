(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4222816214485349828322569010197184979915618896484375p-192 {- 1901787353001031 -192 (-2.26583e-058)}
; -1.4222816214485349828322569010197184979915618896484375p-192 | == 1.4222816214485349828322569010197184979915618896484375p-192
; [HW: 1.4222816214485349828322569010197184979915618896484375p-192] 

; mpf : + 1901787353001031 -192
; mpfd: + 1901787353001031 -192 (2.26583e-058) class: Pos. norm. non-zero
; hwf : + 1901787353001031 -192 (2.26583e-058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100111111 #b0110110000011010101001011111100111010010110001000111)))
(assert (= r (fp #b0 #b01100111111 #b0110110000011010101001011111100111010010110001000111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
