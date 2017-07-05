(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.525777290105373662498777775908820331096649169921875p853 {- 2367890407798430 853 (-9.16384e+256)}
; Y = -1.40873025357846159977270872332155704498291015625p538 {- 1840757417711008 538 (-1.26755e+162)}
; -1.525777290105373662498777775908820331096649169921875p853 > -1.40873025357846159977270872332155704498291015625p538 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101010100 #b1000011010011001010101110010100111111011011010011110)))
(assert (= y (fp #b1 #b11000011001 #b0110100010100010100010111100000000000001010110100000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
