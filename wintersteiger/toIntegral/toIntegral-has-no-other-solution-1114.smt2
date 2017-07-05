(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5325565037305406423939757587504573166370391845703125 344 {+ 2398421271754597 344 (5.49206e+103)}
; 1.5325565037305406423939757587504573166370391845703125 344 I == 1.5325565037305406423939757587504573166370391845703125 344
; [HW: 1.5325565037305406423939757587504573166370391845703125 344] 

; mpf : + 2398421271754597 344
; mpfd: + 2398421271754597 344 (5.49206e+103) class: Pos. norm. non-zero
; hwf : + 2398421271754597 344 (5.49206e+103) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010111 #b1000100001010101100111110111111011001011011101100101)))
(assert (= r (fp #b0 #b10101010111 #b1000100001010101100111110111111011001011011101100101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
