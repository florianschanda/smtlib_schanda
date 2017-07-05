(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.277532917714338633885517992894165217876434326171875 -165 {+ 1249897144801342 -165 (2.73164e-050)}
; 1.277532917714338633885517992894165217876434326171875 -165 I == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101011010 #b0100011100001100011001011011010100100101100000111110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
