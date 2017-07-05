(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0341738649892404655616928721428848803043365478515625p716 {+ 153905405631353 716 (3.56509e+215)}
; 1.0341738649892404655616928721428848803043365478515625p716 S == 1.0169433932079210425314386156969703733921051025390625p358
; [HW: 1.0169433932079210425314386156969703733921051025390625p358] 

; mpf : + 76306259337585 358
; mpfd: + 76306259337585 358 (5.97084e+107) class: Pos. norm. non-zero
; hwf : + 76306259337585 358 (5.97084e+107) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001011 #b0000100010111111100111100101000010000001101101111001)))
(assert (= r (fp #b0 #b10101100101 #b0000010001010110011001101111011110110110000101110001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
