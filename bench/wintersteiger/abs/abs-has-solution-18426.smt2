(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0155645849069514508045131151448003947734832763671875p-553 {- 70096658787123 -553 (-3.44445e-167)}
; -1.0155645849069514508045131151448003947734832763671875p-553 | == 1.0155645849069514508045131151448003947734832763671875p-553
; [HW: 1.0155645849069514508045131151448003947734832763671875p-553] 

; mpf : + 70096658787123 -553
; mpfd: + 70096658787123 -553 (3.44445e-167) class: Pos. norm. non-zero
; hwf : + 70096658787123 -553 (3.44445e-167) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111010110 #b0000001111111100000010100110011100100110101100110011)))
(assert (= r (fp #b0 #b00111010110 #b0000001111111100000010100110011100100110101100110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
