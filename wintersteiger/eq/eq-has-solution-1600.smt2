(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.26262610837207578384777661995030939579010009765625p453 {+ 1182762843802244 453 (2.93672e+136)}
; Y = -1.4761027340492514081660146985086612403392791748046875p-54 {- 2144176095654283 -54 (-8.19402e-017)}
; 1.26262610837207578384777661995030939579010009765625p453 = -1.4761027340492514081660146985086612403392791748046875p-54 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000100 #b0100001100111011011101101111001010001000101010000100)))
(assert (= y (fp #b1 #b01111001001 #b0111100111100001110111100110100001000111000110001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
