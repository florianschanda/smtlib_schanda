(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.559298661163766919202089411555789411067962646484375p-683 {+ 2518857242005958 -683 (3.88546e-206)}
; Y = -1.413987048979759464373273658566176891326904296875p-452 {- 1864431919521456 -452 (-1.21587e-136)}
; 1.559298661163766919202089411555789411067962646484375p-683 < -1.413987048979759464373273658566176891326904296875p-452 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010100 #b1000111100101110001100100111001001100101000111000110)))
(assert (= y (fp #b1 #b01000111011 #b0110100111111011000011100010010001010101111010110000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
