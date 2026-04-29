(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6762228855618668266203030725591816008090972900390625p-153 {+ 3045437135435825 -153 (1.46806e-046)}
; Y = -1.77393743269507719872990492149256169795989990234375p881 {- 3485504333493628 881 (-2.85999e+265)}
; 1.6762228855618668266203030725591816008090972900390625p-153 > -1.77393743269507719872990492149256169795989990234375p881 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100110 #b1010110100011100111100010110101001001011100000110001)))
(assert (= y (fp #b1 #b11101110000 #b1100011000100000110000110111101010010011010101111100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
