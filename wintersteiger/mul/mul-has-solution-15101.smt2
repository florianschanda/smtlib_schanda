(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9444520642506564200857610558159649372100830078125p326 {+ 4253433964628552 326 (2.65813e+098)}
; Y = -1.2716925239151208870680420659482479095458984375p705 {- 1223594349463488 705 (-2.14057e+212)}
; 1.9444520642506564200857610558159649372100830078125p326 * -1.2716925239151208870680420659482479095458984375p705 == -1.9999999999999997779553950749686919152736663818359375p1023
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
(assert (= x (fp #b0 #b10101000101 #b1111000111000111100111000100100010011000101001001000)))
(assert (= y (fp #b1 #b11011000000 #b0100010110001101101001000010100011001000011111000000)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
