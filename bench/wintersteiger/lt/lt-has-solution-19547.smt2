(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.800856922102939794427811648347415030002593994140625p-527 {+ 3606738935959882 -527 (4.09894e-159)}
; Y = 1.095519680169996679097721425932832062244415283203125p-934 {+ 430182396020146 -934 (7.54404e-282)}
; 1.800856922102939794427811648347415030002593994140625p-527 < 1.095519680169996679097721425932832062244415283203125p-934 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110000 #b1100110100000100111101011001000100110101000101001010)))
(assert (= y (fp #b0 #b00001011001 #b0001100001110011111110100100111001110100010110110010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
