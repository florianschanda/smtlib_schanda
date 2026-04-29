(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5895516666046154430347314701066352427005767822265625p888 {- 2655104666036201 888 (-3.28028e+267)}
; Y = 1.7174904358775215929000523829017765820026397705078125p-918 {+ 3231289659659901 -918 (7.75101e-277)}
; -1.5895516666046154430347314701066352427005767822265625p888 < 1.7174904358775215929000523829017765820026397705078125p-918 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101110111 #b1001011011101100110110111010011101011110011111101001)))
(assert (= y (fp #b0 #b00001101001 #b1011011110101101011101000000010101001001011001111101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
