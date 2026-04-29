(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.449111613435913881176020368002355098724365234375p595 {- 2022618894917744 595 (-1.8791e+179)}
; Y = 1.935223468586522610479505601688288152217864990234375p109 {+ 4211872064634406 109 (1.25603e+033)}
; -1.449111613435913881176020368002355098724365234375p595 = 1.935223468586522610479505601688288152217864990234375p109 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010010 #b0111001011111000111110101000101111110110000001110000)))
(assert (= y (fp #b0 #b10001101100 #b1110111101101010110011100010010000000111111000100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
