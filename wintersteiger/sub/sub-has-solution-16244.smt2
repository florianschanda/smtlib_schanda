(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8460245589662849230450092363753356039524078369140625p-1005 {- 3810155888506849 -1005 (-5.38384e-303)}
; Y = 1.5878797783736049442637749962159432470798492431640625p-97 {+ 2647575150822017 -97 (1.00209e-029)}
; -1.8460245589662849230450092363753356039524078369140625p-1005 - 1.5878797783736049442637749962159432470798492431640625p-97 == -1.5878797783736049442637749962159432470798492431640625p-97
; [HW: -1.5878797783736049442637749962159432470798492431640625p-97] 

; mpf : - 2647575150822017 -97
; mpfd: - 2647575150822017 -97 (-1.00209e-029) class: Neg. norm. non-zero
; hwf : - 2647575150822017 -97 (-1.00209e-029) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000010010 #b1101100010010101000100001100010001011111011111100001)))
(assert (= y (fp #b0 #b01110011110 #b1001011001111111010010100000011000011000001010000001)))
(assert (= r (fp #b1 #b01110011110 #b1001011001111111010010100000011000011000001010000001)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
