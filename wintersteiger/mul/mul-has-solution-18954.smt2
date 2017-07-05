(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0280012547572912051663251986610703170299530029296875p533 {- 126106440490843 533 (-2.89056e+160)}
; Y = 1.902864528450823211613851526635698974132537841796875p914 {+ 4066140353897166 914 (2.63526e+275)}
; -1.0280012547572912051663251986610703170299530029296875p533 * 1.902864528450823211613851526635698974132537841796875p914 == -1.9999999999999997779553950749686919152736663818359375p1023
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
(assert (= x (fp #b1 #b11000010100 #b0000011100101011000101110001100101101101111101011011)))
(assert (= y (fp #b0 #b11110010001 #b1110011100100010001000010011011001101010001011001110)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
