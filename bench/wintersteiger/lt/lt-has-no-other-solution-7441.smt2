(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.274643377058226167974908094038255512714385986328125p163 {+ 1236883810579202 163 (1.49031e+049)}
; Y = 0.86055685893150535292761560413055121898651123046875p-1022 {+ 3875603549215052 -1023 (1.9148e-308)}
; 1.274643377058226167974908094038255512714385986328125p163 < 0.86055685893150535292761560413055121898651123046875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010100010 #b0100011001001111000001110100001010000111001100000010)))
(assert (= y (fp #b0 #b00000000000 #b1101110001001101011101000100110101110101100101001100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
