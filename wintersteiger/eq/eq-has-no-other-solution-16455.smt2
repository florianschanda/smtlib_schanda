(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0276232149576236540866602808819152414798736572265625p782 {- 124403900589929 782 (-2.61391e+235)}
; Y = -1.48586196806418779914338301750831305980682373046875p201 {- 2188127778327372 201 (-4.77538e+060)}
; -1.0276232149576236540866602808819152414798736572265625p782 = -1.48586196806418779914338301750831305980682373046875p201 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100001101 #b0000011100010010010100001010010011011010011101101001)))
(assert (= y (fp #b1 #b10011001000 #b0111110001100001011100110010111100110100101101001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
