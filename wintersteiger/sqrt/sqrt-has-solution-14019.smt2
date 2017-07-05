(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5086089502527986194735376557218842208385467529296875p-446 {+ 2290571078835803 -446 (8.3023e-135)}
; 1.5086089502527986194735376557218842208385467529296875p-446 S == 1.228254432213781388583129228209145367145538330078125p-223
; [HW: 1.228254432213781388583129228209145367145538330078125p-223] 

; mpf : + 1027966575863650 -223
; mpfd: + 1027966575863650 -223 (9.1117e-068) class: Pos. norm. non-zero
; hwf : + 1027966575863650 -223 (9.1117e-068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000001 #b1000001000110100001100100011011111001001111001011011)))
(assert (= r (fp #b0 #b01100100000 #b0011101001101110111000011110100110000110011101100010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
