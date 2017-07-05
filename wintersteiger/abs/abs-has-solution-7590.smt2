(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9349032413180100586913567894953303039073944091796875p-244 {- 4210429889227259 -244 (-6.84448e-074)}
; -1.9349032413180100586913567894953303039073944091796875p-244 | == 1.9349032413180100586913567894953303039073944091796875p-244
; [HW: 1.9349032413180100586913567894953303039073944091796875p-244] 

; mpf : + 4210429889227259 -244
; mpfd: + 4210429889227259 -244 (6.84448e-074) class: Pos. norm. non-zero
; hwf : + 4210429889227259 -244 (6.84448e-074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100001011 #b1110111101010101110100011001111001100010100111111011)))
(assert (= r (fp #b0 #b01100001011 #b1110111101010101110100011001111001100010100111111011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
