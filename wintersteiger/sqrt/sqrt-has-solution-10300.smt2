(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5532016291367181093363569743814878165721893310546875p308 {+ 2491398650840875 308 (8.09965e+092)}
; 1.5532016291367181093363569743814878165721893310546875p308 S == 1.246275101707772225978487767861224710941314697265625p154
; [HW: 1.246275101707772225978487767861224710941314697265625p154] 

; mpf : + 1109124456281754 154
; mpfd: + 1109124456281754 154 (2.84599e+046) class: Pos. norm. non-zero
; hwf : + 1109124456281754 154 (2.84599e+046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100110011 #b1000110110011110100111110011100100111100011100101011)))
(assert (= r (fp #b0 #b10010011001 #b0011111100001011111000101001001110100111011010011010)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
