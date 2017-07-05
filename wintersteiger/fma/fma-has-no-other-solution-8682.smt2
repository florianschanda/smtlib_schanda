(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8678054147912874771719771160860545933246612548828125p204 {+ 3908248142684141 204 (4.80232e+061)}
; Y = 1.870883918435913617628330030129291117191314697265625p-311 {+ 3922112490550938 -311 (4.48454e-094)}
; Z = -1.715701368685687011605978113948367536067962646484375p-962 {- 3223232417321414 -962 (-4.40135e-290)}
; 1.8678054147912874771719771160860545933246612548828125p204 x 1.870883918435913617628330030129291117191314697265625p-311 -1.715701368685687011605978113948367536067962646484375p-962 == 1.747223556650270293033599955379031598567962646484375p-106
; [HW: 1.747223556650270293033599955379031598567962646484375p-106] 

; mpf : + 3365195731292614 -106
; mpfd: + 3365195731292614 -106 (2.15362e-032) class: Pos. norm. non-zero
; hwf : + 3365195731292614 -106 (2.15362e-032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011001011 #b1101111000101000011111101110001111010001111111101101)))
(assert (= y (fp #b0 #b01011001000 #b1101111011110010001111111001110001001011011010011010)))
(assert (= z (fp #b1 #b00000111101 #b1011011100111000001101000111010000110101000111000110)))
(assert (= r (fp #b0 #b01110010101 #b1011111101001010000010110000001010011101000111000110)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
