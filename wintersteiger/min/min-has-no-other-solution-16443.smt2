(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.903635463826006013476899170200340449810028076171875p-17 {+ 4069612338165566 -17 (1.45236e-005)}
; Y = 1.4327649869776675206622940095257945358753204345703125p-753 {+ 1949000234091621 -753 (3.02404e-227)}
; 1.903635463826006013476899170200340449810028076171875p-17 m 1.4327649869776675206622940095257945358753204345703125p-753 == 1.4327649869776675206622940095257945358753204345703125p-753
; [HW: 1.4327649869776675206622940095257945358753204345703125p-753] 

; mpf : + 1949000234091621 -753
; mpfd: + 1949000234091621 -753 (3.02404e-227) class: Pos. norm. non-zero
; hwf : + 1949000234091621 -753 (3.02404e-227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111101110 #b1110011101010100101001110101110010100011011100111110)))
(assert (= y (fp #b0 #b00100001110 #b0110111011001001101011111010100111101100010001100101)))
(assert (= r (fp #b0 #b00100001110 #b0110111011001001101011111010100111101100010001100101)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
