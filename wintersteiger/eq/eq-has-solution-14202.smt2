(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.599440174394808789060107301338575780391693115234375p-606 {- 2699638546035366 -606 (-6.02269e-183)}
; Y = 1.3965923151118284639693456483655609190464019775390625p-543 {+ 1786093002555633 -543 (4.85045e-164)}
; -1.599440174394808789060107301338575780391693115234375p-606 = 1.3965923151118284639693456483655609190464019775390625p-543 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110100001 #b1001100101110100111010010100100011101111001010100110)))
(assert (= y (fp #b0 #b00111100000 #b0110010110000111000100101110111101000000000011110001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
