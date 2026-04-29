(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.80090896198976846420691799721680581569671630859375p-518 {- 3606973302774812 -518 (-2.09872e-156)}
; -1.80090896198976846420691799721680581569671630859375p-518 | == 1.80090896198976846420691799721680581569671630859375p-518
; [HW: 1.80090896198976846420691799721680581569671630859375p-518] 

; mpf : + 3606973302774812 -518
; mpfd: + 3606973302774812 -518 (2.09872e-156) class: Pos. norm. non-zero
; hwf : + 3606973302774812 -518 (2.09872e-156) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111001 #b1100110100001000010111101010011011010001110000011100)))
(assert (= r (fp #b0 #b00111111001 #b1100110100001000010111101010011011010001110000011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
