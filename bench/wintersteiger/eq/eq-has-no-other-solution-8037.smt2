(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9362417859674823095161855235346592962741851806640625p863 {+ 4216458158411841 863 (1.19082e+260)}
; Y = -1.29843959337706404966183981741778552532196044921875p462 {- 1344052441525548 462 (-1.54625e+139)}
; 1.9362417859674823095161855235346592962741851806640625p863 = -1.29843959337706404966183981741778552532196044921875p462 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101011110 #b1110111110101101100010101010101111100001000001000001)))
(assert (= y (fp #b1 #b10111001101 #b0100110001100110100010011000010101100010110100101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
