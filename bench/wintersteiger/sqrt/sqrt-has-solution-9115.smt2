(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1769481950626878852261825159075669944286346435546875p-915 {+ 796903825348203 -915 (4.24924e-276)}
; 1.1769481950626878852261825159075669944286346435546875p-915 S == 1.53424130765840605050698286504484713077545166015625p-458
; [HW: 1.53424130765840605050698286504484713077545166015625p-458] 

; mpf : + 2406008954096324 -458
; mpfd: + 2406008954096324 -458 (2.06137e-138) class: Pos. norm. non-zero
; hwf : + 2406008954096324 -458 (2.06137e-138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101100 #b0010110101001100011110100001011011100001011001101011)))
(assert (= r (fp #b0 #b01000110101 #b1000100011000100000010011101000010010000101011000100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
