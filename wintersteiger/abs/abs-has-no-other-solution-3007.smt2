(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1943881152546949042658752659917809069156646728515625p-855 {- 875446243426297 -855 (-4.97163e-258)}
; -1.1943881152546949042658752659917809069156646728515625p-855 | == 1.1943881152546949042658752659917809069156646728515625p-855
; [HW: 1.1943881152546949042658752659917809069156646728515625p-855] 

; mpf : + 875446243426297 -855
; mpfd: + 875446243426297 -855 (4.97163e-258) class: Pos. norm. non-zero
; hwf : + 875446243426297 -855 (4.97163e-258) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010101000 #b0011000111000011011010110110010110111111111111111001)))
(assert (= r (fp #b0 #b00010101000 #b0011000111000011011010110110010110111111111111111001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
