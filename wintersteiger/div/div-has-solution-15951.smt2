(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.230742484153753313336210339912213385105133056640625p463 {- 1039171765653386 463 (-2.93127e+139)}
; Y = 1.7066818609416307683801505845622159540653228759765625p-943 {+ 3182612165606217 -943 (2.29544e-284)}
; -1.230742484153753313336210339912213385105133056640625p463 / 1.7066818609416307683801505845622159540653228759765625p-943 == -1.9999999999999997779553950749686919152736663818359375p1023
; [HW: -1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : - 4503599627370495 1023
; mpfd: - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero
; hwf : - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111001110 #b0011101100010001111100000111111100111100111110001010)))
(assert (= y (fp #b0 #b00001010000 #b1011010011101001000110100011100101101011101101001001)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
