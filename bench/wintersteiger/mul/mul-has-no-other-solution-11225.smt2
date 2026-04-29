(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.70618208784984926040806385572068393230438232421875p-698 {- 3180361387696300 -698 (-1.29744e-210)}
; Y = -1.7196245949100246175333950304775498807430267333984375p-419 {- 3240901057483431 -419 (-1.27018e-126)}
; -1.70618208784984926040806385572068393230438232421875p-698 * -1.7196245949100246175333950304775498807430267333984375p-419 == +zero
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
(assert (= x (fp #b1 #b00101000101 #b1011010011001000010110010110110001010110000010101100)))
(assert (= y (fp #b1 #b01001011100 #b1011100000111001010100010100010010001001001010100111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
