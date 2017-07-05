(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.17543113117742326068082547863014042377471923828125p-452 {- 790071576999828 -452 (-1.01074e-136)}
; Y = 1.3031389266118769132418719891575165092945098876953125p-323 {+ 1365216356930741 -323 (7.62609e-098)}
; -1.17543113117742326068082547863014042377471923828125p-452 = 1.3031389266118769132418719891575165092945098876953125p-323 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000111011 #b0010110011101001000011011111101100011011011110010100)))
(assert (= y (fp #b0 #b01010111100 #b0100110110011010100000110011111111110001010010110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
