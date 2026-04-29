(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1525011383615861859652795828878879547119140625p-703 {- 686804069898816 -703 (-2.73876e-212)}
; Y = 1.330286495711975991440567668178118765354156494140625p800 {+ 1487478139013962 800 (8.87037e+240)}
; -1.1525011383615861859652795828878879547119140625p-703 = 1.330286495711975991440567668178118765354156494140625p800 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000000 #b0010011100001010010100001000100111011101101001000000)))
(assert (= y (fp #b0 #b11100011111 #b0101010010001101101001111110000101100100101101001010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
