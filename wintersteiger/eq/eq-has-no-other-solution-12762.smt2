(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.95235555277868666479434978100471198558807373046875p-190 {- 4289028112618316 -190 (-1.24411e-057)}
; Y = +zero {+ 0 -1023 (0)}
; -1.95235555277868666479434978100471198558807373046875p-190 = +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101000001 #b1111001111001101100100101101000101011001001101001100)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
