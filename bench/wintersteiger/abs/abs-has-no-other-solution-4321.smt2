(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.450474765870315874138896106160245835781097412109375p-572 {+ 2028757987713366 -572 (9.38324e-173)}
; 1.450474765870315874138896106160245835781097412109375p-572 | == 1.450474765870315874138896106160245835781097412109375p-572
; [HW: 1.450474765870315874138896106160245835781097412109375p-572] 

; mpf : + 2028757987713366 -572
; mpfd: + 2028757987713366 -572 (9.38324e-173) class: Pos. norm. non-zero
; hwf : + 2028757987713366 -572 (9.38324e-173) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000011 #b0111001101010010010100000111001100010110000101010110)))
(assert (= r (fp #b0 #b00111000011 #b0111001101010010010100000111001100010110000101010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
