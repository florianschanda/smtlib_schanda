(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8026004085951978783697313701850362122058868408203125p-1001 {+ 3614590901076741 -1001 (8.41151e-302)}
; Y = 1.3468862802784353771556880019488744437694549560546875p97 {+ 1562236922601899 97 (2.13423e+029)}
; 1.8026004085951978783697313701850362122058868408203125p-1001 > 1.3468862802784353771556880019488744437694549560546875p97 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010110 #b1100110101110111001110000110101010101100001100000101)))
(assert (= y (fp #b0 #b10001100000 #b0101100011001101100010100000110100111010000110101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
