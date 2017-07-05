(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.212550016085638393548151725553907454013824462890625p590 {- 957240173240874 590 (-4.91357e+177)}
; Y = 1.6909271365917806217993302198010496795177459716796875p-357 {+ 3111659194894907 -357 (5.75992e-108)}
; -1.212550016085638393548151725553907454013824462890625p590 < 1.6909271365917806217993302198010496795177459716796875p-357 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001001101 #b0011011001101001101011011000011111011010001000101010)))
(assert (= y (fp #b0 #b01010011010 #b1011000011100000100110011100111110010100101000111011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
