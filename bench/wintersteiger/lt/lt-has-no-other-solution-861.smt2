(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9641101445411874859559020478627644479274749755859375p-635 {- 4341966087699807 -635 (-1.37759e-191)}
; Y = 1.002714939658874815364697496988810598850250244140625p-832 {+ 12227001236042 -832 (3.50123e-251)}
; -1.9641101445411874859559020478627644479274749755859375p-635 < 1.002714939658874815364697496988810598850250244140625p-832 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110000100 #b1111011011001111111011000010010010001011110101011111)))
(assert (= y (fp #b0 #b00010111111 #b0000000010110001111011010010000100001011101001001010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
