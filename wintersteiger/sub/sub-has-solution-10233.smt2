(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5040439324801748721682770337793044745922088623046875p-961 {+ 2270012066496075 -961 (7.71675e-290)}
; Y = +zero {+ 0 -1023 (0)}
; 1.5040439324801748721682770337793044745922088623046875p-961 - +zero == 1.5040439324801748721682770337793044745922088623046875p-961
; [HW: 1.5040439324801748721682770337793044745922088623046875p-961] 

; mpf : + 2270012066496075 -961
; mpfd: + 2270012066496075 -961 (7.71675e-290) class: Pos. norm. non-zero
; hwf : + 2270012066496075 -961 (7.71675e-290) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000111110 #b1000000100001001000001011110110110111111111001001011)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b00000111110 #b1000000100001001000001011110110110111111111001001011)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
