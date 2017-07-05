(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6656204660784863502698271986446343362331390380859375p-661 {+ 2997688083001247 -661 (1.7408e-199)}
; Y = -1.320726983915034846717162508866749703884124755859375p899 {- 1444425925247414 899 (-5.58186e+270)}
; 1.6656204660784863502698271986446343362331390380859375p-661 % -1.320726983915034846717162508866749703884124755859375p899 == 1.6656204660784863502698271986446343362331390380859375p-661
; [HW: 1.6656204660784863502698271986446343362331390380859375p-661] 

; mpf : + 2997688083001247 -661
; mpfd: + 2997688083001247 -661 (1.7408e-199) class: Pos. norm. non-zero
; hwf : + 2997688083001247 -661 (1.7408e-199) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101101010 #b1010101001100110000110100101010101011010111110011111)))
(assert (= y (fp #b1 #b11110000010 #b0101001000011011001010011110001011011100000110110110)))
(assert (= r (fp #b0 #b00101101010 #xaa661a555af9f)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
