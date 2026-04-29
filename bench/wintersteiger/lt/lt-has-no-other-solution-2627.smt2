(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.78742366821186493552886531688272953033447265625p-103 {+ 3546240938741664 -103 (1.76254e-031)}
; Y = 1.8775711886563046792986142463632859289646148681640625p110 {+ 3952229278223617 110 (2.43723e+033)}
; 1.78742366821186493552886531688272953033447265625p-103 < 1.8775711886563046792986142463632859289646148681640625p110 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110011000 #b1100100110010100100110001111011100010000111110100000)))
(assert (= y (fp #b0 #b10001101101 #b1110000010101000100000010110001100110000110100000001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
