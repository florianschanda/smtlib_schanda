(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0563129138894915559632181611959822475910186767578125p-244 {+ 253610818008861 -244 (3.73657e-074)}
; Y = -1.2139064303972315617130561804515309631824493408203125p-1002 {- 963348920229125 -1002 (-2.83224e-302)}
; 1.0563129138894915559632181611959822475910186767578125p-244 > -1.2139064303972315617130561804515309631824493408203125p-1002 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100001011 #b0000111001101010100001011110101101111111011100011101)))
(assert (= y (fp #b1 #b00000010101 #b0011011011000010100100100110001011110101110100000101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
