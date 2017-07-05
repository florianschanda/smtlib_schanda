(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0970178593041952641584657612838782370090484619140625p-437 {- 436929595010657 -437 (-3.09105e-132)}
; -1.0970178593041952641584657612838782370090484619140625p-437 | == 1.0970178593041952641584657612838782370090484619140625p-437
; [HW: 1.0970178593041952641584657612838782370090484619140625p-437] 

; mpf : + 436929595010657 -437
; mpfd: + 436929595010657 -437 (3.09105e-132) class: Pos. norm. non-zero
; hwf : + 436929595010657 -437 (3.09105e-132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001001010 #b0001100011010110001010011001010011010110111001100001)))
(assert (= r (fp #b0 #b01001001010 #b0001100011010110001010011001010011010110111001100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
