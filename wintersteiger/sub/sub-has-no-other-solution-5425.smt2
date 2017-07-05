(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0306355230503834174982102922513149678707122802734375p-211 {+ 137970130194007 -211 (3.13167e-064)}
; Y = -1.011495490055512647131763515062630176544189453125p965 {- 51771084730448 965 (-3.15435e+290)}
; 1.0306355230503834174982102922513149678707122802734375p-211 - -1.011495490055512647131763515062630176544189453125p965 == 1.0114954900555128691763684400939382612705230712890625p965
; [HW: 1.0114954900555128691763684400939382612705230712890625p965] 

; mpf : + 51771084730449 965
; mpfd: + 51771084730449 965 (3.15435e+290) class: Pos. norm. non-zero
; hwf : + 51771084730449 965 (3.15435e+290) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100101100 #b0000011111010111101110101100100110011000111001010111)))
(assert (= y (fp #b1 #b11111000100 #b0000001011110001010111100101000111010111000001010000)))
(assert (= r (fp #b0 #b11111000100 #b0000001011110001010111100101000111010111000001010001)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
