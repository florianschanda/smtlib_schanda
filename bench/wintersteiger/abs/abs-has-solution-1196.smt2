(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6514231730796546937511948272003792226314544677734375p748 {- 2933749159542039 748 (-2.44509e+225)}
; -1.6514231730796546937511948272003792226314544677734375p748 | == 1.6514231730796546937511948272003792226314544677734375p748
; [HW: 1.6514231730796546937511948272003792226314544677734375p748] 

; mpf : + 2933749159542039 748
; mpfd: + 2933749159542039 748 (2.44509e+225) class: Pos. norm. non-zero
; hwf : + 2933749159542039 748 (2.44509e+225) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101011 #b1010011011000011101010110100100000111011110100010111)))
(assert (= r (fp #b0 #b11011101011 #b1010011011000011101010110100100000111011110100010111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
