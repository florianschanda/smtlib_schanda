(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.370246207322973308606606224202550947666168212890625p-753 {+ 1667440681335082 -753 (2.89209e-227)}
; 1.370246207322973308606606224202550947666168212890625p-753 | == 1.370246207322973308606606224202550947666168212890625p-753
; [HW: 1.370246207322973308606606224202550947666168212890625p-753] 

; mpf : + 1667440681335082 -753
; mpfd: + 1667440681335082 -753 (2.89209e-227) class: Pos. norm. non-zero
; hwf : + 1667440681335082 -753 (2.89209e-227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100001110 #b0101111011001000011101001001011111101011100100101010)))
(assert (= r (fp #b0 #b00100001110 #b0101111011001000011101001001011111101011100100101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
