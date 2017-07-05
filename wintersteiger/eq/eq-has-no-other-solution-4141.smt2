(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8797097662209505397612474553170613944530487060546875p814 {- 3961860575346859 814 (-2.05356e+245)}
; Y = 1.6305964189890225224388586866552941501140594482421875p651 {+ 2839953797580131 651 (1.52361e+196)}
; -1.8797097662209505397612474553170613944530487060546875p814 = 1.6305964189890225224388586866552941501140594482421875p651 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100101101 #b1110000100110100101010001100001111100100000010101011)))
(assert (= y (fp #b0 #b11010001010 #b1010000101101110110001000101010010001000010101100011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
