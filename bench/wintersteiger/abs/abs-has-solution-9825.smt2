(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.255195443684529177374997743754647672176361083984375p-875 {- 1149298105084294 -875 (-4.9827e-264)}
; -1.255195443684529177374997743754647672176361083984375p-875 | == 1.255195443684529177374997743754647672176361083984375p-875
; [HW: 1.255195443684529177374997743754647672176361083984375p-875] 

; mpf : + 1149298105084294 -875
; mpfd: + 1149298105084294 -875 (4.9827e-264) class: Pos. norm. non-zero
; hwf : + 1149298105084294 -875 (4.9827e-264) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010010100 #b0100000101010100011111010001010010110110100110000110)))
(assert (= r (fp #b0 #b00010010100 #b0100000101010100011111010001010010110110100110000110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
