(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9312530386297244167081998966750688850879669189453125p-178 {- 4193990837760469 -178 (-5.04081e-054)}
; Y = 1.8536390910960507394378282697289250791072845458984375p670 {+ 3844448692569063 670 (9.08076e+201)}
; -1.9312530386297244167081998966750688850879669189453125p-178 < 1.8536390910960507394378282697289250791072845458984375p670 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101001101 #b1110111001100110100110010110000100110111000111010101)))
(assert (= y (fp #b0 #b11010011101 #b1101101010001000000101110110101011011000001111100111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
