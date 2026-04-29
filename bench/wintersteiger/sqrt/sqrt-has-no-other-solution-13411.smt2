(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7882015797370109932984405531897209584712982177734375p361 {+ 3549744340796439 361 (8.39934e+108)}
; 1.7882015797370109932984405531897209584712982177734375p361 S == 1.8911380593372928426987300554173998534679412841796875p180
; [HW: 1.8911380593372928426987300554173998534679412841796875p180] 

; mpf : + 4013329031967099 180
; mpfd: + 4013329031967099 180 (2.89816e+054) class: Pos. norm. non-zero
; hwf : + 4013329031967099 180 (2.89816e+054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101000 #b1100100111000111100101000010011110100000010000010111)))
(assert (= r (fp #b0 #b10010110011 #b1110010000100001100111111011010100010011000101111011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
