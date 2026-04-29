(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.619960669728131907874058015295304358005523681640625p-429 {- 2792054641171978 -429 (-1.16852e-129)}
; -1.619960669728131907874058015295304358005523681640625p-429 | == 1.619960669728131907874058015295304358005523681640625p-429
; [HW: 1.619960669728131907874058015295304358005523681640625p-429] 

; mpf : + 2792054641171978 -429
; mpfd: + 2792054641171978 -429 (1.16852e-129) class: Pos. norm. non-zero
; hwf : + 2792054641171978 -429 (1.16852e-129) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001010010 #b1001111010110101101111100001000101001001111000001010)))
(assert (= r (fp #b0 #b01001010010 #b1001111010110101101111100001000101001001111000001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
