(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.33573751954734465385854491614736616611480712890625p-1001 {+ 1512027367927716 -1001 (6.23298e-302)}
; Y = -1.293228818658500589577897699200548231601715087890625p207 {- 1320585198444714 207 (-2.66002e+062)}
; 1.33573751954734465385854491614736616611480712890625p-1001 > -1.293228818658500589577897699200548231601715087890625p207 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010110 #b0101010111110010111001001110001001111110111110100100)))
(assert (= y (fp #b1 #b10011001110 #b0100101100010001000010110011101001100010000010101010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
