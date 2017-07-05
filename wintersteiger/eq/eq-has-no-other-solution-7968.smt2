(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9587838892748228314388825310743413865566253662109375p462 {+ 4317978766466927 462 (2.33262e+139)}
; Y = 1.6027317181103308829648312894278205931186676025390625p-598 {+ 2714462341086065 -598 (1.54498e-180)}
; 1.9587838892748228314388825310743413865566253662109375p462 = 1.6027317181103308829648312894278205931186676025390625p-598 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111001101 #b1111010101110010110111000110100001011101111101101111)))
(assert (= y (fp #b0 #b00110101001 #b1001101001001100101000000011100110001011101101110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
