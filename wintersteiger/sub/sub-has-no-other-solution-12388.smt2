(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.88648621727920584589810459874570369720458984375p-504 {+ 3992378997807712 -504 (3.60193e-152)}
; Y = 1.57893263284438223337247109157033264636993408203125p902 {+ 2607280789550580 902 (5.33851e+271)}
; 1.88648621727920584589810459874570369720458984375p-504 - 1.57893263284438223337247109157033264636993408203125p902 == -1.5789326328443820113278661665390245616436004638671875p902
; [HW: -1.5789326328443820113278661665390245616436004638671875p902] 

; mpf : - 2607280789550579 902
; mpfd: - 2607280789550579 902 (-5.33851e+271) class: Neg. norm. non-zero
; hwf : - 2607280789550579 902 (-5.33851e+271) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000000111 #b1110001011110000110000101011111110010001101001100000)))
(assert (= y (fp #b0 #b11110000101 #b1001010000110100111011011101010010100111010111110100)))
(assert (= r (fp #b1 #b11110000101 #b1001010000110100111011011101010010100111010111110011)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
