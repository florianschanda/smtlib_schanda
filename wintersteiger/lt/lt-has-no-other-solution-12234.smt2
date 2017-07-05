(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.103376682015666521152752466150559484958648681640625p26 {- 465567186604554 26 (-7.40464e+007)}
; Y = 1.52645582992915418429902274510823190212249755859375p903 {+ 2370946279495964 903 (1.03222e+272)}
; -1.103376682015666521152752466150559484958648681640625p26 < 1.52645582992915418429902274510823190212249755859375p903 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000011001 #b0001101001110110111001001110110001101101001000001010)))
(assert (= y (fp #b0 #b11110000110 #b1000011011000101110011110010110001010101100100011100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
