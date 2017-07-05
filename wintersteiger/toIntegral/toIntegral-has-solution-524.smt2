(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8081165609232006108442192271468229591846466064453125 397 {+ 3639433442645653 397 (5.83626e+119)}
; 1.8081165609232006108442192271468229591846466064453125 397 I == 1.8081165609232006108442192271468229591846466064453125 397
; [HW: 1.8081165609232006108442192271468229591846466064453125 397] 

; mpf : + 3639433442645653 397
; mpfd: + 3639433442645653 397 (5.83626e+119) class: Pos. norm. non-zero
; hwf : + 3639433442645653 397 (5.83626e+119) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110001100 #b1100111011100000101110100001100010000101011010010101)))
(assert (= r (fp #b0 #b10110001100 #b1100111011100000101110100001100010000101011010010101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
