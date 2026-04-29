(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.94543502524959333044307641102932393550872802734375p-54 {+ 4257860827417084 -54 (1.07993e-016)}
; 1.94543502524959333044307641102932393550872802734375p-54 | == 1.94543502524959333044307641102932393550872802734375p-54
; [HW: 1.94543502524959333044307641102932393550872802734375p-54] 

; mpf : + 4257860827417084 -54
; mpfd: + 4257860827417084 -54 (1.07993e-016) class: Pos. norm. non-zero
; hwf : + 4257860827417084 -54 (1.07993e-016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111001001 #b1111001000001000000001111010000111110000100111111100)))
(assert (= r (fp #b0 #b01111001001 #b1111001000001000000001111010000111110000100111111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
