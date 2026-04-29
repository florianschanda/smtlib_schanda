(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7020541739859635921305880401632748544216156005859375 701 {+ 3161770916357087 701 (1.79061e+211)}
; 1.7020541739859635921305880401632748544216156005859375 701 I == 1.7020541739859635921305880401632748544216156005859375 701
; [HW: 1.7020541739859635921305880401632748544216156005859375 701] 

; mpf : + 3161770916357087 701
; mpfd: + 3161770916357087 701 (1.79061e+211) class: Pos. norm. non-zero
; hwf : + 3161770916357087 701 (1.79061e+211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010111100 #b1011001110111001110100101000010101001010001111011111)))
(assert (= r (fp #b0 #b11010111100 #b1011001110111001110100101000010101001010001111011111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
