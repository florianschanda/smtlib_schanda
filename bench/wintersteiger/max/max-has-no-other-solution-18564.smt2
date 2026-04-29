(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.789633686429878967061313232989050447940826416015625p840 {+ 3556193975964794 840 (1.31208e+253)}
; Y = +zero {+ 0 -1023 (0)}
; 1.789633686429878967061313232989050447940826416015625p840 M +zero == 1.789633686429878967061313232989050447940826416015625p840
; [HW: 1.789633686429878967061313232989050447940826416015625p840] 

; mpf : + 3556193975964794 840
; mpfd: + 3556193975964794 840 (1.31208e+253) class: Pos. norm. non-zero
; hwf : + 3556193975964794 840 (1.31208e+253) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101000111 #b1100101000100101011011101110101100001001010001111010)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b11101000111 #b1100101000100101011011101110101100001001010001111010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
