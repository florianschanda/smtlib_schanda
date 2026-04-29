(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0051531029480511580942447835695929825305938720703125 890 {+ 23207512516645 890 (8.29714e+267)}
; 1.0051531029480511580942447835695929825305938720703125 890 I == 1.0051531029480511580942447835695929825305938720703125 890
; [HW: 1.0051531029480511580942447835695929825305938720703125 890] 

; mpf : + 23207512516645 890
; mpfd: + 23207512516645 890 (8.29714e+267) class: Pos. norm. non-zero
; hwf : + 23207512516645 890 (8.29714e+267) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111001 #b0000000101010001101101101011100010100010100000100101)))
(assert (= r (fp #b0 #b11101111001 #b0000000101010001101101101011100010100010100000100101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
