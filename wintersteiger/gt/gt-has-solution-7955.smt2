(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9609563943503400818002546657226048409938812255859375p936 {+ 4327762859515487 936 (1.13905e+282)}
; Y = -1.6790900440408182969775907622533850371837615966796875p-193 {- 3058349669293243 -193 (-1.33747e-058)}
; 1.9609563943503400818002546657226048409938812255859375p936 > -1.6790900440408182969775907622533850371837615966796875p-193 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110100111 #b1111011000000001001111001111111010011101111001011111)))
(assert (= y (fp #b1 #b01100111110 #b1010110111011000110110000101101000110001110010111011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
