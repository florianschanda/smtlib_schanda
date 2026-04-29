(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.709713213374717266646030111587606370449066162109375p-62 {+ 3196264163294294 -62 (3.70735e-019)}
; Y = -1.821614760646806718824564086389727890491485595703125p-266 {- 3700223929891058 -266 (-1.53631e-080)}
; 1.709713213374717266646030111587606370449066162109375p-62 > -1.821614760646806718824564086389727890491485595703125p-266 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111000001 #b1011010110101111110000111110000011111011110001010110)))
(assert (= y (fp #b1 #b01011110101 #b1101001001010101010110000100111011100011100011110010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
