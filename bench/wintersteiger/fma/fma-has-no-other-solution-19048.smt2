(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8187877895569475317216756593552418053150177001953125p588 {- 3687492383944181 588 (-1.84255e+177)}
; Y = -1.3375022896276684836180947968387044966220855712890625p660 {- 1519975185803857 660 (-6.3987e+198)}
; Z = 1.366775535428887966560296263196505606174468994140625p612 {+ 1651810164686154 612 (2.32303e+184)}
; -1.8187877895569475317216756593552418053150177001953125p588 x -1.3375022896276684836180947968387044966220855712890625p660 1.366775535428887966560296263196505606174468994140625p612 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001001011 #b1101000110011100000100111001101010000010110111110101)))
(assert (= y (fp #b1 #b11010010011 #b0101011001100110100011001101000001000110101001010001)))
(assert (= z (fp #b0 #b11001100011 #b0101110111100101000000000110000110100011110101001010)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
