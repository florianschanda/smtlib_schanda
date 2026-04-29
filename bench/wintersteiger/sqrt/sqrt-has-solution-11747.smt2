(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6294020430430666834809017018415033817291259765625p65 {+ 2834574806514984 65 (6.01143e+019)}
; 1.6294020430430666834809017018415033817291259765625p65 S == 1.8052158004200309360243181799887679517269134521484375p32
; [HW: 1.8052158004200309360243181799887679517269134521484375p32] 

; mpf : + 3626369578724487 32
; mpfd: + 3626369578724487 32 (7.75334e+009) class: Pos. norm. non-zero
; hwf : + 3626369578724487 32 (7.75334e+009) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001000000 #b1010000100100000011111100000011011100111110100101000)))
(assert (= r (fp #b0 #b10000011111 #b1100111000100010100111110110100100000110110010000111)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
