(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.050871347107733555503727984614670276641845703125p730 {- 229104179878224 730 (-5.93535e+219)}
; -1.050871347107733555503727984614670276641845703125p730 | == 1.050871347107733555503727984614670276641845703125p730
; [HW: 1.050871347107733555503727984614670276641845703125p730] 

; mpf : + 229104179878224 730
; mpfd: + 229104179878224 730 (5.93535e+219) class: Pos. norm. non-zero
; hwf : + 229104179878224 730 (5.93535e+219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011011001 #b0000110100000101111001111001010000100001100101010000)))
(assert (= r (fp #b0 #b11011011001 #b0000110100000101111001111001010000100001100101010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
