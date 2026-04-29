(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.905306555760951869871178132598288357257843017578125p176 {- 4077138267181090 176 (-1.82492e+053)}
; Y = 1.1435554950835162824063218067749403417110443115234375p981 {+ 646516474165111 981 (2.33713e+295)}
; -1.905306555760951869871178132598288357257843017578125p176 > 1.1435554950835162824063218067749403417110443115234375p981 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010101111 #b1110011111000010001010111010000111011001000000100010)))
(assert (= y (fp #b0 #b11111010100 #b0010010011000000000011011000110010001011011101110111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
