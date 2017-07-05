(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.75066076330245490311199318966828286647796630859375p-719 {- 3380675533890588 -719 (-6.34797e-217)}
; Y = 1.0949680793764098307718768410268239676952362060546875p-158 {+ 427698206891691 -158 (2.99683e-048)}
; -1.75066076330245490311199318966828286647796630859375p-719 > 1.0949680793764098307718768410268239676952362060546875p-158 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100110000 #b1100000000101011010011011100010011000110010000011100)))
(assert (= y (fp #b0 #b01101100001 #b0001100001001111110100111111101100010101111010101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
