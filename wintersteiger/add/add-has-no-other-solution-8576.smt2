(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6799706271468355378573278358089737594127655029296875p251 {+ 3062315463041371 251 (6.07898e+075)}
; Y = -1.5566533142997993621747809811495244503021240234375p-615 {- 2506943658855128 -615 (-1.14484e-185)}
; 1.6799706271468355378573278358089737594127655029296875p251 + -1.5566533142997993621747809811495244503021240234375p-615 == 1.679970627146835315812722910777665674686431884765625p251
; [HW: 1.679970627146835315812722910777665674686431884765625p251] 

; mpf : + 3062315463041370 251
; mpfd: + 3062315463041370 251 (6.07898e+075) class: Pos. norm. non-zero
; hwf : + 3062315463041370 251 (6.07898e+075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011111010 #b1010111000010010100011100001010111010110000101011011)))
(assert (= y (fp #b1 #b00110011000 #b1000111010000000110101001110010000100000101011011000)))
(assert (= r (fp #b0 #b10011111010 #b1010111000010010100011100001010111010110000101011010)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
