(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3797555571474242608331906012608669698238372802734375p965 {+ 1710266985661015 965 (4.30277e+290)}
; Y = -1.07699116678944761815728270448744297027587890625p207 {- 346737390063776 207 (-2.21524e+062)}
; 1.3797555571474242608331906012608669698238372802734375p965 = -1.07699116678944761815728270448744297027587890625p207 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111000100 #b0110000100110111101010010000001001101100001001010111)))
(assert (= y (fp #b1 #b10011001110 #b0001001110110101101100010110111101110001000010100000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
