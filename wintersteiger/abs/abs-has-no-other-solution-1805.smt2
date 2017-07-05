(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.653282210424639853130202027386985719203948974609375p-529 {+ 2942121519436182 -529 (9.40761e-160)}
; 1.653282210424639853130202027386985719203948974609375p-529 | == 1.653282210424639853130202027386985719203948974609375p-529
; [HW: 1.653282210424639853130202027386985719203948974609375p-529] 

; mpf : + 2942121519436182 -529
; mpfd: + 2942121519436182 -529 (9.40761e-160) class: Pos. norm. non-zero
; hwf : + 2942121519436182 -529 (9.40761e-160) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111101110 #b1010011100111101100000001100000011010101000110010110)))
(assert (= r (fp #b0 #b00111101110 #b1010011100111101100000001100000011010101000110010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
