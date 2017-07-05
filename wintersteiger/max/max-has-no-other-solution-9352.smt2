(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1612479063497962439299726611352525651454925537109375p-808 {- 726196010951215 -808 (-6.80281e-244)}
; Y = 1.4327379988371193864082897562184371054172515869140625p-450 {+ 1948878690311905 -450 (4.92798e-136)}
; -1.1612479063497962439299726611352525651454925537109375p-808 M 1.4327379988371193864082897562184371054172515869140625p-450 == 1.4327379988371193864082897562184371054172515869140625p-450
; [HW: 1.4327379988371193864082897562184371054172515869140625p-450] 

; mpf : + 1948878690311905 -450
; mpfd: + 1948878690311905 -450 (4.92798e-136) class: Pos. norm. non-zero
; hwf : + 1948878690311905 -450 (4.92798e-136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011010111 #b0010100101000111100010101111010001010010001000101111)))
(assert (= y (fp #b0 #b01000111101 #b0110111011000111111010101110000010111101111011100001)))
(assert (= r (fp #b0 #b01000111101 #b0110111011000111111010101110000010111101111011100001)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
