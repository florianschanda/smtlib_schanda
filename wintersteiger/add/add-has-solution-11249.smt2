(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.839891780059188963747374145896174013614654541015625p166 {+ 3782536307706106 166 (1.72096e+050)}
; Y = -1.5600811298846650743143982253968715667724609375p-120 {- 2522381167845824 -120 (-1.17367e-036)}
; 1.839891780059188963747374145896174013614654541015625p166 + -1.5600811298846650743143982253968715667724609375p-120 == 1.8398917800591887417027692208648659288883209228515625p166
; [HW: 1.8398917800591887417027692208648659288883209228515625p166] 

; mpf : + 3782536307706105 166
; mpfd: + 3782536307706105 166 (1.72096e+050) class: Pos. norm. non-zero
; hwf : + 3782536307706105 166 (1.72096e+050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010100101 #b1101011100000011001001011100111110001000100011111010)))
(assert (= y (fp #b1 #b01110000111 #b1000111101100001011110100001011111110110000111000000)))
(assert (= r (fp #b0 #b10010100101 #b1101011100000011001001011100111110001000100011111001)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
