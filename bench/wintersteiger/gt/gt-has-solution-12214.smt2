(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.52756071711404661783717529033310711383819580078125p380 {- 2375922249010132 380 (-3.76181e+114)}
; Y = 1.1505062365139326896468219274538569152355194091796875p-134 {+ 677819830681083 -134 (5.28287e-041)}
; -1.52756071711404661783717529033310711383819580078125p380 > 1.1505062365139326896468219274538569152355194091796875p-134 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111011 #b1000011100001110001110000001101010101000101111010100)))
(assert (= y (fp #b0 #b01101111001 #b0010011010000111100100111010001110101011110111111011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
