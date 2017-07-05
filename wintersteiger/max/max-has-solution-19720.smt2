(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.472505160545706015540190492174588143825531005859375p811 {+ 2127974064964278 811 (2.01087e+244)}
; Y = -1.37736210235113620825586622231639921665191650390625p550 {- 1699487823532324 550 (-5.07628e+165)}
; 1.472505160545706015540190492174588143825531005859375p811 M -1.37736210235113620825586622231639921665191650390625p550 == 1.472505160545706015540190492174588143825531005859375p811
; [HW: 1.472505160545706015540190492174588143825531005859375p811] 

; mpf : + 2127974064964278 811
; mpfd: + 2127974064964278 811 (2.01087e+244) class: Pos. norm. non-zero
; hwf : + 2127974064964278 811 (2.01087e+244) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100101010 #b0111100011110110000110010010001110111100001010110110)))
(assert (= y (fp #b1 #b11000100101 #b0110000010011010110011011000000001011001000100100100)))
(assert (= r (fp #b0 #b11100101010 #b0111100011110110000110010010001110111100001010110110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
