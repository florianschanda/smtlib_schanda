(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3997959589554456183435604543774388730525970458984375p-109 {+ 1800520931775975 -109 (2.15673e-033)}
; 1.3997959589554456183435604543774388730525970458984375p-109 S == 1.67319811077794700082677081809379160404205322265625p-55
; [HW: 1.67319811077794700082677081809379160404205322265625p-55] 

; mpf : + 3031814760846084 -55
; mpfd: + 3031814760846084 -55 (4.64406e-017) class: Pos. norm. non-zero
; hwf : + 3031814760846084 -55 (4.64406e-017) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010010 #b0110011001011001000001110010100011001001010111100111)))
(assert (= r (fp #b0 #b01111001000 #b1010110001010110101101100001110110000101001100000100)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
