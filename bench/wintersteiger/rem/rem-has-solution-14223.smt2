(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.3362904330483036385857076311367563903331756591796875p-410 {+ 1514517468964603 -410 (5.05362e-124)}
; +zero % 1.3362904330483036385857076311367563903331756591796875p-410 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01001100101 #b0101011000010111001000010011101111100110011011111011)))
(assert (= r (_ +zero 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
