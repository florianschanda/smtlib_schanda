(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.304954059807991395558701697154901921749114990234375p-552 {+ 1373390990116390 -552 (8.85192e-167)}
; Y = 1.5159032714520772611166421484085731208324432373046875p-870 {+ 2323421781070795 -870 (1.92564e-262)}
; 1.304954059807991395558701697154901921749114990234375p-552 > 1.5159032714520772611166421484085731208324432373046875p-870 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010111 #b0100111000010001011110000010000110101000011000100110)))
(assert (= y (fp #b0 #b00010011001 #b1000010000010010001111001001111011001001001111001011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
