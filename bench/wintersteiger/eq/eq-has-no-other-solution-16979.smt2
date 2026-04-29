(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.232253048174496878885975092998705804347991943359375p880 {- 1045974741214326 880 (-9.93336e+264)}
; Y = -1.0426612401867394464005656118388287723064422607421875p998 {- 192129145408163 998 (-2.79305e+300)}
; -1.232253048174496878885975092998705804347991943359375p880 = -1.0426612401867394464005656118388287723064422607421875p998 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101111 #b0011101101110100111011111000111001001110010001110110)))
(assert (= y (fp #b1 #b11111100101 #b0000101011101011110110001101011101101000101010100011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
