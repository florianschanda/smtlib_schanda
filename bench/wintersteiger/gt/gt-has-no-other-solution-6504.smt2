(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.033231300797492036025460038217715919017791748046875p971 {- 149660473888622 971 (-2.06216e+292)}
; Y = -1.0575422566414205416407412485568784177303314208984375p568 {- 259147285568359 568 (-1.02173e+171)}
; -1.033231300797492036025460038217715919017791748046875p971 > -1.0575422566414205416407412485568784177303314208984375p568 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111001010 #b0000100010000001110110001011011000100000111101101110)))
(assert (= y (fp #b1 #b11000110111 #b0000111010111011000101101101111001101001101101100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
