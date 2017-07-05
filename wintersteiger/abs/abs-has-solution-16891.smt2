(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8801711316883700231272769087809138000011444091796875p-723 {+ 3963938380694011 -723 (4.26099e-218)}
; 1.8801711316883700231272769087809138000011444091796875p-723 | == 1.8801711316883700231272769087809138000011444091796875p-723
; [HW: 1.8801711316883700231272769087809138000011444091796875p-723] 

; mpf : + 3963938380694011 -723
; mpfd: + 3963938380694011 -723 (4.26099e-218) class: Pos. norm. non-zero
; hwf : + 3963938380694011 -723 (4.26099e-218) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100101100 #b1110000101010010111001010011000101111100000111111011)))
(assert (= r (fp #b0 #b00100101100 #b1110000101010010111001010011000101111100000111111011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
