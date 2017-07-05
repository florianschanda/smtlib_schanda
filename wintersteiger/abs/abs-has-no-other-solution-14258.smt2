(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.681008870720729131420512203476391732692718505859375p-725 {- 3066991296413878 -725 (-9.52408e-219)}
; -1.681008870720729131420512203476391732692718505859375p-725 | == 1.681008870720729131420512203476391732692718505859375p-725
; [HW: 1.681008870720729131420512203476391732692718505859375p-725] 

; mpf : + 3066991296413878 -725
; mpfd: + 3066991296413878 -725 (9.52408e-219) class: Pos. norm. non-zero
; hwf : + 3066991296413878 -725 (9.52408e-219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100101010 #b1010111001010110100110001110110000001000000010110110)))
(assert (= r (fp #b0 #b00100101010 #b1010111001010110100110001110110000001000000010110110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
