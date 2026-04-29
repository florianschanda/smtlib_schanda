(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.465156836904435433410753830685280263423919677734375p414 {- 2094880157351654 414 (-6.19872e+124)}
; Y = 1.356444992289927764517187824822030961513519287109375p-1000 {+ 1605285534454998 -1000 (1.26592e-301)}
; -1.465156836904435433410753830685280263423919677734375p414 = 1.356444992289927764517187824822030961513519287109375p-1000 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110011101 #b0111011100010100100001001011101000000011111011100110)))
(assert (= y (fp #b0 #b00000010111 #b0101101100111111111110101010000010110101010011010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
