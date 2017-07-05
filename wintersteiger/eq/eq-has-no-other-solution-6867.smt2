(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.23514690103315327718291882774792611598968505859375p552 {+ 1059007495870236 552 (1.82086e+166)}
; Y = 1.1300644451613985896898384453379549086093902587890625p107 {+ 585758186763025 107 (1.83363e+032)}
; 1.23514690103315327718291882774792611598968505859375p552 = 1.1300644451613985896898384453379549086093902587890625p107 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000100111 #b0011110000110010100101100101100110110001011100011100)))
(assert (= y (fp #b0 #b10001101010 #b0010000101001011111001110100101001010111001100010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
