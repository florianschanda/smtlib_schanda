(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.53398841642149097452829664689488708972930908203125p585 {+ 2404870033215988 585 (1.94254e+176)}
; Y = -1.324795736170568449807660726946778595447540283203125p-977 {- 1462749956389298 -977 (-1.03715e-294)}
; 1.53398841642149097452829664689488708972930908203125p585 < -1.324795736170568449807660726946778595447540283203125p-977 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001001000 #b1000100010110011011101110000000011111001000111110100)))
(assert (= y (fp #b1 #b00000101110 #b0101001100100101110100000011100010111011100110110010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
