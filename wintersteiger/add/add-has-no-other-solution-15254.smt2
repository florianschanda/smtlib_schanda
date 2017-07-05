(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1120515701737421210282263928093016147613525390625p292 {- 504635409680744 292 (-8.84879e+087)}
; Y = 1.959829108078583459473520633764564990997314453125p881 {+ 4322686013482064 881 (3.15969e+265)}
; -1.1120515701737421210282263928093016147613525390625p292 + 1.959829108078583459473520633764564990997314453125p881 == 1.959829108078583459473520633764564990997314453125p881
; [HW: 1.959829108078583459473520633764564990997314453125p881] 

; mpf : + 4322686013482064 881
; mpfd: + 4322686013482064 881 (3.15969e+265) class: Pos. norm. non-zero
; hwf : + 4322686013482064 881 (3.15969e+265) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100011 #b0001110010101111011010010110010101011100100101101000)))
(assert (= y (fp #b0 #b11101110000 #b1111010110110111010111000100010011110010010001010000)))
(assert (= r (fp #b0 #b11101110000 #b1111010110110111010111000100010011110010010001010000)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
