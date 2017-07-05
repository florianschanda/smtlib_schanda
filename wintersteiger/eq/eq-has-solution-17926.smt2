(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.721223494720591329354419940500520169734954833984375p-912 {+ 3248101862074502 -912 (4.97143e-275)}
; Y = -1.0698573683508765252980765581014566123485565185546875p-180 {- 314609618074091 -180 (-6.98115e-055)}
; 1.721223494720591329354419940500520169734954833984375p-912 = -1.0698573683508765252980765581014566123485565185546875p-180 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001101111 #b1011100010100010000110100101101011101110100010000110)))
(assert (= y (fp #b1 #b01101001011 #b0001000111100010001011000010100001110011100111101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
