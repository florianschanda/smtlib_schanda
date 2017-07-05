(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4197591373006221981967200918006710708141326904296875p137 {- 1890427094332443 137 (-2.47357e+041)}
; Y = 1.4684358783534789960611988135497085750102996826171875p-316 {+ 2109647647199699 -316 (1.09996e-095)}
; -1.4197591373006221981967200918006710708141326904296875p137 > 1.4684358783534789960611988135497085750102996826171875p-316 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001000 #b0110101101110101010101011011011011100111010000011011)))
(assert (= y (fp #b0 #b01011000011 #b0111011111101011011010011110100111001101000111010011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
