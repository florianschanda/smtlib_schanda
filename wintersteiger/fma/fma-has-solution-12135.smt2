(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.04147739046010823216192875406704843044281005859375p-42 {- 186797560220444 -42 (-2.36805e-013)}
; Y = 1.8764374714952369860299086212762631475925445556640625p764 {+ 3947123470039489 764 (1.82075e+230)}
; Z = 1.5417269706303127208002479164861142635345458984375p-197 {+ 2439721383067224 -197 (7.67535e-060)}
; -1.04147739046010823216192875406704843044281005859375p-42 x 1.8764374714952369860299086212762631475925445556640625p764 1.5417269706303127208002479164861142635345458984375p-197 == -1.954267201174423096432519741938449442386627197265625p722
; [HW: -1.954267201174423096432519741938449442386627197265625p722] 

; mpf : - 4297637411621018 722
; mpfd: - 4297637411621018 722 (-4.31162e+217) class: Neg. norm. non-zero
; hwf : - 4297637411621018 722 (-4.31162e+217) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111010101 #b0000101010011110010000110010001110001100101100011100)))
(assert (= y (fp #b0 #b11011111011 #b1110000001011110001101001100010100001111100111000001)))
(assert (= z (fp #b0 #b01100111010 #b1000101010101110100111100110011000110111111001011000)))
(assert (= r (fp #b1 #b11011010001 #b1111010001001010110110101111010010110000100010011010)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
