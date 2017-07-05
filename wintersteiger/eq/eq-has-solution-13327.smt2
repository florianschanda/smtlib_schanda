(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.73555325392440185083842152380384504795074462890625p508 {- 3312637360285092 508 (-1.45437e+153)}
; Y = 1.18656930486681577718854896374978125095367431640625p-601 {+ 840233451876964 -601 (1.42977e-181)}
; -1.73555325392440185083842152380384504795074462890625p508 = 1.18656930486681577718854896374978125095367431640625p-601 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111011 #b1011110001001101001101111101001000010010010110100100)))
(assert (= y (fp #b0 #b00110100110 #b0010111111000011000000011000011011010111001001100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
