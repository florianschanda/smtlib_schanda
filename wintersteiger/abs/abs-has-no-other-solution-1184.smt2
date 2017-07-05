(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.473498827858505055843352238298393785953521728515625p-886 {- 2132449144703930 -886 (-2.8561e-267)}
; -1.473498827858505055843352238298393785953521728515625p-886 | == 1.473498827858505055843352238298393785953521728515625p-886
; [HW: 1.473498827858505055843352238298393785953521728515625p-886] 

; mpf : + 2132449144703930 -886
; mpfd: + 2132449144703930 -886 (2.8561e-267) class: Pos. norm. non-zero
; hwf : + 2132449144703930 -886 (2.8561e-267) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010001001 #b0111100100110111001110000001110001011000101110111010)))
(assert (= r (fp #b0 #b00010001001 #b0111100100110111001110000001110001011000101110111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
