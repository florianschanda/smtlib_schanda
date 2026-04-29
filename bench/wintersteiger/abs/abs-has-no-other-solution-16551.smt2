(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.333971804514830328258767622173763811588287353515625p571 {+ 1504075294365242 571 (1.03104e+172)}
; 1.333971804514830328258767622173763811588287353515625p571 | == 1.333971804514830328258767622173763811588287353515625p571
; [HW: 1.333971804514830328258767622173763811588287353515625p571] 

; mpf : + 1504075294365242 571
; mpfd: + 1504075294365242 571 (1.03104e+172) class: Pos. norm. non-zero
; hwf : + 1504075294365242 571 (1.03104e+172) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111010 #b0101010101111111001011010001101000101101011000111010)))
(assert (= r (fp #b0 #b11000111010 #b0101010101111111001011010001101000101101011000111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
