(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2205258265350635848989213627646677196025848388671875p-474 {+ 993160030208883 -474 (2.50224e-143)}
; Y = 1.8406108520467914235752004969981499016284942626953125p878 {+ 3785774720041525 878 (3.70935e+264)}
; 1.2205258265350635848989213627646677196025848388671875p-474 / 1.8406108520467914235752004969981499016284942626953125p878 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100101 #b0011100001110100011000010110110011100100001101110011)))
(assert (= y (fp #b0 #b11101101101 #b1101011100110010010001011101011000110100001000110101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
