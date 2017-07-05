(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.41262111187982331017565229558385908603668212890625p728 {- 1858280285707172 728 (-1.99463e+219)}
; Y = -1.4704143750136229318314917691168375313282012939453125p690 {- 2118558004021077 690 (-7.5533e+207)}
; -1.41262111187982331017565229558385908603668212890625p728 < -1.4704143750136229318314917691168375313282012939453125p690 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010111 #b0110100110100001100010011000010100101001101110100100)))
(assert (= y (fp #b1 #b11010110001 #b0111100001101101000100111001010001000000011101010101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
