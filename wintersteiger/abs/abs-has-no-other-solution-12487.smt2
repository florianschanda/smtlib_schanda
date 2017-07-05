(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7363272115413768137415218006935901939868927001953125p-132 {- 3316122955520501 -132 (-3.18913e-040)}
; -1.7363272115413768137415218006935901939868927001953125p-132 | == 1.7363272115413768137415218006935901939868927001953125p-132
; [HW: 1.7363272115413768137415218006935901939868927001953125p-132] 

; mpf : + 3316122955520501 -132
; mpfd: + 3316122955520501 -132 (3.18913e-040) class: Pos. norm. non-zero
; hwf : + 3316122955520501 -132 (3.18913e-040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101111011 #b1011110001111111111100001010110010111001100111110101)))
(assert (= r (fp #b0 #b01101111011 #b1011110001111111111100001010110010111001100111110101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
