(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.78280599416344642804688191972672939300537109375p715 {+ 3525444783617888 715 (3.07292e+215)}
; Y = -1.2888905284366813930319040082395076751708984375p-618 {- 1301047276218304 -618 (-1.18489e-186)}
; 1.78280599416344642804688191972672939300537109375p715 > -1.2888905284366813930319040082395076751708984375p-618 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011001010 #b1100100001100101111110010100000000001011011101100000)))
(assert (= y (fp #b1 #b00110010101 #b0100100111110100101110101100101111000010011111000000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
