(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5069032205534000912194869670202024281024932861328125p-836 {+ 2282889155197197 -836 (3.28858e-252)}
; Y = -1.8398289816933834917023204980068840086460113525390625p-769 {- 3782253489009265 -769 (-5.92531e-232)}
; 1.5069032205534000912194869670202024281024932861328125p-836 = -1.8398289816933834917023204980068840086460113525390625p-769 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010111011 #b1000000111000100011010001101001010000011100100001101)))
(assert (= y (fp #b1 #b00011111110 #b1101011011111111000010000011101010011011001001110001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
