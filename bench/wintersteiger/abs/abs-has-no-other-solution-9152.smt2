(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7637303748349335563716522301547229290008544921875p-789 {- 3439535831518136 -789 (-5.41708e-238)}
; -1.7637303748349335563716522301547229290008544921875p-789 | == 1.7637303748349335563716522301547229290008544921875p-789
; [HW: 1.7637303748349335563716522301547229290008544921875p-789] 

; mpf : + 3439535831518136 -789
; mpfd: + 3439535831518136 -789 (5.41708e-238) class: Pos. norm. non-zero
; hwf : + 3439535831518136 -789 (5.41708e-238) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011101010 #b1100001110000011110101010111011011100000101110111000)))
(assert (= r (fp #b0 #b00011101010 #b1100001110000011110101010111011011100000101110111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
