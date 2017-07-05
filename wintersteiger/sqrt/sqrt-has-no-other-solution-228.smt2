(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4839975401086771267245012495550327003002166748046875p544 {+ 2179731141281675 544 (8.54576e+163)}
; 1.4839975401086771267245012495550327003002166748046875p544 S == 1.218194376981225790501639494323171675205230712890625p272
; [HW: 1.218194376981225790501639494323171675205230712890625p272] 

; mpf : + 982660114866986 272
; mpfd: + 982660114866986 272 (9.24433e+081) class: Pos. norm. non-zero
; hwf : + 982660114866986 272 (9.24433e+081) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011111 #b0111101111100111010000110100011000011100011110001011)))
(assert (= r (fp #b0 #b10100001111 #b0011011111011011100101100011000101001110001100101010)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
