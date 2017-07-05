(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3491352366354367742218300918466411530971527099609375 295 {+ 1572365321613263 295 (8.58824e+088)}
; 1.3491352366354367742218300918466411530971527099609375 295 I == 1.3491352366354367742218300918466411530971527099609375 295
; [HW: 1.3491352366354367742218300918466411530971527099609375 295] 

; mpf : + 1572365321613263 295
; mpfd: + 1572365321613263 295 (8.58824e+088) class: Pos. norm. non-zero
; hwf : + 1572365321613263 295 (8.58824e+088) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100100110 #b0101100101100000111011010100011100111010111111001111)))
(assert (= r (fp #b0 #b10100100110 #b0101100101100000111011010100011100111010111111001111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
