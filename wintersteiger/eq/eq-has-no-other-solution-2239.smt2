(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.347479502406202289677139560808427631855010986328125p709 {- 1564908557555458 709 (-3.62902e+213)}
; Y = 1.1787997883028322743115268167457543313503265380859375p-460 {+ 805242659974559 -460 (3.95952e-139)}
; -1.347479502406202289677139560808427631855010986328125p709 = 1.1787997883028322743115268167457543313503265380859375p-460 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000100 #b0101100011110100011010101010101011011101011100000010)))
(assert (= y (fp #b0 #b01000110011 #b0010110111000101110100101010101101001010110110011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
