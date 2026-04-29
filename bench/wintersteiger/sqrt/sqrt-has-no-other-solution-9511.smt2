(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.980729085632281449846914256340824067592620849609375p280 {+ 4416811144604950 280 (3.8479e+084)}
; 1.980729085632281449846914256340824067592620849609375p280 S == 1.4073837734009446709393387209274806082248687744140625p140
; [HW: 1.4073837734009446709393387209274806082248687744140625p140] 

; mpf : + 1834693410085281 140
; mpfd: + 1834693410085281 140 (1.96161e+042) class: Pos. norm. non-zero
; hwf : + 1834693410085281 140 (1.96161e+042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010111 #b1111101100010001000011111011010100000110110100010110)))
(assert (= r (fp #b0 #b10010001011 #b0110100001001010010011011000111110101101100110100001)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
