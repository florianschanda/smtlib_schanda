(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.602146734548204332071463795728050172328948974609375p-866 {- 2711827809333654 -866 (-3.25631e-261)}
; Y = 1.2005699264802860426470942911691963672637939453125p-878 {+ 903286646158344 -878 (5.95732e-265)}
; -1.602146734548204332071463795728050172328948974609375p-866 > 1.2005699264802860426470942911691963672637939453125p-878 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010011101 #b1001101000100110010010011101010001000111000110010110)))
(assert (= y (fp #b0 #b00010010001 #b0011001101011000100011001111101011001011010000001000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
