(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.422546229027209729878222788101993501186370849609375p-295 {- 1902979039593750 -295 (-2.23469e-089)}
; -1.422546229027209729878222788101993501186370849609375p-295 | == 1.422546229027209729878222788101993501186370849609375p-295
; [HW: 1.422546229027209729878222788101993501186370849609375p-295] 

; mpf : + 1902979039593750 -295
; mpfd: + 1902979039593750 -295 (2.23469e-089) class: Pos. norm. non-zero
; hwf : + 1902979039593750 -295 (2.23469e-089) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011011000 #b0110110000101011111111010101101010111000010100010110)))
(assert (= r (fp #b0 #b01011011000 #b0110110000101011111111010101101010111000010100010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
