(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9827132873119754918889157124795019626617431640625p229 {+ 4425747194550248 229 (1.71052e+069)}
; 1.9827132873119754918889157124795019626617431640625p229 S == 1.99133788559951607766151937539689242839813232421875p114
; [HW: 1.99133788559951607766151937539689242839813232421875p114] 

; mpf : + 4464588932184236 114
; mpfd: + 4464588932184236 114 (4.13585e+034) class: Pos. norm. non-zero
; hwf : + 4464588932184236 114 (4.13585e+034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100100 #b1111101110010011000110010001011001011001011111101000)))
(assert (= r (fp #b0 #b10001110001 #b1111110111001000010100011101010111101111100010101100)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
