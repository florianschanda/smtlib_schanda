(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.653623579611048999282729710103012621402740478515625p-287 {+ 2943658909576890 -287 (6.6501e-087)}
; 1.653623579611048999282729710103012621402740478515625p-287 S == 1.8185838334325141740777098675607703626155853271484375p-144
; [HW: 1.8185838334325141740777098675607703626155853271484375p-144] 

; mpf : + 3686573847218183 -144
; mpfd: + 3686573847218183 -144 (8.15481e-044) class: Pos. norm. non-zero
; hwf : + 3686573847218183 -144 (8.15481e-044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011100000 #b1010011101010011110111111111101001010010111010111010)))
(assert (= r (fp #b0 #b01101101111 #b1101000110001110101101011100100110100000100000000111)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
