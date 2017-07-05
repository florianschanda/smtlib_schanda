(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.624893287920395668066930738859809935092926025390625p758 {- 2814269178624618 758 (-2.46355e+228)}
; Y = 1.9663443716675119699033302822499535977840423583984375p712 {+ 4352028152153383 712 (4.23659e+214)}
; -1.624893287920395668066930738859809935092926025390625p758 = 1.9663443716675119699033302822499535977840423583984375p712 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011110101 #b1001111111111001000000011010101100011011101001101010)))
(assert (= y (fp #b0 #b11011000111 #b1111011101100010010110000100000011111100010100100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
