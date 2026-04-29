(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5477339775162783919171261004521511495113372802734375p-513 {- 2466774537040471 -513 (-5.77176e-155)}
; -1.5477339775162783919171261004521511495113372802734375p-513 | == 1.5477339775162783919171261004521511495113372802734375p-513
; [HW: 1.5477339775162783919171261004521511495113372802734375p-513] 

; mpf : + 2466774537040471 -513
; mpfd: + 2466774537040471 -513 (5.77176e-155) class: Pos. norm. non-zero
; hwf : + 2466774537040471 -513 (5.77176e-155) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111110 #b1000110000111000010010110100000001010111001001010111)))
(assert (= r (fp #b0 #b00111111110 #b1000110000111000010010110100000001010111001001010111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
