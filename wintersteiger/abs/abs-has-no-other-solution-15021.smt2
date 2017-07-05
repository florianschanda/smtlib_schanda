(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1355611845504405277296200438286177814006805419921875p-437 {+ 610513300227267 -437 (3.19965e-132)}
; 1.1355611845504405277296200438286177814006805419921875p-437 | == 1.1355611845504405277296200438286177814006805419921875p-437
; [HW: 1.1355611845504405277296200438286177814006805419921875p-437] 

; mpf : + 610513300227267 -437
; mpfd: + 610513300227267 -437 (3.19965e-132) class: Pos. norm. non-zero
; hwf : + 610513300227267 -437 (3.19965e-132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001001010 #b0010001010110100001000110100011001000000010011000011)))
(assert (= r (fp #b0 #b01001001010 #b0010001010110100001000110100011001000000010011000011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
