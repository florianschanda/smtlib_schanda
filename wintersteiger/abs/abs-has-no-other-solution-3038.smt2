(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4053201660728100730324285905226133763790130615234375p-143 {- 1825399748891255 -143 (-1.26033e-043)}
; -1.4053201660728100730324285905226133763790130615234375p-143 | == 1.4053201660728100730324285905226133763790130615234375p-143
; [HW: 1.4053201660728100730324285905226133763790130615234375p-143] 

; mpf : + 1825399748891255 -143
; mpfd: + 1825399748891255 -143 (1.26033e-043) class: Pos. norm. non-zero
; hwf : + 1825399748891255 -143 (1.26033e-043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101110000 #b0110011111000011000011111111100110110001001001110111)))
(assert (= r (fp #b0 #b01101110000 #b0110011111000011000011111111100110110001001001110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
