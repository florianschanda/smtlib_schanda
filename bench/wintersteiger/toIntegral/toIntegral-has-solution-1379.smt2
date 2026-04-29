(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6445406258329604565204817845369689166545867919921875 173 {- 2902752922326467 173 (-1.96895e+052)}
; -1.6445406258329604565204817845369689166545867919921875 173 I == -1.6445406258329604565204817845369689166545867919921875 173
; [HW: -1.6445406258329604565204817845369689166545867919921875 173] 

; mpf : - 2902752922326467 173
; mpfd: - 2902752922326467 173 (-1.96895e+052) class: Neg. norm. non-zero
; hwf : - 2902752922326467 173 (-1.96895e+052) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101100 #b1010010100000000100111010100110011100101010111000011)))
(assert (= r (fp #b1 #b10010101100 #b1010010100000000100111010100110011100101010111000011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
