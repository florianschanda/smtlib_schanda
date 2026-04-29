(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.17106442992857306961695940117351710796356201171875p-935 {- 770405702882668 -935 (-4.03213e-282)}
; -1.17106442992857306961695940117351710796356201171875p-935 | == 1.17106442992857306961695940117351710796356201171875p-935
; [HW: 1.17106442992857306961695940117351710796356201171875p-935] 

; mpf : + 770405702882668 -935
; mpfd: + 770405702882668 -935 (4.03213e-282) class: Pos. norm. non-zero
; hwf : + 770405702882668 -935 (4.03213e-282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001011000 #b0010101111001010111000001110010000001101010101101100)))
(assert (= r (fp #b0 #b00001011000 #b0010101111001010111000001110010000001101010101101100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
