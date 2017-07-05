(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8477885083173770652820167015306651592254638671875p99 {- 3818100010147128 99 (-1.17118e+030)}
; Y = -1.6799823411505823145262183970771729946136474609375p-63 {- 3062368218224280 -63 (-1.82144e-019)}
; -1.8477885083173770652820167015306651592254638671875p99 = -1.6799823411505823145262183970771729946136474609375p-63 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001100010 #b1101100100001000101010101110110100100101110100111000)))
(assert (= y (fp #b1 #b01111000000 #b1010111000010011010100101001110100011001011010011000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
