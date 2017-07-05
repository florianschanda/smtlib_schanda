(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7498266641432167478598103116382844746112823486328125p-642 {+ 3376919085227853 -642 (9.58822e-194)}
; Y = 1.663175633157674582207619096152484416961669921875p-802 {+ 2986677534370096 -802 (6.23565e-242)}
; 1.7498266641432167478598103116382844746112823486328125p-642 * 1.663175633157674582207619096152484416961669921875p-802 == +zero
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
(assert (= x (fp #b0 #b00101111101 #b1011111111110100101000111110100000101001111101001101)))
(assert (= y (fp #b0 #b00011011101 #b1010100111000101111000001101011111101010100100110000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
