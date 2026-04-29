(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7750458772103581139845118741504848003387451171875p143 {- 3490496323799608 143 (-1.97924e+043)}
; Y = -1.6368615668466761636778983302065171301364898681640625p231 {- 2868169515137281 231 (-5.6486e+069)}
; -1.7750458772103581139845118741504848003387451171875p143 < -1.6368615668466761636778983302065171301364898681640625p231 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001110 #b1100011001101001011010000001011110000100101000111000)))
(assert (= y (fp #b1 #b10011100110 #b1010001100001001010111000001000110101111100100000001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
