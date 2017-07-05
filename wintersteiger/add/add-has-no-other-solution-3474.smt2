(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.467970980773534162011628723121248185634613037109375p815 {- 2107553934631894 815 (-3.20748e+245)}
; Y = 1.3951747196763932823415643724729306995868682861328125p-967 {+ 1779708720280845 -967 (1.11847e-291)}
; -1.467970980773534162011628723121248185634613037109375p815 + 1.3951747196763932823415643724729306995868682861328125p-967 == -1.4679709807735339399670237980899401009082794189453125p815
; [HW: -1.4679709807735339399670237980899401009082794189453125p815] 

; mpf : - 2107553934631893 815
; mpfd: - 2107553934631893 815 (-3.20748e+245) class: Neg. norm. non-zero
; hwf : - 2107553934631893 815 (-3.20748e+245) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100101110 #b0111011111001100111100100011100111100110001111010110)))
(assert (= y (fp #b0 #b00000111000 #b0110010100101010001010111010000100110111010100001101)))
(assert (= r (fp #b1 #b11100101110 #b0111011111001100111100100011100111100110001111010101)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
