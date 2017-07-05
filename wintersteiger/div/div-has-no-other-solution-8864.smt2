(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8214749927633169246377065064734779298305511474609375p497 {- 3699594471303055 497 (-7.453e+149)}
; Y = 1.0744906941869716288096014977782033383846282958984375p-743 {+ 335476262583015 -743 (2.32229e-224)}
; -1.8214749927633169246377065064734779298305511474609375p497 / 1.0744906941869716288096014977782033383846282958984375p-743 == -1.9999999999999997779553950749686919152736663818359375p1023
; [HW: -1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : - 4503599627370495 1023
; mpfd: - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero
; hwf : - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111110000 #b1101001001001100001011110110010001100110011110001111)))
(assert (= y (fp #b0 #b00100011000 #b0001001100010001110100100111011101100011101011100111)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
