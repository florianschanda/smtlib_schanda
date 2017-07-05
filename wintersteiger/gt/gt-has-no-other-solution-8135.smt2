(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0038129607144348209857298570568673312664031982421875p270 {+ 17172048452707 270 (1.90437e+081)}
; Y = 1.5537107444670879008441488622338511049747467041015625p669 {+ 2493691502453017 669 (3.80572e+201)}
; 1.0038129607144348209857298570568673312664031982421875p270 > 1.5537107444670879008441488622338511049747467041015625p669 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100001101 #b0000000011111001111000101101110110010001110001100011)))
(assert (= y (fp #b0 #b11010011100 #b1000110110111111111111001100001011101110000100011001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
