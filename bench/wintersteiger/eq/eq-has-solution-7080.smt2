(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9922550698067571506300055261817760765552520751953125p829 {- 4468719562638197 829 (-7.132e+249)}
; Y = -1.778975107977751601850968654616735875606536865234375p510 {- 3508192006019494 510 (-5.96304e+153)}
; -1.9922550698067571506300055261817760765552520751953125p829 = -1.778975107977751601850968654616735875606536865234375p510 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111100 #b1111111000000100011011011010001000011100001101110101)))
(assert (= y (fp #b1 #b10111111101 #b1100011101101010111010011010010100101001100110100110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
