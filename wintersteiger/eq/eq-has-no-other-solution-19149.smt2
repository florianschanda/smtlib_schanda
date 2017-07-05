(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.524116295749176952512016214313916862010955810546875p815 {- 2360409954234798 815 (-3.33016e+245)}
; Y = -1.982229591257364642586935588042251765727996826171875p-363 {- 4423568821178942 -363 (-1.05503e-109)}
; -1.524116295749176952512016214313916862010955810546875p815 = -1.982229591257364642586935588042251765727996826171875p-363 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100101110 #b1000011000101100011111000100110110001011000110101110)))
(assert (= y (fp #b1 #b01010010100 #b1111101101110011011001100000001110011101001000111110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
