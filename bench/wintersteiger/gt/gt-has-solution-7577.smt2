(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6982162891929475367902568905265070497989654541015625p488 {+ 3144486619833369 488 (1.35716e+147)}
; Y = -1.1015659987393193741667118956684134900569915771484375p147 {- 457412594075911 147 (-1.96526e+044)}
; 1.6982162891929475367902568905265070497989654541015625p488 > -1.1015659987393193741667118956684134900569915771484375p147 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111100111 #b1011001010111110010011010111111110011110010000011001)))
(assert (= y (fp #b1 #b10010010010 #b0001101000000000001110101011001011111000100100000111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
