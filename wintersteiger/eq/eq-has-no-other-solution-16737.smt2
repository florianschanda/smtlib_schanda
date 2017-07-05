(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6721217625025526221094196444028057157993316650390625p170 {+ 3026967319154097 170 (2.50246e+051)}
; Y = 1.8575320123043252973360495161614380776882171630859375p-859 {+ 3861980851072031 -859 (4.83248e-259)}
; 1.6721217625025526221094196444028057157993316650390625p170 = 1.8575320123043252973360495161614380776882171630859375p-859 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010101001 #b1010110000010000001010111111110011100000110110110001)))
(assert (= y (fp #b0 #b00010100100 #b1101101110000111001101111100110000011110110000011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
