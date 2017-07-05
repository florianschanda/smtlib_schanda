(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.890865875721731814707027297117747366428375244140625p638 {+ 4012103225937482 638 (2.15674e+192)}
; Y = -1.3065195476489019910104616428725421428680419921875p-1007 {- 1380441320573368 -1007 (-9.52599e-304)}
; 1.890865875721731814707027297117747366428375244140625p638 / -1.3065195476489019910104616428725421428680419921875p-1007 == -1.9999999999999997779553950749686919152736663818359375p1023
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
(assert (= x (fp #b0 #b11001111101 #b1110010000001111110010010011100101011000111001001010)))
(assert (= y (fp #b1 #b00000010000 #b0100111001111000000100001010100010111100100110111000)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
