(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.602567807460068660674323837156407535076141357421875p-328 {- 2713724153142622 -328 (-2.93074e-099)}
; Y = 1.9243153340354062219574871051008813083171844482421875p17 {+ 4162746193934691 17 (252224)}
; -1.602567807460068660674323837156407535076141357421875p-328 > 1.9243153340354062219574871051008813083171844482421875p17 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010110111 #b1001101001000001111000100100001010101001110101011110)))
(assert (= y (fp #b0 #b10000010000 #b1110110010011111111011100000001011011111100101100011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
