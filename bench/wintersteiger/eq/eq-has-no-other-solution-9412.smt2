(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.137132783907740307682843194925226271152496337890625p365 {+ 617591154507178 365 (8.54594e+109)}
; Y = -1.0471576354524374519172624786733649671077728271484375p712 {- 212379109451271 712 (-2.25616e+214)}
; 1.137132783907740307682843194925226271152496337890625p365 = -1.0471576354524374519172624786733649671077728271484375p712 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101100 #b0010001100011011001000100101011000010111110110101010)))
(assert (= y (fp #b1 #b11011000111 #b0000110000010010100001011101011000000110011000000111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
