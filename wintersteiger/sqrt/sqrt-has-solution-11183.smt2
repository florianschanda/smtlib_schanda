(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4741480516439917636262180167250335216522216796875p735 {+ 2135372988702328 735 (2.66433e+221)}
; 1.4741480516439917636262180167250335216522216796875p735 S == 1.717060308576254801238292202469892799854278564453125p367
; [HW: 1.717060308576254801238292202469892799854278564453125p367] 

; mpf : + 3229352538506194 367
; mpfd: + 3229352538506194 367 (5.16171e+110) class: Pos. norm. non-zero
; hwf : + 3229352538506194 367 (5.16171e+110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011011110 #b0111100101100001110001000100011101000101111001111000)))
(assert (= r (fp #b0 #b10101101110 #b1011011110010001010000111010111010011000001111010010)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
