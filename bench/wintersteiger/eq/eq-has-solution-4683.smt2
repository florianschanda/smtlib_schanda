(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.843144810711988323959076296887360513210296630859375p-557 {+ 3797186655341878 -557 (3.90708e-168)}
; Y = -1.98593822695730093386146108969114720821380615234375p-351 {- 4440271031535228 -351 (-4.3295e-106)}
; 1.843144810711988323959076296887360513210296630859375p-557 = -1.98593822695730093386146108969114720821380615234375p-351 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010010 #b1101011111011000010101101001101111001100110100110110)))
(assert (= y (fp #b1 #b01010100000 #b1111110001100110011100101001100010101000011001111100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
