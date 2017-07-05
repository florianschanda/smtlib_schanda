(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.721705659740254024114847197779454290866851806640625p-538 {+ 3250273340277386 -538 (1.91347e-162)}
; 1.721705659740254024114847197779454290866851806640625p-538 S == 1.3121378204061697747562220683903433382511138916015625p-269
; [HW: 1.3121378204061697747562220683903433382511138916015625p-269] 

; mpf : + 1405743771669465 -269
; mpfd: + 1405743771669465 -269 (1.38328e-081) class: Pos. norm. non-zero
; hwf : + 1405743771669465 -269 (1.38328e-081) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111100101 #b1011100011000001101100111011110111101100001010001010)))
(assert (= r (fp #b0 #b01011110010 #b0100111111101000010000111010001001111101001111011001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
