(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8296935820107200765249899632181040942668914794921875p-149 {- 3736607706775171 -149 (-2.56395e-045)}
; Y = -1.6156156777062518070664509650669060647487640380859375p309 {- 2772486536721311 309 (-1.68503e+093)}
; -1.8296935820107200765249899632181040942668914794921875p-149 < -1.6156156777062518070664509650669060647487640380859375p309 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101010 #b1101010001100110110011000111000001101111111010000011)))
(assert (= y (fp #b1 #b10100110100 #b1001110110011000111111010011001010100111001110011111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
