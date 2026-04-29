(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.56720612915883261706539997248910367488861083984375p53 {- 2554469311921980 53 (-1.41161e+016)}
; Y = -1.2096206934007762701099863988929428160190582275390625p-731 {- 944047676688881 -731 (-1.07083e-220)}
; -1.56720612915883261706539997248910367488861083984375p53 > -1.2096206934007762701099863988929428160190582275390625p-731 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000110100 #b1001000100110100011010111011111011010011111100111100)))
(assert (= y (fp #b1 #b00100100100 #b0011010110101001101100111010011010111000100111110001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
