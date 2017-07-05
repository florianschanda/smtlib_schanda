(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6285572630247877601306072392617352306842803955078125p-162 {- 2830770255539453 -162 (-2.78576e-049)}
; -1.6285572630247877601306072392617352306842803955078125p-162 | == 1.6285572630247877601306072392617352306842803955078125p-162
; [HW: 1.6285572630247877601306072392617352306842803955078125p-162] 

; mpf : + 2830770255539453 -162
; mpfd: + 2830770255539453 -162 (2.78576e-049) class: Pos. norm. non-zero
; hwf : + 2830770255539453 -162 (2.78576e-049) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101011101 #b1010000011101001001000001111100001011010110011111101)))
(assert (= r (fp #b0 #b01101011101 #b1010000011101001001000001111100001011010110011111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
