(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4536751532937290942726349385338835418224334716796875p-248 {+ 2043171251320891 -248 (3.21387e-075)}
; Y = -1.9344878098594711079982744195149280130863189697265625p505 {- 4208558952265385 505 (-2.02635e+152)}
; 1.4536751532937290942726349385338835418224334716796875p-248 + -1.9344878098594711079982744195149280130863189697265625p505 == -1.9344878098594708859536694944836199283599853515625p505
; [HW: -1.9344878098594708859536694944836199283599853515625p505] 

; mpf : - 4208558952265384 505
; mpfd: - 4208558952265384 505 (-2.02635e+152) class: Neg. norm. non-zero
; hwf : - 4208558952265384 505 (-2.02635e+152) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100000111 #b0111010000100100000011100000101001100111100000111011)))
(assert (= y (fp #b1 #b10111111000 #b1110111100111010100101111101010111011011011010101001)))
(assert (= r (fp #b1 #b10111111000 #b1110111100111010100101111101010111011011011010101000)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
