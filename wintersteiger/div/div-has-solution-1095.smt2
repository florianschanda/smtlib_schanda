(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3429254716030623040268210388603620231151580810546875p-800 {- 1544399026127403 -800 (-2.01398e-241)}
; Y = 1.784754775081139666070839666645042598247528076171875p-278 {+ 3534221312632638 -278 (3.67485e-084)}
; -1.3429254716030623040268210388603620231151580810546875p-800 / 1.784754775081139666070839666645042598247528076171875p-278 == -1.5048851420408826395913592932629399001598358154296875p-523
; [HW: -1.5048851420408826395913592932629399001598358154296875p-523] 

; mpf : - 2273800537560219 -523
; mpfd: - 2273800537560219 -523 (-5.48044e-158) class: Neg. norm. non-zero
; hwf : - 2273800537560219 -523 (-5.48044e-158) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011011111 #b0101011111001001111101101011010110000000001000101011)))
(assert (= y (fp #b0 #b01011101001 #b1100100011100101101100000101111001011010011100111110)))
(assert (= r (fp #b1 #b00111110100 #b1000000101000000001001110001010101001101010010011011)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
