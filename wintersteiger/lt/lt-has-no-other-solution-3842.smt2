(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7296520605727920827376919987727887928485870361328125p-803 {+ 3286060748105741 -803 (3.24244e-242)}
; Y = -1.291664841201941360537830405519343912601470947265625p809 {- 1313541670154138 809 (-4.40977e+243)}
; 1.7296520605727920827376919987727887928485870361328125p-803 < -1.291664841201941360537830405519343912601470947265625p809 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011100 #b1011101011001010011110100011100110011110100000001101)))
(assert (= y (fp #b1 #b11100101000 #b0100101010101010100011000000101001011010111110011010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
