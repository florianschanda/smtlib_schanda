(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.090284765841400993480192482820712029933929443359375p341 {+ 406606437800566 341 (4.88392e+102)}
; Y = 1.3793740123133237940322715076035819947719573974609375p188 {+ 1708548660488335 188 (5.41154e+056)}
; 1.090284765841400993480192482820712029933929443359375p341 < 1.3793740123133237940322715076035819947719573974609375p188 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010100 #b0001011100011100111001110000010010011101101001110110)))
(assert (= y (fp #b0 #b10010111011 #b0110000100011110101001111011111111010110100010001111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
