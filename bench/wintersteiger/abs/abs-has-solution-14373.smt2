(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.97049172787387316674312387476675212383270263671875p506 {+ 4370706184018924 506 (4.12812e+152)}
; 1.97049172787387316674312387476675212383270263671875p506 | == 1.97049172787387316674312387476675212383270263671875p506
; [HW: 1.97049172787387316674312387476675212383270263671875p506] 

; mpf : + 4370706184018924 506
; mpfd: + 4370706184018924 506 (4.12812e+152) class: Pos. norm. non-zero
; hwf : + 4370706184018924 506 (4.12812e+152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111001 #b1111100001110010001001010101100001000001101111101100)))
(assert (= r (fp #b0 #b10111111001 #b1111100001110010001001010101100001000001101111101100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
