(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.17097930640014435965667871641926467418670654296875p964 {+ 770022340591756 964 (1.82585e+290)}
; 1.17097930640014435965667871641926467418670654296875p964 S == 1.08211797249659635866692042327485978603363037109375p482
; [HW: 1.08211797249659635866692042327485978603363037109375p482] 

; mpf : + 369826470336092 482
; mpfd: + 369826470336092 482 (1.35124e+145) class: Pos. norm. non-zero
; hwf : + 369826470336092 482 (1.35124e+145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000011 #b0010101111000101010011001100000101001000000010001100)))
(assert (= r (fp #b0 #b10111100001 #b0001010100000101101011101111011001001001011001011100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
