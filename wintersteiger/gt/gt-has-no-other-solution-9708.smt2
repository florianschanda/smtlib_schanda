(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6839670613450661296184307502699084579944610595703125p610 {+ 3080313802607333 610 (7.15535e+183)}
; Y = -1.301502745327006049791407349403016269207000732421875p-737 {- 1357847651505886 -737 (-1.80027e-222)}
; 1.6839670613450661296184307502699084579944610595703125p610 > -1.301502745327006049791407349403016269207000732421875p-737 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100001 #b1010111100011000011101110010000000000100101011100101)))
(assert (= y (fp #b1 #b00100011110 #b0100110100101111010010001010111011010101011011011110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
