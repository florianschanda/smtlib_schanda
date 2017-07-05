(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1070666544520906260373749319114722311496734619140625p-2 {+ 482185345094241 -2 (0.276767)}
; Y = 1.420530945028068980917623775894753634929656982421875p138 {+ 1893903007326174 138 (4.94983e+041)}
; 1.1070666544520906260373749319114722311496734619140625p-2 * 1.420530945028068980917623775894753634929656982421875p138 == 1.5726224408578908242617444557254202663898468017578125p136
; [HW: 1.5726224408578908242617444557254202663898468017578125p136] 

; mpf : + 2578862211271581 136
; mpfd: + 2578862211271581 136 (1.36995e+041) class: Pos. norm. non-zero
; hwf : + 2578862211271581 136 (1.36995e+041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111111101 #b0001101101101000101110000110001101011101001001100001)))
(assert (= y (fp #b0 #b10010001001 #b0110101110100111111010100111111111011001111111011110)))
(assert (= r (fp #b0 #b10010000111 #b1001001010010111011000100110000001110000101110011101)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
