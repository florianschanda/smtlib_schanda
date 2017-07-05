(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0514194003433434687622138881124556064605712890625p12 {+ 231572392225896 12 (4306.61)}
; 1.0514194003433434687622138881124556064605712890625p12 S == 1.0253874391386619269184166114428080618381500244140625p6
; [HW: 1.0253874391386619269184166114428080618381500244140625p6] 

; mpf : + 114334861444769 6
; mpfd: + 114334861444769 6 (65.6248) class: Pos. norm. non-zero
; hwf : + 114334861444769 6 (65.6248) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000001011 #b0000110100101001110100100110001011011010110001101000)))
(assert (= r (fp #b0 #b10000000101 #b0000011001111111110010101000110011010100011010100001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
