(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.70359554222668752032632255577482283115386962890625p81 {+ 3168712621791652 81 (4.11904e+024)}
; Y = -1.8513671940849809605111886412487365305423736572265625p604 {- 3834216978036585 604 (-1.22916e+182)}
; 1.70359554222668752032632255577482283115386962890625p81 % -1.8513671940849809605111886412487365305423736572265625p604 == 1.70359554222668752032632255577482283115386962890625p81
; [HW: 1.70359554222668752032632255577482283115386962890625p81] 

; mpf : + 3168712621791652 81
; mpfd: + 3168712621791652 81 (4.11904e+024) class: Pos. norm. non-zero
; hwf : + 3168712621791652 81 (4.11904e+024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010000 #b1011010000011110110101100110001101111001100110100100)))
(assert (= y (fp #b1 #b11001011011 #b1101100111110011001100110100111101111011011101101001)))
(assert (= r (fp #b0 #b10001010000 #xb41ed663799a4)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
