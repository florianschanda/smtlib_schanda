(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.84325442189422883387805995880626142024993896484375p543 {+ 3797680300221372 543 (5.30729e+163)}
; 1.84325442189422883387805995880626142024993896484375p543 | == 1.84325442189422883387805995880626142024993896484375p543
; [HW: 1.84325442189422883387805995880626142024993896484375p543] 

; mpf : + 3797680300221372 543
; mpfd: + 3797680300221372 543 (5.30729e+163) class: Pos. norm. non-zero
; hwf : + 3797680300221372 543 (5.30729e+163) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011110 #b1101011111011111100001011001010000111110001110111100)))
(assert (= r (fp #b0 #b11000011110 #b1101011111011111100001011001010000111110001110111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
