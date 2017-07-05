(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.335646755858007406203569189528934657573699951171875p-953 {+ 1511618604610238 -953 (1.75431e-287)}
; Y = 1.8075339697019023876833898611948825418949127197265625p665 {+ 3636809685038505 665 (2.76716e+200)}
; 1.335646755858007406203569189528934657573699951171875p-953 / 1.8075339697019023876833898611948825418949127197265625p665 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000110 #b0101010111101100111100100001111101101011001010111110)))
(assert (= y (fp #b0 #b11010011000 #b1100111010111010100010111101011001000111010110101001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
