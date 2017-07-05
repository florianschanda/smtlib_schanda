(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7191806742144521980009130857069976627826690673828125p281 {+ 3238901816404269 281 (6.6796e+084)}
; Y = -1.52158334040262044339897329336963593959808349609375p948 {- 2349002537479900 948 (-3.62019e+285)}
; 1.7191806742144521980009130857069976627826690673828125p281 = -1.52158334040262044339897329336963593959808349609375p948 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100011000 #b1011100000011100001110011000001110101010100100101101)))
(assert (= y (fp #b1 #b11110110011 #b1000010110000110011111000101110100101010111011011100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
