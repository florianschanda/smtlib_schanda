(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.382140886542569280237557904911227524280548095703125p-779 {- 1721009554236146 -779 (-4.34696e-235)}
; -1.382140886542569280237557904911227524280548095703125p-779 | == 1.382140886542569280237557904911227524280548095703125p-779
; [HW: 1.382140886542569280237557904911227524280548095703125p-779] 

; mpf : + 1721009554236146 -779
; mpfd: + 1721009554236146 -779 (4.34696e-235) class: Pos. norm. non-zero
; hwf : + 1721009554236146 -779 (4.34696e-235) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011110100 #b0110000111010011111111000011001000101010001011110010)))
(assert (= r (fp #b0 #b00011110100 #b0110000111010011111111000011001000101010001011110010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
