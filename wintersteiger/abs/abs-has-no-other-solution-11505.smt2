(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4877910843988433331475107479491271078586578369140625p-426 {+ 2196815745933281 -426 (8.58546e-129)}
; 1.4877910843988433331475107479491271078586578369140625p-426 | == 1.4877910843988433331475107479491271078586578369140625p-426
; [HW: 1.4877910843988433331475107479491271078586578369140625p-426] 

; mpf : + 2196815745933281 -426
; mpfd: + 2196815745933281 -426 (8.58546e-129) class: Pos. norm. non-zero
; hwf : + 2196815745933281 -426 (8.58546e-129) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001010101 #b0111110011011111111000000110001011000101111111100001)))
(assert (= r (fp #b0 #b01001010101 #b0111110011011111111000000110001011000101111111100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
