(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2633355466357782947994792266399599611759185791015625p-43 {+ 1185957869702297 -43 (1.43625e-013)}
; Y = 1.5257763231018355298829192179255187511444091796875p47 {+ 2367886052801656 47 (2.14734e+014)}
; 1.2633355466357782947994792266399599611759185791015625p-43 = 1.5257763231018355298829192179255187511444091796875p47 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010100 #b0100001101101001111101010101100010101100110010011001)))
(assert (= y (fp #b0 #b10000101110 #b1000011010011001010001101111000010111011110001111000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
