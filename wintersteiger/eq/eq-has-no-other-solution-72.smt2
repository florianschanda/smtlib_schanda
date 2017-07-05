(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0789156579739438424070385735831223428249359130859375p853 {- 355404527845151 853 (-6.47998e+256)}
; Y = -1.3690870105311818694104886162676848471164703369140625p-188 {- 1662220123095521 -188 (-3.48973e-057)}
; -1.0789156579739438424070385735831223428249359130859375p853 = -1.3690870105311818694104886162676848471164703369140625p-188 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101010100 #b0001010000110011110100010000101000100011111100011111)))
(assert (= y (fp #b1 #b01101000011 #b0101111001111100011111000111111110011100000111100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
