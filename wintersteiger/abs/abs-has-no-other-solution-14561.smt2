(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.32561353685926253120896944892592728137969970703125p730 {- 1466433003266164 730 (-7.4871e+219)}
; -1.32561353685926253120896944892592728137969970703125p730 | == 1.32561353685926253120896944892592728137969970703125p730
; [HW: 1.32561353685926253120896944892592728137969970703125p730] 

; mpf : + 1466433003266164 730
; mpfd: + 1466433003266164 730 (7.4871e+219) class: Pos. norm. non-zero
; hwf : + 1466433003266164 730 (7.4871e+219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011011001 #b0101001101011011011010001010001111110010000001110100)))
(assert (= r (fp #b0 #b11011011001 #b0101001101011011011010001010001111110010000001110100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
