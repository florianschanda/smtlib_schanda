(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.85107439443336385664906629244796931743621826171875p-382 {- 3832898325634668 -382 (-1.87917e-115)}
; -1.85107439443336385664906629244796931743621826171875p-382 | == 1.85107439443336385664906629244796931743621826171875p-382
; [HW: 1.85107439443336385664906629244796931743621826171875p-382] 

; mpf : + 3832898325634668 -382
; mpfd: + 3832898325634668 -382 (1.87917e-115) class: Pos. norm. non-zero
; hwf : + 3832898325634668 -382 (1.87917e-115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010000001 #b1101100111100000000000101111001010001101111001101100)))
(assert (= r (fp #b0 #b01010000001 #b1101100111100000000000101111001010001101111001101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
