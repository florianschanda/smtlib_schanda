(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.290811295376144141044960633735172450542449951171875p-615 {+ 1309697641491134 -615 (9.49326e-186)}
; 1.290811295376144141044960633735172450542449951171875p-615 | == 1.290811295376144141044960633735172450542449951171875p-615
; [HW: 1.290811295376144141044960633735172450542449951171875p-615] 

; mpf : + 1309697641491134 -615
; mpfd: + 1309697641491134 -615 (9.49326e-186) class: Pos. norm. non-zero
; hwf : + 1309697641491134 -615 (9.49326e-186) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011000 #b0100101001110010100110111110101011110010101010111110)))
(assert (= r (fp #b0 #b00110011000 #b0100101001110010100110111110101011110010101010111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
