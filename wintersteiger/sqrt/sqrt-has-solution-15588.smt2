(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.250425359146257964226833792054094374179840087890625p488 {+ 1127815554135210 488 (9.99299e+146)}
; 1.250425359146257964226833792054094374179840087890625p488 S == 1.1182241989629171374787119930260814726352691650390625p244
; [HW: 1.1182241989629171374787119930260814726352691650390625p244] 

; mpf : + 532434458395569 244
; mpfd: + 532434458395569 244 (3.16117e+073) class: Pos. norm. non-zero
; hwf : + 532434458395569 244 (3.16117e+073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100111 #b0100000000011011111000000101011110011111010010101010)))
(assert (= r (fp #b0 #b10011110011 #b0001111001000011111100001110110000100100001110110001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
