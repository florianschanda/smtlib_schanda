(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.518841749236360616492902408936060965061187744140625p-489 {+ 2336655508525130 -489 (9.50265e-148)}
; Y = 1.427326496412986589490401456714607775211334228515625p756 {+ 1924507450011066 756 (5.41003e+227)}
; 1.518841749236360616492902408936060965061187744140625p-489 = 1.427326496412986589490401456714607775211334228515625p756 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000010110 #b1000010011010010110100000001100011000101000001001010)))
(assert (= y (fp #b0 #b11011110011 #b0110110101100101010001001110111011001110110110111010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
