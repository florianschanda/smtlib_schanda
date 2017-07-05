(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.075703534617240553217243359540589153766632080078125p2 {- 340938410292834 2 (-4.30281)}
; Y = -1.958370278007709242018563600140623748302459716796875p824 {- 4316116026918478 824 (-2.19084e+248)}
; -1.075703534617240553217243359540589153766632080078125p2 = -1.958370278007709242018563600140623748302459716796875p824 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000001 #b0001001101100001010011101000110101011111011001100010)))
(assert (= y (fp #b1 #b11100110111 #b1111010101010111110000010010100110000000011001001110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
