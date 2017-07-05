(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.481341740008925711435949779115617275238037109375p-331 {+ 2167770480942064 -331 (3.38631e-100)}
; 1.481341740008925711435949779115617275238037109375p-331 S == 1.7212447472738590104057720964192412793636322021484375p-166
; [HW: 1.7212447472738590104057720964192412793636322021484375p-166] 

; mpf : + 3248197575065479 -166
; mpfd: + 3248197575065479 -166 (1.84019e-050) class: Pos. norm. non-zero
; hwf : + 3248197575065479 -166 (1.84019e-050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010110100 #b0111101100111001001101100101011110001001101111110000)))
(assert (= r (fp #b0 #b01101011001 #b1011100010100011011111101110100111110011111110000111)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
