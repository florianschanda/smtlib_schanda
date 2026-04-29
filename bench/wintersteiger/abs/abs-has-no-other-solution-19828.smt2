(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2516178698237869770792940471437759697437286376953125p291 {+ 1133186144778165 291 (4.97967e+087)}
; 1.2516178698237869770792940471437759697437286376953125p291 | == 1.2516178698237869770792940471437759697437286376953125p291
; [HW: 1.2516178698237869770792940471437759697437286376953125p291] 

; mpf : + 1133186144778165 291
; mpfd: + 1133186144778165 291 (4.97967e+087) class: Pos. norm. non-zero
; hwf : + 1133186144778165 291 (4.97967e+087) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100100010 #b0100000001101010000001110101100111111011011110110101)))
(assert (= r (fp #b0 #b10100100010 #b0100000001101010000001110101100111111011011110110101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
