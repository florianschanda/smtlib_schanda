(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6688599217701478583109064857126213610172271728515625p678 {- 3012277294447097 678 (-2.09294e+204)}
; Y = -1.224571825635880628624363453127443790435791015625p811 {- 1011381590251664 811 (-1.67229e+244)}
; -1.6688599217701478583109064857126213610172271728515625p678 = -1.224571825635880628624363453127443790435791015625p811 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010100101 #b1010101100111010011001110110000110011011100111111001)))
(assert (= y (fp #b1 #b11100101010 #b0011100101111101100010100000011010110101100010010000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
