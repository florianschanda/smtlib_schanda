(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1368158283280729303754696957184933125972747802734375p-726 {- 616163713476695 -726 (-3.22043e-219)}
; Y = 1.762951413433749170422970564686693251132965087890625p-941 {+ 3436027701242026 -941 (9.4845e-284)}
; -1.1368158283280729303754696957184933125972747802734375p-726 > 1.762951413433749170422970564686693251132965087890625p-941 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100101001 #b0010001100000110010111001011010000111110100001010111)))
(assert (= y (fp #b0 #b00001010010 #b1100001101010000110010001010100100100010100010101010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
