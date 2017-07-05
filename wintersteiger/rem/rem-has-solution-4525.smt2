(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1669613773147482493897086897050030529499053955078125p744 {- 751927196659965 744 (-1.07987e+224)}
; Y = -1.9945147821217743544508493869216181337833404541015625p187 {- 4478896402178073 187 (-3.91243e+056)}
; -1.1669613773147482493897086897050030529499053955078125p744 % -1.9945147821217743544508493869216181337833404541015625p187 == -1.755334816182358537162144784815609455108642578125p187
; [HW: -1.755334816182358537162144784815609455108642578125p187] 

; mpf : - 3401725596698832 187
; mpfd: - 3401725596698832 187 (-3.44325e+056) class: Neg. norm. non-zero
; hwf : - 3401725596698832 187 (-3.44325e+056) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011100111 #b0010101010111101111110110001011101000011000011111101)))
(assert (= y (fp #b1 #b10010111010 #b1111111010011000100001010101000010011010000000011001)))
(assert (= r (fp #b0 #b10010110111 #xe9d72f9c8ba48)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
