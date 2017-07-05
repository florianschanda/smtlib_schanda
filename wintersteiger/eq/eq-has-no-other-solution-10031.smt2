(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3364497747567229968268520678975619375705718994140625p990 {- 1515235080223265 990 (-1.39845e+298)}
; Y = -1.592103799756070525717177588376216590404510498046875p115 {- 2666598451946094 115 (-6.61334e+034)}
; -1.3364497747567229968268520678975619375705718994140625p990 = -1.592103799756070525717177588376216590404510498046875p115 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111011101 #b0101011000100001100100101000101101010011101000100001)))
(assert (= y (fp #b1 #b10001110010 #b1001011110010100000111010101011111001010001001101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
