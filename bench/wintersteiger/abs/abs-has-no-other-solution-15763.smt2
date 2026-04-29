(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9506074537681421521284619302605278789997100830078125p-160 {- 4281155374565821 -160 (-1.33466e-048)}
; -1.9506074537681421521284619302605278789997100830078125p-160 | == 1.9506074537681421521284619302605278789997100830078125p-160
; [HW: 1.9506074537681421521284619302605278789997100830078125p-160] 

; mpf : + 4281155374565821 -160
; mpfd: + 4281155374565821 -160 (1.33466e-048) class: Pos. norm. non-zero
; hwf : + 4281155374565821 -160 (1.33466e-048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101011111 #b1111001101011011000000101001010101000100100110111101)))
(assert (= r (fp #b0 #b01101011111 #b1111001101011011000000101001010101000100100110111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
