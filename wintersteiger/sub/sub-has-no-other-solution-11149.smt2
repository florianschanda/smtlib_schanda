(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0211585986562636829688699435791932046413421630859375p303 {+ 95289857024031 303 (1.66411e+091)}
; Y = -1.908265491948803127542078073020093142986297607421875p-832 {- 4090464131094110 -832 (-6.66319e-251)}
; 1.0211585986562636829688699435791932046413421630859375p303 - -1.908265491948803127542078073020093142986297607421875p-832 == 1.0211585986562636829688699435791932046413421630859375p303
; [HW: 1.0211585986562636829688699435791932046413421630859375p303] 

; mpf : + 95289857024031 303
; mpfd: + 95289857024031 303 (1.66411e+091) class: Pos. norm. non-zero
; hwf : + 95289857024031 303 (1.66411e+091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100101110 #b0000010101101010101001100110000101000010000000011111)))
(assert (= y (fp #b1 #b00010111111 #b1110100010000100000101100101100000000001011001011110)))
(assert (= r (fp #b0 #b10100101110 #b0000010101101010101001100110000101000010000000011111)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
