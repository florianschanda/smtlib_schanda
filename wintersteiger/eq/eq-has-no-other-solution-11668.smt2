(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.31925633584862911362733939313329756259918212890625p822 {- 1437802715163556 822 (-3.68965e+247)}
; Y = -1.161491834791406940752267473726533353328704833984375p-956 {- 727294566989958 -956 (-1.90695e-288)}
; -1.31925633584862911362733939313329756259918212890625p822 = -1.161491834791406940752267473726533353328704833984375p-956 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100110101 #b0101000110111010110010001000000110000010101110100100)))
(assert (= y (fp #b1 #b00001000011 #b0010100101010111100001110110010100000000000010000110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
