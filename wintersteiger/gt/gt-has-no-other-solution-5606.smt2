(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4050125664807737724260050526936538517475128173828125p802 {+ 1824014443483181 802 (3.74746e+241)}
; Y = -1.5831829584365977314774909245898015797138214111328125p862 {- 2626422554303885 862 (-4.86841e+259)}
; 1.4050125664807737724260050526936538517475128173828125p802 > -1.5831829584365977314774909245898015797138214111328125p862 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100100001 #b0110011110101110111001110100111110000001000000101101)))
(assert (= y (fp #b1 #b11101011101 #b1001010101001011011110100111011000010001110110001101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
