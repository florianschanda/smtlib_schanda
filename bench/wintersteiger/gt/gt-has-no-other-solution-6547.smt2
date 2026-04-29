(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.493027025375094130055231289588846266269683837890625p-243 {- 2220396327762858 -243 (-1.05628e-073)}
; Y = 1.8309796933772555238562063095741905272006988525390625p347 {+ 3742399837446257 347 (5.24919e+104)}
; -1.493027025375094130055231289588846266269683837890625p-243 > 1.8309796933772555238562063095741905272006988525390625p347 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100001100 #b0111111000110111000001001110011000000111101110101010)))
(assert (= y (fp #b0 #b10101011010 #b1101010010111011000101011100111010110010000001110001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
