(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.19326677502259048679889019695110619068145751953125 642 {+ 870396175974836 642 (2.17768e+193)}
; 1.19326677502259048679889019695110619068145751953125 642 I == 1.19326677502259048679889019695110619068145751953125 642
; [HW: 1.19326677502259048679889019695110619068145751953125 642] 

; mpf : + 870396175974836 642
; mpfd: + 870396175974836 642 (2.17768e+193) class: Pos. norm. non-zero
; hwf : + 870396175974836 642 (2.17768e+193) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000001 #b0011000101111001111011100110111000100000000110110100)))
(assert (= r (fp #b0 #b11010000001 #b0011000101111001111011100110111000100000000110110100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
