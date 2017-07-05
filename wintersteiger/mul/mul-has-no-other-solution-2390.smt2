(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3486445050058846195639716825098730623722076416015625p36 {- 1570155262829273 36 (-9.26781e+010)}
; Y = 1.7521790928042826340771398463402874767780303955078125p-800 {+ 3387513482069245 -800 (2.62774e-241)}
; -1.3486445050058846195639716825098730623722076416015625p36 * 1.7521790928042826340771398463402874767780303955078125p-800 == -1.1815333526483458026490325210033915936946868896484375p-763
; [HW: -1.1815333526483458026490325210033915936946868896484375p-763] 

; mpf : - 817553539342407 -763
; mpfd: - 817553539342407 -763 (-2.43534e-230) class: Neg. norm. non-zero
; hwf : - 817553539342407 -763 (-2.43534e-230) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000100011 #b0101100101000000110001000010101011101110001011011001)))
(assert (= y (fp #b0 #b00011011111 #b1100000010001110110011110001110001010100010011111101)))
(assert (= r (fp #b1 #b00100000100 #b0010111001111000111110000100010011000010000001000111)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
