(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.07277030369025094813650866854004561901092529296875p24 {- 327728312583052 24 (-1.79981e+007)}
; Y = -1.31437239397932703610649696202017366886138916015625p-236 {- 1415807396380868 -236 (-1.19025e-071)}
; -1.07277030369025094813650866854004561901092529296875p24 < -1.31437239397932703610649696202017366886138916015625p-236 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000010111 #b0001001010100001000100110001101001111000001110001100)))
(assert (= y (fp #b1 #b01100010011 #b0101000001111010101101011000111011101000000011000100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
