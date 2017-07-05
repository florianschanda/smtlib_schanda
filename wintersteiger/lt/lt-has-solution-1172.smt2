(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.412637409685572276174525541136972606182098388671875p559 {+ 1858353684499070 559 (2.66562e+168)}
; Y = 1.3337506436103117035685272639966569840908050537109375p753 {+ 1503079274198063 753 (6.31919e+226)}
; 1.412637409685572276174525541136972606182098388671875p559 < 1.3337506436103117035685272639966569840908050537109375p753 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101110 #b0110100110100010100110101111001110110100101001111110)))
(assert (= y (fp #b0 #b11011110000 #b0101010101110000101011101010001101010011010000101111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
