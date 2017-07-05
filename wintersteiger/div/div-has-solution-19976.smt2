(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5434519156894832558890584550681523978710174560546875p-1020 {- 2447489844992939 -1020 (-1.37372e-307)}
; Y = -1.381334594384326930338602323899976909160614013671875p347 {- 1717378337172734 347 (-3.96011e+104)}
; -1.5434519156894832558890584550681523978710174560546875p-1020 / -1.381334594384326930338602323899976909160614013671875p347 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000011 #b1000101100011111101010100010110011010101101110101011)))
(assert (= y (fp #b1 #b10101011010 #b0110000110011111001001001101101110110110110011111110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
