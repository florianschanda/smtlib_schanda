(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.338253401860120650468388703302480280399322509765625p-969 {+ 1523357894574042 -969 (2.68209e-292)}
; 1.338253401860120650468388703302480280399322509765625p-969 S == 1.6360033018671573668001428814022801816463470458984375p-485
; [HW: 1.6360033018671573668001428814022801816463470458984375p-485] 

; mpf : + 2864304233295335 -485
; mpfd: + 2864304233295335 -485 (1.63771e-146) class: Pos. norm. non-zero
; hwf : + 2864304233295335 -485 (1.63771e-146) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000110110 #b0101011010010111110001100110001010111111111111011010)))
(assert (= r (fp #b0 #b01000011010 #b1010001011010001000111001100010110101010110111100111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
