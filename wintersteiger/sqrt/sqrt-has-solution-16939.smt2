(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.286042201173097421218471936299465596675872802734375p217 {+ 1288219550615398 217 (2.70872e+065)}
; 1.286042201173097421218471936299465596675872802734375p217 S == 1.6037719296540249303006930858828127384185791015625p108
; [HW: 1.6037719296540249303006930858828127384185791015625p108] 

; mpf : + 2719147037406632 108
; mpfd: + 2719147037406632 108 (5.20454e+032) class: Pos. norm. non-zero
; hwf : + 2719147037406632 108 (5.20454e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011000 #b0100100100111010000011111100101101010000011101100110)))
(assert (= r (fp #b0 #b10001101011 #b1001101010010000110011000001010000011011010110101000)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
