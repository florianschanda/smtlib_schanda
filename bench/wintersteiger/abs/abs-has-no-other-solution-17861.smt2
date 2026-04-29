(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.41243150922560811721950813080184161663055419921875p-730 {+ 1857426391264300 -730 (2.50075e-220)}
; 1.41243150922560811721950813080184161663055419921875p-730 | == 1.41243150922560811721950813080184161663055419921875p-730
; [HW: 1.41243150922560811721950813080184161663055419921875p-730] 

; mpf : + 1857426391264300 -730
; mpfd: + 1857426391264300 -730 (2.50075e-220) class: Pos. norm. non-zero
; hwf : + 1857426391264300 -730 (2.50075e-220) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100100101 #b0110100110010101000111001000001111110110110000101100)))
(assert (= r (fp #b0 #b00100100101 #b0110100110010101000111001000001111110110110000101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
