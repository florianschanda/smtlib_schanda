(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1840977674535413388667848266777582466602325439453125p-527 {- 829102636903509 -527 (-2.69513e-159)}
; -1.1840977674535413388667848266777582466602325439453125p-527 | == 1.1840977674535413388667848266777582466602325439453125p-527
; [HW: 1.1840977674535413388667848266777582466602325439453125p-527] 

; mpf : + 829102636903509 -527
; mpfd: + 829102636903509 -527 (2.69513e-159) class: Pos. norm. non-zero
; hwf : + 829102636903509 -527 (2.69513e-159) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111110000 #b0010111100100001000010000000001001111010110001010101)))
(assert (= r (fp #b0 #b00111110000 #b0010111100100001000010000000001001111010110001010101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
