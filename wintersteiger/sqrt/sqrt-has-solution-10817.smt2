(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.309269115067531519258636762970127165317535400390625p-910 {+ 1392824271375338 -910 (1.51263e-274)}
; 1.309269115067531519258636762970127165317535400390625p-910 S == 1.144232981113344482793081624549813568592071533203125p-455
; [HW: 1.144232981113344482793081624549813568592071533203125p-455] 

; mpf : + 649567599996594 -455
; mpfd: + 649567599996594 -455 (1.22989e-137) class: Pos. norm. non-zero
; hwf : + 649567599996594 -455 (1.22989e-137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110001 #b0100111100101100010000101011111011100000101111101010)))
(assert (= r (fp #b0 #b01000111000 #b0010010011101100011100111110000011100010111010110010)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
