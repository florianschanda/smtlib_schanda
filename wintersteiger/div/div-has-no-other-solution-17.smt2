(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.83545408193079762071420191205106675624847412109375p931 {+ 3762550692068700 931 (3.33173e+280)}
; Y = -1.027420314173363546927930656238459050655364990234375p-775 {- 123490116693542 -775 (-5.17013e-234)}
; 1.83545408193079762071420191205106675624847412109375p931 / -1.027420314173363546927930656238459050655364990234375p-775 == -1.9999999999999997779553950749686919152736663818359375p1023
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
(assert (= x (fp #b0 #b11110100010 #b1101010111100000010100011001011100110011110101011100)))
(assert (= y (fp #b1 #b00011111000 #b0000011100000101000001001000100010011110111000100110)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
