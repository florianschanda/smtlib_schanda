(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9000057718251930349850908896769396960735321044921875p-534 {+ 4053265658623235 -534 (3.3786e-161)}
; 1.9000057718251930349850908896769396960735321044921875p-534 S == 1.378406968868481019541150089935399591922760009765625p-267
; [HW: 1.378406968868481019541150089935399591922760009765625p-267] 

; mpf : + 1704193483990490 -267
; mpfd: + 1704193483990490 -267 (5.81258e-081) class: Pos. norm. non-zero
; hwf : + 1704193483990490 -267 (5.81258e-081) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111101001 #b1110011001100110110001110011110000110011010100000011)))
(assert (= r (fp #b0 #b01011110100 #b0110000011011111010001110111001111011110010111011010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
