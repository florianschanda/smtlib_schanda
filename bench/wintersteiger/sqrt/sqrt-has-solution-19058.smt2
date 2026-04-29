(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.812690796019305938813204193138517439365386962890625p1007 {+ 3660033966119978 1007 (2.48616e+303)}
; 1.812690796019305938813204193138517439365386962890625p1007 S == 1.904043484807690145288461280870251357555389404296875p503
; [HW: 1.904043484807690145288461280870251357555389404296875p503] 

; mpf : + 4071449901306638 503
; mpfd: + 4071449901306638 503 (4.98614e+151) class: Pos. norm. non-zero
; hwf : + 4071449901306638 503 (4.98614e+151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101110 #b1101000000001100100000010000011010101001110000101010)))
(assert (= r (fp #b0 #b10111110110 #b1110011101101111011001001101000101101001001100001110)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
