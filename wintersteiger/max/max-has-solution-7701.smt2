(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.125600304321110467498101570527069270610809326171875p-432 {+ 565653483738174 -432 (1.01491e-130)}
; Y = 1.878427618230416040745467398664914071559906005859375p268 {+ 3956086294134454 268 (8.90909e+080)}
; 1.125600304321110467498101570527069270610809326171875p-432 M 1.878427618230416040745467398664914071559906005859375p268 == 1.878427618230416040745467398664914071559906005859375p268
; [HW: 1.878427618230416040745467398664914071559906005859375p268] 

; mpf : + 3956086294134454 268
; mpfd: + 3956086294134454 268 (8.90909e+080) class: Pos. norm. non-zero
; hwf : + 3956086294134454 268 (8.90909e+080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001001111 #b0010000000100111010101110110111101101101010000111110)))
(assert (= y (fp #b0 #b10100001011 #b1110000011100000101000011110010000110011111010110110)))
(assert (= r (fp #b0 #b10100001011 #b1110000011100000101000011110010000110011111010110110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
