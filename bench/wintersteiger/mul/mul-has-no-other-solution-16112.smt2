(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5032700473887097292191583619569428265094757080078125p-337 {- 2266526797886525 -337 (-5.36943e-102)}
; Y = -1.805702091044130153107971636927686631679534912109375p-781 {- 3628559636997974 -781 (-1.41977e-235)}
; -1.5032700473887097292191583619569428265094757080078125p-337 * -1.805702091044130153107971636927686631679534912109375p-781 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010101110 #b1000000011010110010011100100101010010111010000111101)))
(assert (= y (fp #b1 #b00011110010 #b1100111001000010011111100000001101011010011101010110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
