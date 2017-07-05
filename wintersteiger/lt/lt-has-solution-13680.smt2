(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4499432525711892782993572836858220398426055908203125p-412 {- 2026364264617477 -412 (-1.37086e-124)}
; Y = 1.3605876656766582311064439636538736522197723388671875p-149 {+ 1623942476775795 -149 (1.90659e-045)}
; -1.4499432525711892782993572836858220398426055908203125p-412 < 1.3605876656766582311064439636538736522197723388671875p-149 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001100011 #b0111001100101111011110110010001011011001011000000101)))
(assert (= y (fp #b0 #b01101101010 #b0101110001001111011110010010011101101100000101110011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
