(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8406545743677573678809267221367917954921722412109375p-745 {- 3785971627869935 -745 (-9.94547e-225)}
; Y = -1.41901056823783822125051301554776728153228759765625p-189 {- 1887055838980228 -189 (-1.80849e-057)}
; -1.8406545743677573678809267221367917954921722412109375p-745 > -1.41901056823783822125051301554776728153228759765625p-189 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100010110 #b1101011100110101001000110110000000100100011011101111)))
(assert (= y (fp #b1 #b01101000010 #b0110101101000100010001101100111101000010100010000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
