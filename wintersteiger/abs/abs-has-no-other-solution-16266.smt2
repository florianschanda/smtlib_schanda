(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1155841543236011403905649785883724689483642578125p-450 {- 520544754341704 -450 (-3.83711e-136)}
; -1.1155841543236011403905649785883724689483642578125p-450 | == 1.1155841543236011403905649785883724689483642578125p-450
; [HW: 1.1155841543236011403905649785883724689483642578125p-450] 

; mpf : + 520544754341704 -450
; mpfd: + 520544754341704 -450 (3.83711e-136) class: Pos. norm. non-zero
; hwf : + 520544754341704 -450 (3.83711e-136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000111101 #b0001110110010110111011000101001011000001011101001000)))
(assert (= r (fp #b0 #b01000111101 #b0001110110010110111011000101001011000001011101001000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
