(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6869865839041520150232145169866271317005157470703125p755 {+ 3093912523279269 755 (3.19712e+227)}
; 1.6869865839041520150232145169866271317005157470703125p755 S == 1.8368378175027604282121274081873707473278045654296875p377
; [HW: 1.8368378175027604282121274081873707473278045654296875p377] 

; mpf : + 3768782483074971 377
; mpfd: + 3768782483074971 377 (5.6543e+113) class: Pos. norm. non-zero
; hwf : + 3768782483074971 377 (5.6543e+113) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110010 #b1010111111011110010110100100111010101000101110100101)))
(assert (= r (fp #b0 #b10101111000 #b1101011000111011000000001101001000111010111110011011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
