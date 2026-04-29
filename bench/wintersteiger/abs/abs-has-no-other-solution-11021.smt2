(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9569661111901444083827072972781024873256683349609375p-351 {- 4309792221762127 -351 (-4.26633e-106)}
; -1.9569661111901444083827072972781024873256683349609375p-351 | == 1.9569661111901444083827072972781024873256683349609375p-351
; [HW: 1.9569661111901444083827072972781024873256683349609375p-351] 

; mpf : + 4309792221762127 -351
; mpfd: + 4309792221762127 -351 (4.26633e-106) class: Pos. norm. non-zero
; hwf : + 4309792221762127 -351 (4.26633e-106) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010100000 #b1111010011111011101110110010011011110001001001001111)))
(assert (= r (fp #b0 #b01010100000 #b1111010011111011101110110010011011110001001001001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
