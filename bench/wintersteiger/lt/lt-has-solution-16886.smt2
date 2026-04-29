(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.609107879665710783001486561261117458343505859375p255 {- 2743178019890928 255 (-9.3161e+076)}
; Y = 1.9601924642597783332576000248081982135772705078125p182 {+ 4324322424244296 182 (1.20159e+055)}
; -1.609107879665710783001486561261117458343505859375p255 < 1.9601924642597783332576000248081982135772705078125p182 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011111110 #b1001101111101110011111100111011011100110011011110000)))
(assert (= y (fp #b0 #b10010110101 #b1111010111001111001011000101111111011100100001001000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
