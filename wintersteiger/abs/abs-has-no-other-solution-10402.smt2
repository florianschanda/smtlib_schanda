(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.421044208806716113713264348916709423065185546875p-386 {+ 1896214541888432 -386 (9.01632e-117)}
; 1.421044208806716113713264348916709423065185546875p-386 | == 1.421044208806716113713264348916709423065185546875p-386
; [HW: 1.421044208806716113713264348916709423065185546875p-386] 

; mpf : + 1896214541888432 -386
; mpfd: + 1896214541888432 -386 (9.01632e-117) class: Pos. norm. non-zero
; hwf : + 1896214541888432 -386 (9.01632e-117) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001111101 #b0110101111001001100011011010001011111110101110110000)))
(assert (= r (fp #b0 #b01001111101 #b0110101111001001100011011010001011111110101110110000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
