(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.550204006236977960497824824415147304534912109375p-580 {+ 2477898557466608 -580 (3.91734e-175)}
; Y = -1.7138556268662343828879102147766388952732086181640625p974 {- 3214919935151105 974 (-2.73647e+293)}
; 1.550204006236977960497824824415147304534912109375p-580 < -1.7138556268662343828879102147766388952732086181640625p974 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110111011 #b1000110011011010001010110111010011101010011111110000)))
(assert (= y (fp #b1 #b11111001101 #b1011011010111111001111100000101101110100110000000001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
