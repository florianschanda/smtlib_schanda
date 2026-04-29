(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.20858507365596867799695246503688395023345947265625p498 {+ 939383659992068 498 (9.89043e+149)}
; 1.20858507365596867799695246503688395023345947265625p498 | == 1.20858507365596867799695246503688395023345947265625p498
; [HW: 1.20858507365596867799695246503688395023345947265625p498] 

; mpf : + 939383659992068 498
; mpfd: + 939383659992068 498 (9.89043e+149) class: Pos. norm. non-zero
; hwf : + 939383659992068 498 (9.89043e+149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110001 #b0011010101100101110101001101010111001001010000000100)))
(assert (= r (fp #b0 #b10111110001 #b0011010101100101110101001101010111001001010000000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
