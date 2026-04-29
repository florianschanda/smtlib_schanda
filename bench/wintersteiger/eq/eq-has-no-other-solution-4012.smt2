(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.156718887636954296027624877751804888248443603515625p-433 {+ 705799123963706 -433 (5.21482e-131)}
; Y = 1.55823499777504625996016329736448824405670166015625p-807 {+ 2514066927964868 -807 (1.82569e-243)}
; 1.156718887636954296027624877751804888248443603515625p-433 = 1.55823499777504625996016329736448824405670166015625p-807 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001001110 #b0010100000011110101110101010000100010000111100111010)))
(assert (= y (fp #b0 #b00011011000 #b1000111011101000011111010010001011101101001011000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
