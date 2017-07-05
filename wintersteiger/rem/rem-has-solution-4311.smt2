(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5529009994497295910065304269664920866489410400390625p-371 {+ 2490044735094577 -371 (3.22861e-112)}
; Y = 1.8412086150575490695047164990683086216449737548828125p668 {+ 3788466805314029 668 (2.25497e+201)}
; 1.5529009994497295910065304269664920866489410400390625p-371 % 1.8412086150575490695047164990683086216449737548828125p668 == 1.5529009994497295910065304269664920866489410400390625p-371
; [HW: 1.5529009994497295910065304269664920866489410400390625p-371] 

; mpf : + 2490044735094577 -371
; mpfd: + 2490044735094577 -371 (3.22861e-112) class: Pos. norm. non-zero
; hwf : + 2490044735094577 -371 (3.22861e-112) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001100 #b1000110110001010111010110111111010001111111100110001)))
(assert (= y (fp #b0 #b11010011011 #b1101011101011001011100101010001011001001000111101101)))
(assert (= r (fp #b0 #b01010001100 #x8d8aeb7e8ff31)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
