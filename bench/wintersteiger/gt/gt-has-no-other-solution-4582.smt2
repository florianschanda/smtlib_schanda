(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.825725214245295990878048542072065174579620361328125p-313 {- 3718735767185538 -313 (-1.09407e-094)}
; Y = 1.15928328397466184895847618463449180126190185546875p175 {+ 717348138354636 175 (5.55186e+052)}
; -1.825725214245295990878048542072065174579620361328125p-313 > 1.15928328397466184895847618463449180126190185546875p175 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011000110 #b1101001101100010101110100100011010101010100010000010)))
(assert (= y (fp #b0 #b10010101110 #b0010100011000110110010100000111101111000011111001100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
