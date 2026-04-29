(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.261331505430070887285864955629222095012664794921875p-227 {+ 1176932470475038 -227 (5.84817e-069)}
; 1.261331505430070887285864955629222095012664794921875p-227 | == 1.261331505430070887285864955629222095012664794921875p-227
; [HW: 1.261331505430070887285864955629222095012664794921875p-227] 

; mpf : + 1176932470475038 -227
; mpfd: + 1176932470475038 -227 (5.84817e-069) class: Pos. norm. non-zero
; hwf : + 1176932470475038 -227 (5.84817e-069) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011100 #b0100001011100110100111110001110100111100100100011110)))
(assert (= r (fp #b0 #b01100011100 #b0100001011100110100111110001110100111100100100011110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
