(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8085720678296224317449514273903332650661468505859375p-996 {- 3641484863379679 -996 (-2.7006e-300)}
; -1.8085720678296224317449514273903332650661468505859375p-996 | == 1.8085720678296224317449514273903332650661468505859375p-996
; [HW: 1.8085720678296224317449514273903332650661468505859375p-996] 

; mpf : + 3641484863379679 -996
; mpfd: + 3641484863379679 -996 (2.7006e-300) class: Pos. norm. non-zero
; hwf : + 3641484863379679 -996 (2.7006e-300) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000011011 #b1100111011111110100101000011101111001001100011011111)))
(assert (= r (fp #b0 #b00000011011 #b1100111011111110100101000011101111001001100011011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
