(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6479147733918353413429258580435998737812042236328125p796 {+ 2917948732015309 796 (6.8677e+239)}
; Y = -1.3594000198217413011292364899418316781520843505859375p-51 {- 1618593795346143 -51 (-6.03695e-016)}
; 1.6479147733918353413429258580435998737812042236328125p796 < -1.3594000198217413011292364899418316781520843505859375p-51 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011011 #b1010010111011101101111100001101001010000001011001101)))
(assert (= y (fp #b1 #b01111001100 #b0101110000000001101000111100001101010000111011011111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
