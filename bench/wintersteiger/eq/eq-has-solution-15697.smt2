(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0602213412315120155682279801112599670886993408203125p618 {+ 271212809929989 618 (1.15328e+186)}
; Y = 1.644465543989891642695511109195649623870849609375p779 {+ 2902414783766000 779 (5.22867e+234)}
; 1.0602213412315120155682279801112599670886993408203125p618 = 1.644465543989891642695511109195649623870849609375p779 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101001 #b0000111101101010101010100111001100011100010100000101)))
(assert (= y (fp #b0 #b11100001010 #b1010010011111011101100011010001011010101110111110000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
